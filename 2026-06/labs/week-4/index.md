---
sidebar_position: 1
title: Week 4 Labs & Capstones
description: Hands-on RAG labs — build a production hybrid RAG chatbot, a policy bot with guardrails, and an evaluation dashboard.
---

# Week 4 — Labs & Capstones

This week has **two capstone projects** and **one lab assignment**.

| Type | Name | Time Estimate |
|------|------|--------------|
| `CAPSTONE` | [BS Degree Chatbot](./capstone-bs-degree-chatbot) | 8–12 hours |
| `CAPSTONE` | [Policy Chatbot](./capstone-policy-chatbot) | 6–10 hours |
| `LAB` | [RAGAS Evaluation Dashboard](./ragas-evaluation-dashboard) | 3–5 hours |

---

## What You'll Submit

Labs are **non-graded but expected** — TA reference implementations exist, and your solutions will be compared.

Capstones are real deployments used by IIT Madras teams — treat them like production work.

---

## Setup (Common for All)

```bash
# Create project
uv init week4-rag && cd week4-rag
uv add \
  openai anthropic langchain langchain-openai \
  chromadb qdrant-client faiss-cpu \
  rank_bm25 sentence-transformers flashrank \
  ragas fastapi uvicorn python-dotenv \
  streamlit pandas matplotlib

# Environment
cp .env.example .env
# Fill in your API keys
```

```bash
# .env
OPENAI_API_KEY=sk-...
ANTHROPIC_API_KEY=sk-ant-...
COHERE_API_KEY=...         # optional, for Cohere rerank
```
