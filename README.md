<p align="center">
  <img src="./VideoNote_frontend/src/assets/logo.png" alt="VideoNote Logo" width="120" />
</p>

<h1 align="center">VideoNote</h1>

<p align="center"><i>AI 视频笔记生成工具 —— 让 AI 为你的视频做笔记</i></p>

<p align="center">
  <img src="https://img.shields.io/badge/frontend-react%2019-blue" />
  <img src="https://img.shields.io/badge/backend-fastapi-green" />
  <img src="https://img.shields.io/badge/GPT-openai%20%7C%20deepseek%20%7C%20qwen-ff69b4" />
  <img src="https://img.shields.io/badge/status-active-success" />
</p>

## 项目简介

VideoNote 是一个 AI 视频笔记助手，支持通过哔哩哔哩、抖音、快手等视频链接，自动提取内容并生成结构清晰、重点明确的 Markdown 格式笔记。支持插入截图、原片跳转、AI 问答等功能。

## 功能特性

- 支持多平台：哔哩哔哩、抖音、快手、本地视频
- 多种笔记风格选择（精简、详细、教程、学术、小红书等）
- 支持多模态视频理解
- 支持自定义 GPT 大模型（OpenAI、DeepSeek、Qwen 等）
- 本地模型音频转写（Fast-Whisper、Groq、BCut 等）
- 自动生成结构化 Markdown 笔记
- 思维导图展示
- 基于 RAG 的笔记内容 AI 问答
- 笔记多版本保留

## 技术栈

- **前端**：React 19 + TypeScript + Vite + Tailwind CSS
- **后端**：Python 3.11 + FastAPI
- **数据库**：SQLite
- **桌面端**：Tauri

## 快速开始

### 前置条件

安装 FFmpeg（用于音频处理），可使用 AI Agent 本地部署或从 [ffmpeg.org](https://ffmpeg.org/download.html) 下载。

### 1. 克隆仓库

```bash
git clone https://github.com/Asuka-Langley-S/VideoNote.git
cd VideoNote
cp .env.example .env
```

### 2. 启动后端

```bash
cd backend
pip install -r requirements.txt
python main.py
```

后端运行在 `http://localhost:8483`

### 3. 启动前端

打开一个新的 PowerShell 终端：

```bash
cd VideoNote
cd VideoNote_frontend
npm install --legacy-peer-deps
npm run dev
```

前端运行在 `http://localhost:3015`

### 4. 部署大模型

在浏览器打开前端页面，进入「设置 → AI 模型设置」，添加你的 LLM 供应商（OpenAI、DeepSeek、Qwen 等）。

### 5. 下载转写模型

进入「设置 → 音频转写配置」，选择 Fast-Whisper 并下载对应模型，用于视频音频的文字转录。
