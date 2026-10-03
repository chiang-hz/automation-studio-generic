# Automation Studio v1.0.39 - Windows system CA download hotfix

## 問題

部分 Windows／公司網路環境會由 HTTPS 檢查設備重新簽發網站憑證。Chrome 會使用 Windows 信任憑證庫，因此人工開啟或下載正常；但 Playwright 的 `APIRequestContext` 由 Node.js 發出請求，若 Node 未啟用系統 CA，就可能在直接下載時出現：

```text
apiRequestContext.get: unable to get local issuer certificate
```

這不是 selector、PDF 連結或允許網域錯誤，而是「瀏覽器與 Node 使用不同憑證信任來源」造成。

## 修正

1. `start.bat` 預設加入 `NODE_USE_SYSTEM_CA=1`。
2. `start-ebas-ui.bat` 套用相同設定。
3. 由 Automation Studio 匯出的 TypeScript 專案 `start.bat` 也會自動套用。
4. 不設定 `NODE_TLS_REJECT_UNAUTHORIZED=0`，不關閉 TLS 驗證。
5. 不修改原流程的 `downloadMode`、selector、PDF 點擊／直接下載邏輯，因此原本可正常執行的流程維持原行為。

## 若仍失敗

若公司根憑證未安裝在 Windows 信任憑證庫，請由資訊單位提供 CA 憑證，並在啟動前設定 `NODE_EXTRA_CA_CERTS`。不要關閉 TLS 驗證。
