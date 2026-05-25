---
sidebar_position: 1
title: Week 02 — Deployment & API Engineering
description: Build production-ready APIs with FastAPI, containerize with Docker, add observability, and deploy to the cloud.
---

import { YouTube } from '@site/src/components/YouTube';

# Week 02 — Deployment & API Engineering

> **Goal:** Take a Python function from your laptop to a live, observable, authenticated API on the internet — in one week.

By the end of Week 2 you will have built and deployed a **production-grade FastAPI service** with Google OAuth, Docker containers, Redis caching, Prometheus metrics, and Grafana dashboards. You will also run local LLMs on your own machine.

---

## What You'll Build

```
Your laptop
  └── FastAPI app (Python)
        ├── Google OAuth 2.0 (authentication)
        ├── Redis (caching + rate limiting)
        ├── Prometheus + OpenTelemetry (metrics & traces)
        └── Docker container
              └── Deployed → HuggingFace Spaces / Render / Railway
                    └── Grafana dashboard (live monitoring)
```

---

## Topics This Week

| # | Topic | What You'll Learn |
|---|-------|------------------|
| 01 | [FastAPI Fundamentals](./fastapi) | Build REST APIs with auto docs |
| 02 | [CORS & Middleware](./cors-middleware) | Handle cross-origin, rate limiting |
| 03 | [Google OAuth 2.0](./google-oauth) | Secure endpoints with real auth |
| 04 | [FastAPI Advanced](./fastapi-advanced) | WebSockets, background tasks, DI |
| 05 | [Config Management](./config-management) | `.env`, secrets, 12-factor app |
| 06 | [Docker & Compose](./docker-compose) | Containerize everything |
| 07 | [Deployment Platforms](./deployment-platforms) | HuggingFace, Render, Railway |
| 08 | [Logging & Testing](./logging-testing) | structlog, pytest, coverage |
| 09 | [Observability](./observability) | Prometheus, OpenTelemetry, Grafana |
| 10 | [CloudFlare Tunnels](./cloudflare-tunnels) | Expose localhost to the internet |
| 11 | [Local LLMs](./local-llms) | Run Ollama & LM Studio locally |
| 12 | [Redis Caching](./redis-caching) | Cache responses, manage sessions |

---

## Labs This Week

| Lab | Title | Skills |
|-----|-------|--------|
| Lab 2.1 | [Gemma API on HuggingFace Spaces + Google Auth](../labs/week-2/gemma-api-hf-spaces-google-auth) | FastAPI · HuggingFace · OAuth |
| Lab 2.2 | [FastAPI Observability + Grafana Dashboard](../labs/week-2/fastapi-observability-grafana) | Prometheus · OpenTelemetry · Grafana |

---

## Prerequisites

- Completed Week 1 (UV, Git, basic Python)
- Python 3.11+ installed via UV
- Docker Desktop installed
- A Google account (for OAuth)
- A HuggingFace account (free)

---

## Mental Model for This Week

Think of it in **three layers**:

```
┌─────────────────────────────────────┐
│  Layer 3: OBSERVABILITY             │  ← Know what's happening
│  Prometheus · Grafana · Loki        │
├─────────────────────────────────────┤
│  Layer 2: RUNTIME                   │  ← Keep it running
│  Docker · Redis · CloudFlare        │
├─────────────────────────────────────┤
│  Layer 1: APPLICATION               │  ← Make it work
│  FastAPI · OAuth · Config           │
└─────────────────────────────────────┘
```

Build bottom-up. Get the app working first, then containerize, then observe.

---

:::tip Week 2 in one sentence
**FastAPI + Docker + Prometheus = production-ready API.** Everything else this week supports these three pillars.
:::
