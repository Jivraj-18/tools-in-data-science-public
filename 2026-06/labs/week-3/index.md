---
sidebar_position: 1
title: Week 03 Labs
description: Hands-on labs for Week 3 — LLM Engineering
---

# Week 03 — Hands-on Labs

Two labs this week. Together they cover the **full LLM engineering cycle**: extract real-world data → process with LLMs → structure the output → measure cost → benchmark strategies.

---

## Labs Overview

| Lab | Title | Time | Difficulty |
|-----|-------|------|------------|
| [Lab 3.1](./youtube-subtitles-topics-json-pipeline) | YouTube → Subtitles → Topics → Timestamps JSON Pipeline | ~3 hrs | ⭐⭐⭐ |
| [Lab 3.2](./cost-tracking-dashboard-langsmith) | Cost-Tracking Dashboard via LangSmith + Prompt Strategy Benchmarks | ~2 hrs | ⭐⭐⭐ |

---

## What You'll Have After Both Labs

```
Lab 3.1 output:
  ✅ CLI tool that accepts any YouTube URL
  ✅ Downloads subtitles with yt-dlp (no API key needed)
  ✅ Extracts topics and answer timestamps using Claude
  ✅ Produces a structured summary.json with chapters, topics, Q&A pairs

Lab 3.2 output:
  ✅ LangSmith project with 50+ traced LLM calls
  ✅ Cost breakdown by model, prompt strategy, and task type
  ✅ Benchmark comparing zero-shot vs few-shot vs CoT vs Self-Consistency
  ✅ A FastAPI dashboard endpoint that serves live cost analytics
```

---

## Prerequisites

Before starting, make sure you have:

- [ ] Anthropic API key set in `.env`
- [ ] OpenAI API key set in `.env` (for Lab 3.2 comparisons)
- [ ] LangSmith account at [smith.langchain.com](https://smith.langchain.com) (free tier)
- [ ] LangSmith API key set in `.env`
- [ ] `yt-dlp` installed: `uv tool install yt-dlp`
- [ ] `ffmpeg` installed (required by yt-dlp for some formats)

---

## Environment Setup

Create one `.env` file for both labs:

```bash title=".env"
ANTHROPIC_API_KEY=sk-ant-...
OPENAI_API_KEY=sk-...
LANGCHAIN_TRACING_V2=true
LANGCHAIN_API_KEY=ls__...
LANGCHAIN_PROJECT=tds-week-3-labs
```

---

:::tip Project 1 Notice
These labs contribute to **Project 1** (due end of Week 3). Build them carefully — the pipeline patterns from Lab 3.1 and the benchmarking mindset from Lab 3.2 are directly applicable to the project.
:::
