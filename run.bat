@echo off
cd /d "%~dp0"

start "Backend" powershell -NoExit -Command "cd backend; conda activate bili; python main.py"
start "Frontend" powershell -NoExit -Command "cd VideoNote_frontend; pnpm dev"

start http://localhost:3015/