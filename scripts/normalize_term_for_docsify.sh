#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <term-dir>" >&2
  exit 1
fi

TERM_DIR="$1"
if [[ ! -d "$TERM_DIR" ]]; then
  echo "Error: directory not found: $TERM_DIR" >&2
  exit 1
fi

# 1) Convert section entry files from index.md to README.md (docsify-style).
while IFS= read -r -d '' f; do
  mv "$f" "$(dirname "$f")/README.md"
done < <(find "$TERM_DIR" -type f -name 'index.md' -print0)

# 2) Normalize sidebar links for section folders.
SIDEBAR="$TERM_DIR/_sidebar.md"
if [[ -f "$SIDEBAR" ]]; then
  perl -pi -e 's#\((week-[0-9]+)\)#($1/README.md)#g' "$SIDEBAR"
  perl -pi -e 's#\((labs|projects|reference)\)#($1/README.md)#g' "$SIDEBAR"
  perl -pi -e 's#\((labs/week-[0-9]+)\)#($1/README.md)#g' "$SIDEBAR"
fi

# 3) Normalize markdown files for docsify compatibility.
while IFS= read -r -d '' f; do
  # Remove top YAML frontmatter block if present.
  perl -0777 -i -pe 's/^---\n.*?\n---\n\n//s' "$f"

  # Convert Docusaurus YouTube component into markdown thumbnail link.
  perl -i -pe 's#<YouTube\s+id="([^"]+)"\s+title="([^"]+)"\s*/>#\[\!\[$2\]\(https://i.ytimg.com/vi/$1/hqdefault.jpg\)\]\(https://youtu.be/$1\)#g' "$f"

  # Convert Docusaurus admonition markers to plain markdown headings.
  perl -i -pe 's/^:::(note|tip|info|warning|danger)\s*(.*)$/\n**\u$1\E:\u $2**/i; s/^:::\s*$//g' "$f"

  # Strip title attributes from fenced code blocks.
  perl -i -pe 's/^```([A-Za-z0-9_+-]+)\s+title="[^"]+"\s*$/```$1/g' "$f"
done < <(find "$TERM_DIR" -type f -name '*.md' -print0)

# 4) Remove accidental double-leading blank lines.
while IFS= read -r -d '' f; do
  perl -0777 -i -pe 's/^\n+//s' "$f"
done < <(find "$TERM_DIR" -type f -name '*.md' -print0)

echo "Normalized term content for docsify compatibility: $TERM_DIR"
