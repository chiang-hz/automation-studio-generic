# 下載憑證自動降級防護 Hotfix

本修正以增加防護為原則，不移除或取代既有下載機制。

- `downloadMode=auto`：直接下載遇到 TLS/CA 信任錯誤時不終止步驟，自動切換至既有瀏覽器點擊下載。
- `downloadMode=direct`：維持嚴格模式，直接下載失敗仍回報錯誤，不擅自更改使用者指定模式。
- 瀏覽器已觸發下載、但 `download.saveAs()` 失敗時，先讀取 Playwright 已取得的 `createReadStream()` 內容保存，避免不必要的第二次 Node HTTPS 請求。
- 只有既有下載串流也不可用時，才使用原下載 URL 進行最後救援。
- 保留 `NODE_USE_SYSTEM_CA=1` 支援；未關閉 TLS 憑證驗證。
- 自動降級會在執行結果留下說明，便於判斷實際採用的下載路徑。
