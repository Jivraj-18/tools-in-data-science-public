---
id: index
title: Week 01 — Development Environment & Tooling
sidebar_label: Overview
sidebar_position: 1
description: The foundation week — editors, package managers, Git, shells, and the tools you'll use for the rest of the course.
keywords: [vs code, uv, bash, git, sqlite, http, requestly, latex, github pages, tooling]
---

# Week 01 — Development Environment & Tooling

> **You can't build good things with bad tools.** Week 1 is about installing, configuring, and _actually understanding_ the tools you'll use every single day for the next 7 weeks — and for the rest of your career.

## What You'll Learn This Week

By the end of this week you will be able to:

- Set up a professional Python development environment using **VS Code + UV** (the fastest package manager in 2026)
- Write **Bash scripts** that automate boring work
- Use **Git** and **GitHub** not as a magic "save button" but as tools you fully understand
- Store and query data with **SQLite** using the modern `sqlite-utils` + `datasette` workflow
- Test APIs with `curl`, `httpie`, and **Postman**
- Intercept and mock browser network traffic with **Requestly**
- Move fluently between **JSON, YAML, TOML, Markdown, and Base64**
- Host static sites for free on **GitHub Pages**
- Produce professional PDFs with **LaTeX** (Overleaf + pandoc)

## Topics

| # | Topic | What it is | Why it matters |
|---|-------|-----------|----------------|
| 1 | [VS Code](./vscode) | Microsoft's free code editor | The de-facto editor of our industry |
| 2 | [UV — Python Package Manager](./uv) | Rust-powered `pip` + `venv` + `pyenv` replacement | 10–100× faster than pip |
| 3 | [Bash Scripting](./bash-scripting) | The Unix shell language | Glue for everything on Linux / macOS / CI |
| 4 | [Git & GitHub](./git-github) | Version control + collaboration | Every real project lives in Git |
| 5 | [SQLite](./sqlite) | File-based SQL database | Ships with Python; used by Firefox, iOS, airplanes |
| 6 | [HTTP Clients](./http-clients) | `curl`, `httpie`, Postman | Talk to any API before you write a line of Python |
| 7 | [Requestly](./requestly) | Browser HTTP interceptor | Mock/modify/redirect traffic without touching backend |
| 8 | [Data Formats](./data-formats) | JSON, YAML, TOML, Markdown, Base64, Unicode | The vocabulary of all modern APIs |
| 9 | [GitHub Pages](./github-pages) | Free static site hosting from GitHub | Publish docs, portfolios, apps |
| 10 | [LaTeX](./latex) | Professional typesetting | Publication-quality PDFs + math |

## Labs

You will build these three labs — each one ships something real to the internet.

1. **Lab 1.1 — [Publish a Python library to PyPI using UV](/2026-06/labs/week-1/publish-python-library-pypi-uv)**
2. **Lab 1.2 — [UV CLI tool + LaTeX documentation PDF on GitHub Pages](/2026-06/labs/week-1/uv-cli-tool-latex-docs)**
3. **Lab 1.3 — [Bash automation script — daily project summary](/2026-06/labs/week-1/bash-daily-project-summary)**

:::tip How to work through this week
Read the topic, do the 5-minute mini-exercise at the bottom of each page, then move to the next. At the end of the week, complete the three labs. Finally, write a Discourse blog post about one concept you learned — teaching it back is the best way to learn.
:::

## Required Software Checklist

Before starting, install these on your machine:

| Tool | macOS | Linux (Ubuntu) | Windows |
|------|-------|----------------|---------|
| **VS Code** | `brew install --cask visual-studio-code` | `sudo snap install --classic code` | [Download installer](https://code.visualstudio.com/) |
| **Git** | `brew install git` | `sudo apt install git` | `winget install Git.Git` |
| **UV** | `curl -LsSf https://astral.sh/uv/install.sh \| sh` | Same | `powershell -c "irm https://astral.sh/uv/install.ps1 \| iex"` |
| **GitHub CLI** | `brew install gh` | `sudo apt install gh` | `winget install GitHub.cli` |
| **sqlite-utils** | `uv tool install sqlite-utils` | Same | Same |
| **httpie** | `brew install httpie` | `sudo apt install httpie` | `winget install HTTPie.HTTPie` |

:::note Windows users
We strongly recommend using **WSL2 (Ubuntu)** on Windows. Most of the course assumes a Unix-like shell. Install WSL via `wsl --install` in an admin PowerShell and then do everything inside Ubuntu.
:::

## Mindset for Week 1

Most students rush to the "AI stuff" in later weeks and skip the fundamentals. **Don't.** Every hour you invest in mastering your editor, your shell, and Git pays back 100× in the weeks ahead. When the professor says "build a RAG chatbot", you don't want to be fighting with virtual environments — you want that to be muscle memory.

:::info How to get help
- Read the official docs first — they're almost always better than Stack Overflow.
- Ask good questions on [Discourse](https://discourse.onlinedegree.iitm.ac.in).
- `--help` is your friend: every CLI tool documents itself.
:::
