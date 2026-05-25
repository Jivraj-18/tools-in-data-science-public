# Week 03 — LLM Engineering

> **Goal:** Stop treating LLMs as magic boxes. Learn to talk to them precisely, structure their outputs, control costs, and trace every call — so you ship reliable AI features.

Week 3 bridges the gap between "I can call the API" and "I'm building a production AI system". Every skill here gets used again in RAG (Week 4), Agents (Week 5), and Fine-tuning (Week 8).

---

## The Week 3 Stack

```
User Query
    │
    ▼
Prompt Engineering ──→ Context Engineering ──→ Prompt Cache (save 90%)
                                                      │
                              LLM (Claude / GPT / Gemini / Ollama)
                                │
                    ┌───────────┼────────────┐
                    ▼           ▼            ▼
              Structured   Multimodal    Embeddings
               Output       (img/PDF)   + Similarity
              (Instructor)               Search
                    │
                    └──→ LangSmith traces + LiteLLM cost tracking
```

---

## Topics This Week

| # | Topic | Core Skill |
|---|-------|-----------|
| 01 | [Prompt Engineering](./prompt-engineering) | Zero-shot, few-shot, CoT, ToT, Self-Consistency |
| 02 | [Context Engineering](./context-engineering) | AGENTS.md, CLAUDE.md, system prompt design |
| 03 | [LLM CLI Tools](./llm-cli-tools) | `llm` CLI, `aichat`, shell pipelines |
| 04 | [AI Coding Assistants](./ai-coding-assistants) | Claude Code, Cursor, Copilot, Gemini CLI |
| 05 | [Pydantic & Structured Output](./structured-output) | Instructor, JSON mode, auto-retries |
| 06 | [Multimodal Inputs](./multimodal-inputs) | Images, PDFs, audio via API |
| 07 | [Vector Embeddings](./vector-embeddings) | BGE-M3, cosine similarity, dimensionality |
| 08 | [Similarity Search](./similarity-search) | HNSW, IVF, FAISS, hnswlib |
| 09 | [Prompt Caching](./prompt-caching) | Anthropic/OpenAI cache, up to 90% cost savings |
| 10 | [LangSmith & LiteLLM](./langsmith-litellm) | Tracing, cost analytics, AI gateway |
| 11 | [LLM Architecture Survey](./llm-architecture-survey) | Transformer, MoE, CLIP, SoTA 2025 models |

---

## Labs This Week

| Lab | Title | Time |
|-----|-------|------|
| [Lab 3.1](../../labs/week-3/youtube-subtitles-topics-json-pipeline) | YouTube → Subtitles → Topics → Timestamps JSON pipeline | ~3 hrs |
| [Lab 3.2](../../labs/week-3/cost-tracking-dashboard-langsmith) | Cost-Tracking Dashboard via LangSmith + prompt benchmarks | ~2 hrs |

---


**Warning: Project 1**
**Project 1** covers all of Weeks 1–3: development tooling, deployment, and LLM engineering. See the Projects section for the latest specification.

---

## Mental Model: Four Layers

```
┌──────────────────────────────────────┐
│  Layer 4: OBSERVABILITY              │  LangSmith traces · LiteLLM spend
├──────────────────────────────────────┤
│  Layer 3: OUTPUT SHAPING             │  Instructor · Pydantic · Multimodal
├──────────────────────────────────────┤
│  Layer 2: PROMPT & CONTEXT           │  Engineering · Caching · CLI tools
├──────────────────────────────────────┤
│  Layer 1: MODEL & EMBEDDINGS         │  LLMs · BGE-M3 · FAISS · Architecture
└──────────────────────────────────────┘
```

Build bottom-up. Get reliable outputs first, then optimize cost, then observe.
