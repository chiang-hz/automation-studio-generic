# 使用微軟官方預載 Playwright 依賴的 Node.js 基礎映像檔
FROM mcr.microsoft.com/playwright:v1.45.0-jammy

WORKDIR /app

# 先複製依賴清單進行安裝
COPY package*.json ./

# 強制使用 npm 與專案的 package-lock.json 確保依賴版本一致
RUN npm ci --omit=dev || npm install --omit=dev

# 複製其餘專案原始碼
COPY . .

# 設定環境變數
ENV NODE_ENV=production
ENV PORT=10000
ENV HEADLESS=true

EXPOSE 10000

# 啟動常駐的 Web UI Server
CMD ["npm", "run", "start:ui"]
