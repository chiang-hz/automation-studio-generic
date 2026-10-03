# V1.0.40 Windows Run History EPERM Hotfix

修正 Windows 環境在流程已完成後，儲存 `data/studio/runs/run-*.json` 時偶發：

`EPERM: operation not permitted, rename '...json.<pid>.tmp' -> '...json'`

## 調整內容

- 同一個 JSON 檔案改為序列化寫入，避免同一 Run 的進度、下載、Console 與完成狀態互相競爭 rename。
- tmp 檔名加入 PID、時間戳與序號，不再只使用固定 PID tmp 名稱。
- `EPERM`、`EBUSY`、`EACCES` 採指數退避重試（50ms 起，最多 1 秒間隔，共 8 次重試）。
- 排隊前先建立 JSON 快照，避免 mutable Run 在等待寫入期間改變，造成紀錄順序不一致。
- 若執行紀錄在重試後仍因外部程式鎖檔而無法保存，只輸出 `[run-store]` 警告，不再把已成功完成的自動化流程改判為失敗。
- tmp 檔在失敗後 best-effort 清理，避免長期累積。

此修正不改變 workflow schema、專案匯入格式或既有瀏覽器自動化邏輯。
