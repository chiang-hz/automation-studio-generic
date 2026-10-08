# V2.0.2：使用說明依最新介面修訂

更新內建使用說明，補齊單擊／雙擊與拖曳插入、收折與全螢幕、頁面 PDF 的頁首／頁尾及縮放、背景模式、批次 1–3 筆並行及 JSON／CSV 匯入匯出。修正 TypeScript 的 Stealth 相依套件、匯出資料與下載位置說明，並同步固定開啟介面及版號進位規則。本版僅修訂說明，未新增執行功能。

# V2.0.1：批次任務精簡與進階設定收折

移除批次清單重複的「執行勾選」操作列，全選／全取消執行統一使用「編號／執行」欄位標題的勾選框。進階設定預設收折，點擊標題或按 Enter／空白鍵可展開及收合；原有設定與自動儲存功能保留。

# V2.0.0：版號進位與固定開啟介面

第二、第三段版號限定為 0–9：功能升版 1.9.0 → 2.0.0；修正升版 1.8.9 → 1.9.0、1.9.9 → 2.0.0。建置時會檢查此規則。本版保留前一版的批次清單功能。

批次清單提供「匯入批次內容」與「匯出批次內容」，支援 JSON 與 UTF-8 CSV。JSON 保存欄位類型與每列執行勾選，適合備份及重新匯入；CSV 的欄位名稱使用參數 Key，`__studio_enabled` 表示執行勾選（true／false，省略時預設啟用）。CSV 保留逗號、引號與多行文字，使用 UTF-8 BOM 以方便 Excel 開啟；在 Excel 編輯代碼欄時請以文字格式保留前導零。匯出的是整份批次清單，密碼及敏感參數不匯出，重新匯入後可補填。

匯入先檢查欄位、資料類型與相依選項，再選擇「加入目前清單」或「取代目前清單」。檔案錯誤時不變更現有資料。尚未填完的必填內容可作為草稿匯入，執行前仍須通過原有驗證。每次匯入上限為 5 MB、10,000 筆。

「執行勾選」新增全選執行與全取消執行按鈕，也可用「編號／執行」欄位標題的勾選框切換所有列，包含未捲動到的列。一般資料列選取仍用於複製、批次修改與刪除。

啟動服務後會固定自動開啟介面，系統設定已移除取消選項；既有 autoOpenBrowser=false 及舊的環境變數停用設定均不再影響啟動。流程的有頭／無頭模式仍由專案設定管理。Windows 使用系統網址開啟方式，不依賴 PowerShell。

# V1.9.0：批次任務支援最多 3 筆並行

在「批次任務 → 進階設定 → 容錯與並行」選擇同時執行數 1、2 或 3，設定隨專案儲存，預設仍為 1。後端最多同時執行 3 筆，多餘任務等待排程。單筆執行與同時執行數 1 保持依序處理。

並行批次使用獨立瀏覽器工作站，各自沿用該批次已完成的人工登入檢查點；不借用正在錄製的瀏覽器。啟用瀏覽器 Profile 保存時，工作站資料分別保存於專案 Profile 的 batch-workers/1、2、3，首次可能需要分別登入；停用 Profile 保存時，每個工作站使用獨立暫時工作階段。執行紀錄標示工作站編號，方便辨識等待人工操作的任務。網站本身若限制同帳號多重登入，請選擇 1。

CDP 接管共用現有瀏覽器，固定依序執行；切換為管理瀏覽器後才開放 1–3。同專案重複提交批次會等待正在使用或保留的工作站，不會同時操作同一個 Profile。同名下載檔案採原子方式預留檔名，避免並行輸出互相覆蓋。

# V1.8.4：設計器執行資訊預設收折

設計器下方的執行資訊預設收折，只保留標題與展開控制；需要時可展開查看執行日誌、Console、Network、Popup／Download 與變數，也可用鍵盤 Enter 或空白鍵切換。執行流程時不會自動展開。

# V1.8.3：步驟狀態同步與拖曳插入修正

修正全域狀態同步在選取步驟後自動開啟設定的問題；單擊僅選取，雙擊才開啟設定。按住步驟卡後拖曳到另一張卡的上緣會插入前方、中央會交換兩張卡的位置、下緣會插入後方；同一層級與分支可排序，子流程一併保留。收折的動作元件需連續懸停 0.8 秒才展開，滑鼠短暫經過不會展開。

# V1.8.2：流程步驟單擊與雙擊修正

階層清單及視覺畫布的步驟單擊僅選取、雙擊才開啟設定；階層清單不再顯示步驟最前方的拖曳把手，按住整張步驟卡後即可拖曳排序。

# V1.8.1：設計器互動修正

動作元件預設收折，滑鼠移入會展開完整清單，點擊收折按鈕後會維持收折直到滑鼠移開再移入。階層清單單擊會選取並關閉設定，雙擊才開啟設定；按住步驟約 0.42 秒後可拖曳排序。

# V1.8.0：設計器操作改善

側欄功能改用易辨識的 Lucide 圖示，原始工作流程頁更名為「工作流程原始碼」。階層清單支援單擊選取、雙擊編輯與按住拖曳排序；動作元件面板可收折並於滑鼠移入時展開。

# V1.7.1：移除舊版介面

首頁已移除 V1.3.0 舊版介面的入口與 `/classic/` 頁面；EBAS 既有功能仍可由 `/legacy/` 使用。新介面載入失敗時會提供重新整理提示。

# V1.7.0：視覺畫布全螢幕與條件分支收折

視覺畫布新增全螢幕檢視，可使用畫布上的按鈕進入或離開，也可按 Esc 退出。階層清單中的 True／False 條件分支可分別收折，並顯示分支內步驟數，收折時仍保留分支標題與展開控制。

# V1.6.2：測試與 Debug 事件紀錄可讀性

事件紀錄改為左對齊並保留換行，加入較寬鬆的行距；紀錄面板依內容伸縮，長紀錄才啟用捲動，移除下方多餘留白。

# V1.6.1：PDF 設定保存修正

執行流程前會自動套用尚未提交的步驟編輯；若專案無法保存，流程不會使用舊資料繼續執行。PDF 步驟結果會列出實際採用的紙張、方向、縮放比例與頁首／頁尾狀態，空白範本也會明確標示。

# V1.6.0：PDF 頁首／頁尾與縮放設定

「保存頁面 PDF」新增頁首／頁尾輸出開關、HTML 範本，以及 10% 至 200% 縮放比例調整。範本可使用 Chromium 提供的 `date`、`title`、`url`、`pageNumber`、`totalPages` class；範本以獨立列印樣式呈現，不會套用網頁 CSS。預設不輸出頁首／頁尾、縮放 100%，既有流程保持原樣。工作流程資料與 TypeScript 匯出均支援新設定。

# V1.5.0：原生保存頁面 PDF

流程設計器新增「保存頁面 PDF」原生步驟，使用 Chromium／Chrome 列印目前分頁，不需要 selector。可設定檔名、A4／Letter、直向／橫向、背景色、四邊界（mm）、完整頁面與本機時間命名。Automation Studio 執行時會存至「系統設定」的預設下載資料夾，檔名衝突時自動加序號；執行結果也會列入本次下載成果。

匯出 TypeScript 可執行同一步驟；獨立執行時預設存至專案的 `downloads`，可用 `DOWNLOAD_DIR` 環境變數指定目錄。舊流程沒有 PDF 設定時會採用 A4、直向、10 mm 邊界、包含完整頁面與本機時間命名。

# V1.4.2：React 專案總覽遷移

本版延續 V1.4.1 的側欄圖示導覽、快捷鍵與狀態記憶，並完成 React SPA 遷移第一階段：專案總覽、參數管理及發布與版本資訊改由 React 管理；型別化 REST client 讀取既有 Dashboard／專案 API，支援建立專案、開啟設計器、啟動流程與產生匯出 ZIP。參數變更會同步到測試與批次資料。

流程執行、API、資料格式及 EBAS／CDP／下載控制器維持原樣；V1.4.2 當時保留 `/classic/` 與 `/legacy/` 相容頁面。V1.7.1 起已移除 `/classic/`，`/legacy/` 仍提供 EBAS 既有功能。其餘尚未遷移的頁面本階段仍沿用既有控制器，完整 SPA 遷移會按頁面分批完成。V1.4.0 的逐頁截圖與版面檢查仍可在 `V1.4.0-visual-review.html` 查看。

已編譯的新介面包含在 public/modern，不必重新建置即可使用。沿用原有 Node / Playwright runtime，執行 start.bat 後開啟本機首頁。

- 首頁：新介面；V1.7.1 起已移除舊版介面入口及 /classic/。
- EBAS 既有功能：仍在 /legacy/。
- V1.4.2 遷移摘要：開啟 `V1.4.2_REACT_SPA_STAGE1.md`。
- V1.4.1 側欄與快捷鍵摘要：開啟 `V1.4.1_COMMERCIAL_FRONTEND_HOTFIX.md`。
- V1.4.0 詳細操作與逐頁畫面檢視：開啟 V1.4.0-frontend-guide.html 與 V1.4.0-visual-review.html。
- 請保留既有 data、.auth、downloads、debug、runtime 與 node_modules；這些執行資料不在本更新包內。

## 前端開發

Node 22.12+ 或目前使用的 Node 24。開發環境使用 npm ci 安裝鎖定依賴。

```bash
npm run frontend:check
npm run frontend:build
npm run check:all
npm test
npm run ui
```

前端資源、Monaco 與其 Workers 均由本機服務供應，不使用 CDN。
所有原有 runtime 依賴的鎖定版本均保留；Playwright 固定為原附件的 1.61.0。

## 驗證

verification 內有測試結果。tests/frontend-model.test.ts 驗證圖形與批次貼上；tests/ui-regression.py 驗證介面。
若要重跑 Python UI 測試，先在獨立測試目錄複製本程式、安裝 Python Playwright、啟動 UI_PORT=4175 的本機服務，再執行測試。測試會建立 UI 驗證專案，請勿直接對正式資料目錄執行。

---

# V1.3.0：專案可選 Stealth

在「網站與瀏覽器工作站」勾選「啟用 Stealth（此專案）」並儲存。預設關閉，舊專案維持關閉。變更設定後先停止錄製，再重新啟動錄製瀏覽器；執行中的任務維持啟動時的設定。

- 僅接入錄製器、流程執行器與匯出 TypeScript；EBAS 既有功能未接入。
- 管理模式一般啟動與固定 Profile 啟動均載入插件；每次啟動使用獨立插件實例。
- CDP 模式保留設定但不套用，介面停用勾選框並提示適用範圍。
- TypeScript 匯出保留設定、附帶 helper，啟用時自動列入插件相依套件；於匯出目錄執行 npm install。
- 本應用程式更新後請執行 npm install，安裝新增的 playwright-extra 與 puppeteer-extra-plugin-stealth。
- Stealth 無法保證不被偵測，不能修復 Cookie、Session、randomNo 或限流問題。

# 網站自動化流程設計平台 · Automation Studio 1.2.4

目前正式版本：**2.0.2**。系統採 `MAJOR.MINOR.PATCH`，第二、第三段限定 0–9，超過 9 時向前進位。系統版本與工作流程「專案版本號」分開管理；完整規則見 `VERSIONING.md`。

## V1.2.4 EBAS 本機時間與任務中斷

- EBAS 下載檔名改用電腦本機時間，格式 `YYYY-MM-DDTHH-mm-ss-SSS`，不再使用 UTC 的 Z；內部事件與 Debug 紀錄保留 UTC。
- 任務狀態提供「中斷任務」，適用單筆、批次與 A/B 平行下載。中斷會關閉該下載的 context，保留其他任務與共用 Browser。
- 正在中斷顯示 `cancelling`，下載工作結束後顯示 `cancelled`。未執行批次項目中斷、停止重試等待，已完成檔案保留。
- MCP 新增 `cancel_download_task`／`cancel_batch_download_task`，參數為 `taskId`。

## V1.2.3 EBAS 瀏覽器模式

- 工作站 A/B 人工登入固定使用有頭瀏覽器；Session 健康檢查固定使用無頭瀏覽器。
- 開發者功能 → EBAS → 進階設定 → 瀏覽器模式，可選「顯示瀏覽器視窗（建議）」或「無頭模式」，預設顯示視窗。
- 同一設定適用單筆與批次下載；Debug 加無頭時只顯示提醒，不強制改變模式。
- 有頭及無頭使用各自獨立的 Playwright Browser instance；同模式任務以獨立 context 使用該模式瀏覽器。
- 單筆、批次及批次子任務保存 browserMode，狀態頁顯示本次模式，重試沿用原模式。
- MCP `create_download_task`、`create_batch_download_task` 新增可選 `browserMode`，允許 `headed`／`headless`，省略時預設 `headed`。EBAS 下載不再依 HEADLESS 環境變數決定模式。

MCP 範例：`{"reportId":"ebas-1103-income-statement","parameters":{},"browserMode":"headless","debug":true}`。報表參數仍須依工具提供的定義填寫。

## V1.2.2 錄製器補強

- 錄製 Enter、Tab、方向鍵、Escape 及 Ctrl／Alt／Shift／Meta 組合按鍵；忽略 IME 組字與長按重複事件。
- 在按鍵、離開欄位、點擊其他元素、加入流程或停止錄製前保存最後填值，避免輸入尚未觸發 change 就送出而漏錄。
- 檔案上傳錄製支援多檔，保存檔名與 input 定位。瀏覽器無法可靠取得完整本機路徑，因此上傳步驟預設停用；請在流程設計器補入完整路徑（每行一個），再啟用。執行器及 TypeScript 匯出支援隱藏檔案 input。
- 工作站新增「選取驗證元素」，支援元素可見、文字內容、欄位值；選取會攔截滑鼠操作。值驗證不允許密碼或檔案欄位，可按 Esc 或「取消選取」離開。
- 優先使用錄製當下唯一的 test ID、穩定 ID 或 name，保留其他定位備援。
- 操作前等待元素可見；點擊後的等待可搜尋下一步所在的 Frame。文字／值驗證會在逾時前等待非同步更新。
- 密碼值不保存，相關填值步驟預設停用，需設定機敏參數或改用人工登入。

使用：啟動錄製後操作網站；要加入驗證時，選擇種類並按「選取驗證元素」，再切到錄製視窗點選目標。完成後按「加入流程步驟」。上傳步驟請補路徑並啟用，再測試流程。

限制：此版未錄製拖放上傳、作業系統檔案視窗或瀏覽器介面操作。剪貼簿快捷鍵重播使用執行時的剪貼簿；業務條件與最後完成判斷仍需檢查流程。錄製器升級後請關閉舊錄製視窗並重新啟動；CDP 舊分頁請重新整理。

## V1.2.1 名稱與操作說明樣式

- 應用程式中文名稱改為「網站自動化流程設計平台」，瀏覽器分頁標題同步更新。
- 主要操作說明中的補充事項統一使用相同收折卡片、展開標示、字級與間距。

## V1.2.0 執行紀錄管理

- 執行紀錄支援單筆刪除、多選刪除、全選目前篩選結果、刪除目前篩選結果，以及清除已完成紀錄。
- 執行中、佇列等待與等待人工操作的紀錄受到保護，不能由管理操作刪除。
- 可設定獨立的執行紀錄保留天數；啟動或流程完成時檢查，到期掃描自動節流為最多每 24 小時一次，也可手動立即清理。
- 顯示執行紀錄數量、各狀態筆數、紀錄與 Debug 資料占用空間；刪除紀錄時保留下載成果檔案。
- 失敗紀錄提供「下載失敗診斷包 ZIP」。若該次 Debug 已被清理，會明確提示「診斷資料已清理」。

## V1.1.6 Recorder FramePath 正規化修復


## V1.1.6 Recorder FramePath 正規化修復

- 修復停止錄製後顯示最近操作診斷時，非陣列 `framePath` 觸發 `item.framePath.join is not a function`。
- 前端統一將陣列、JSON 字串、一般字串與舊格式物件轉成安全的 Frame 路徑陣列後再顯示。
- 後端診斷事件進站時同步正規化 `framePath` / `frameUrl`，避免非標準資料進入停止錄製暫存狀態。
- 保留 V1.1.5 的未提交錄製事件暫存、SSE 即時顯示與 SmartKMS 多 Frame 錄製／重播相容。




## V1.1.5 Recorder 未提交事件保留與狀態同步修復

- 前端新增 Recorder 最後有效快照；暫時 API/SSE 同步失敗不再把已錄製事件清空。
- 同一錄製 Session 僅接受 revision 不倒退的狀態；較舊或較慢回應不會覆蓋新事件。
- SSE 斷線／重連時保留既有清單並顯示同步提示。
- 只有「清除本次事件」、「加入流程步驟」或啟動新的錄製 Session 才會主動清空 Recorder 快照。
- 停止錄製或錄製瀏覽器關閉時，後端保留尚未提交的事件，因此停止後仍可加入流程。

## V1.1.4 Recorder 即時串流與 SmartKMS 重播修復

- 錄製事件清單由 long-poll 改成 Server-Sent Events（SSE）即時串流；每次事件進入後端就直接推送完整 Recorder status。
- Automation Studio 視窗重新取得焦點／重新顯示時會強制同步 Recorder status，避免背景頁籤休眠後畫面停留在舊資料。
- Recorder 同時保存 selector JSON 備份與元素 name/id/文字/href 等基本證據；主要 selector 陣列若因舊式 Frame 同步重建而遺失，可在後端重建。
- 錄製事件自己的 frameUrl/framePath 優先於 Playwright binding source，避免 DocContent 點擊被錯誤記成父層 mainFrame。
- 「加入流程」若仍收到空 selector，會以操作文字與 targetUrl 產生可重播 fallback，不再建立 `selectors: []` 的 click。

## V1.1.3 錄製事件即時顯示與 selector 容錯

- 工作站錄製狀態改用後端 long-poll 事件喚醒，不再依賴前端 1.5 秒 `setInterval`；Automation Studio 頁籤在背景時也能在事件抵達後立即更新。
- Recorder status 增加 revision，事件、診斷或清除操作會喚醒等待中的前端監看請求。
- 錄製事件進入後端時統一正規化 selector；支援標準陣列、單一 selector 物件、巢狀陣列及 JSON 字串。
- 「錄製事件加入流程」再次做 selector 容錯，避免 `selectors.flatMap is not a function` 阻止提交。
- 錄製清單前端顯示也容忍非標準 selector 形狀，避免單一異常事件使整個清單渲染中斷。

## V1.1.2 Recorder transport bridge

- 針對 SmartKMS 類舊式多 Frame 網站補上三重事件回傳：Playwright Binding、同源 Top-window bridge queue、Console beacon。
- 每筆瀏覽器端錄製事件帶 transportId，後端跨通道去重，不會因備援而產生重複步驟。
- 可操作元件在 `pointerdown` 階段先記錄；若舊站在 click 前同步換頁／重建 Frame，仍能留下操作。正常 click 會與 pointerdown 合併。
- Frame 健康檢查另外統計 Binding 可用數；UI 會標示 Binding x/y、是否啟用備援通道及最近實際收到事件的通道。
- Frame-aware lifecycle、跨 Frame replay fallback 與多 Frame 失敗診斷仍保留。


## V1.1.1 Frame-aware persistent recorder

- 錄製器改為以 Document 為單位判斷是否已注入，避免舊式網站保留 Window 卻重建 Document 時誤以為 Recorder 仍存活。
- 同時監聽 `frameattached`、`framenavigated`、`domcontentloaded`、`load`，Frame 重新載入時立即補裝錄製器。
- 每 2.5 秒執行一次低成本 Frame 健康檢查；只在錄製器缺失時重新注入，並避免同一輪健康檢查重複執行。
- 錄製事件保存完整 Frame 路徑；工作站會顯示 Frame 健康數與自動修復次數。
- 從 Frame 錄製的步驟會自動設定 `autoFrameSearch: true`。重播時先嘗試原 Frame，找不到時再搜尋主頁與其他 Frame。
- 匯出的 TypeScript runner 同步支援上述 Frame fallback。
- 失敗診斷包的 `page-text.txt` 改為彙整主頁與所有 Frame 文字，並保存 Frame index、name、parent 與 path；截圖遮罩也套用到所有 Frame。

## V1.1.0 版本與錄製器整理

- 重新制定版號規則並將目前系統版號統一為 `1.1.0`。
- 移除 Microsoft Edge 選項與 Edge 自動 fallback；舊專案的 `msedge` 設定載入後改用「隨附 Chromium」。
- 舊式內網錄製改為 click 立即送出，不再延後 280 ms，避免點擊後同步導頁／frame 重建造成錄製事件遺失。
- 雙擊仍會由後端把同一元素近期的兩筆 click 合併為單一 `dblclick`。
- 加強 ExtJS／KMS／table cell／事件代理型元素辨識，改善 `SmartKMS` 類舊系統的內容點擊錄製。
- 新 popup／分頁出現時，錄製器會自動採用最新頁面作為目前錄製頁。

## v1.0.33 CDP 接管現有 Chrome

- 「網站與瀏覽器工作站」新增「接管現有 Chrome（CDP）」模式，可連線使用 `--remote-debugging-port` 手動啟動的本機 Chrome。
- CDP 位址預設為 `http://127.0.0.1:9222`，並限制在 localhost / 127.0.0.1 / ::1，避免誤接管遠端瀏覽器。
- 新增「測試 CDP 連線」，會顯示 Chrome 版本、目前可控制分頁、標題與網址，並標示流程會使用的起始分頁。
- 起始分頁可選「第一個可控制分頁」、「網址包含」或「第 N 個分頁」；後續仍可搭配既有的「切換至指定分頁」動作。
- CDP 模式下錄製器與正式執行器都直接使用既有 Chrome 的預設 context；停止錄製或流程完成時只解除 Playwright 連線，不關閉使用者的 Chrome 分頁。
- 匯出的 TypeScript runner 同步支援 CDP 接管。
- 工作站提供可複製的 Windows Chrome 啟動指令範例；Chrome 136+ 建議搭配獨立 `--user-data-dir`。

## v1.0.32 流程步驟操作強化

- 流程卡片新增拖曳把手，可用滑鼠拖曳調整同一層級的步驟順序；條件分支與迴圈內也可各自排序。
- 每個步驟新增「複製」按鈕，會完整複製步驟設定與子步驟，重新產生 ID，並插入原步驟下方。
- 步驟設定區新增「複製步驟」按鈕。
- 保留原有上移／下移功能，並新增快捷鍵：Ctrl+Shift+D 複製、Alt+↑/↓ 移動、Delete 刪除。
- 流程步驟工具列新增「全部啟用／全部停用」，可一次切換包含分支與迴圈內的所有步驟。
- 拖曳到不同層級時會阻止移動並提示，避免破壞條件分支或迴圈結構。

## v1.0.31 分頁控制

- 新增「開新分頁」動作，可指定網址並用邏輯名稱保存分頁。
- 新增「切換至指定分頁」動作，可依分頁名稱、網址包含、標題包含或第 N 個分頁切換。
- 同一 browser context 內保留多個分頁，切換後後續定位、等待、驗證與失敗截圖都改用目前作用中的分頁。
- 匯出的 TypeScript runner 同步支援分頁命名與切換。
- 執行前允許網域檢查會納入「開新分頁」網址。

## v1.0.30 保留登入狀態

- 「網站與瀏覽器工作站」將既有 Profile 功能正式命名為「保留登入狀態」，預設啟用。
- 同一專案的錄製器與流程執行器在啟用時共用 `data/profiles/<project-id>` 的持久化 Chromium Profile。
- 流程完成後即使瀏覽器正常關閉，網站 Cookie 與瀏覽器儲存資料仍會保存在本機，下次執行同一專案可沿用；網站本身仍可能因逾期或安全政策要求重新登入。
- 工作站新增 Profile 狀態提示與「清除登入狀態」按鈕；清除時會先關閉錄製瀏覽器，再刪除該專案 Profile。
- 關閉「保留登入狀態」時，錄製器與執行器都改用全新暫時 Context，不再意外沿用先前登入。
- 刪除專案時一併移除該專案的瀏覽器 Profile，避免登入資料殘留。
- 工作流程匯出仍不包含 Cookie、Token 或 Profile。

## v1.0.29 郵件文字擷取與變數流程

- 修正 `waitAfter: visible` 在 selector 同時符合多個元素時的 strict mode 失敗；等待可見/附加現在以「至少一筆符合」為成立條件。
- 新增「擷取文字」動作，可讀取純文字、HTML 或指定屬性，並保存至流程變數。
- 新增「擷取樣式」動作，可由流程變數使用正規表示式取得指定內容；預設範例為第一個獨立 6 位數字。
- 新增「複製至剪貼簿」動作，可複製固定文字或 `{{流程變數}}`。
- 後續「填入」步驟可直接使用 `{{verificationCode}}` 等變數，形成「擷取郵件本文 → 找出特定格式 → 填入另一頁面」流程。
- 匯出的 TypeScript 執行器同步支援上述功能。

## v1.0.27 人工操作等待強化

- 人工操作新增三種完成方式：手動按「繼續執行」、指定元素出現、網址符合。
- 執行監控在人工操作暫停時顯示「人工操作完成，繼續執行」按鈕。
- 適合登入、OTP、憑證等需要人工作業後再銜接自動化的流程。

## v1.0.26 錄製器相容性強化

- 點擊錄製支援 role、onclick、ondblclick、tabindex，以及具互動特徵的 tr/td/li/div/span。
- 新增「雙擊」步驟，錄製時會合併瀏覽器 click/click/dblclick 事件，只保留雙擊。
- 清單型元素優先建立 role、互動屬性與穩定 class selector，方便搭配「第一筆／最後一筆／第 N 筆」。
- 錄製事件區新增「最近操作診斷」，可顯示元素、frame 與未錄製原因。

錄製器現在只會讓 Hover 等待真正相關的選單元件，並以點擊目標網址核對 PDF 回應，避免文章頁內載入的 PDF 資源把文章點擊誤判為下載。既有流程載入時會自動移除無關 Hover、修正文章步驟類型，並改用穩定標題等待 Google 站內搜尋結果。

步驟設定的「動作」現在會在選取後立即更新相關細項欄位，並保留尚未套用的共通設定。進階設定新增「模擬人工操作模式」，可使用可見滑鼠移動、逐字輸入與自然停頓執行流程；此模式不修改瀏覽器指紋，也不會繞過網站安全驗證。

錄製器現在會把 `/File/Doc/{識別碼}` 等沒有 `.pdf` 副檔名的 PDF 連結辨識為下載；既有流程若誤存成一般點擊，也會在載入時自動升級為下載步驟，確保執行完成後真的保存檔案。

PDF 預覽或短生命週期 popup 的下載會在 Browser Context 層級先擷取並保存內容；下載來源頁在保存後關閉時，不會再使流程誤判失敗。

下載步驟可選擇保留來源檔名，或填入自訂名稱（可使用 `{{參數Key}}`）；系統會依實際下載內容保留正確副檔名，若同名檔案已存在則自動加上編號。

Windows 本機網站自動化設計與除錯工具。此第一版以使用者提供的
`playwright-mcp-report-flow-ui-layout-tweaks-0.2.7-0708.zip` 為既有骨架，
新增通用流程引擎與視覺化設計介面；沒有使用 0.1.7 專案。

## 快速啟動

1. 解壓縮整個資料夾。
2. 雙擊 `start.bat`。
3. 瀏覽器會開啟 `http://127.0.0.1:4173`。
4. 原有 EBAS 操作介面保留在 `http://127.0.0.1:4173/legacy/`。

`start.bat` 會優先使用 `runtime\\node\\node.exe`。若交付包未包含此檔，
則會使用電腦既有的 `node.exe`；要製作完全免安裝版本，請將 Windows x64
Node.js 22 或更新版本的可攜執行環境放進 `runtime\\node\\`。

選擇「隨附 Chromium」時，系統會尋找專案內的 Chromium 與使用者既有的
Playwright Chromium 快取（例如 `%LOCALAPPDATA%\ms-playwright\chromium-1223`），
不會自動改用可能受公司原則限制的 Edge／Chrome。`setup-runtime.bat` 會先
檢查既有快取；需下載時會啟用 `NODE_USE_SYSTEM_CA=1`，使用 Windows 信任憑證
庫驗證公司 HTTPS 憑證。若仍失敗，請向資訊單位取得公司根憑證，設定
`NODE_EXTRA_CA_CERTS` 後再執行；不應關閉 TLS 驗證。若要指定瀏覽器，設定：

```text
PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH=C:\\path\\to\\chrome.exe
```

## CDP 接管既有 Chrome

1. 可直接雙擊專案根目錄的 `start-chrome-cdp.bat`，或用專用 Profile 手動啟動 Chrome，例如：

```bat
chrome.exe --remote-debugging-address=127.0.0.1 --remote-debugging-port=9222 --user-data-dir="%LOCALAPPDATA%\AutomationStudio\ChromeCDPProfile"
```

2. 在 Automation Studio 的「網站與瀏覽器工作站」將「瀏覽器連線模式」改成「接管現有 Chrome（CDP）」。
3. CDP 位址填入 `http://127.0.0.1:9222`，按「測試 CDP 連線」確認分頁清單。
4. 選擇起始分頁方式後儲存設定。執行流程或開始錄製時會直接接管該 Chrome。
5. 流程完成後 Chrome 會保持開啟；Automation Studio 只解除 CDP 連線。

若 `chrome.exe` 不在 PATH，請改用電腦上的 Chrome 完整路徑。CDP 模式使用的是該 Chrome Profile 自己的 Cookie 與網站儲存資料，因此「保留登入狀態」由外部 Chrome 管理。

## 第一版功能

- 從任意網址建立自動化專案，設定允許網域與瀏覽器工作站。
- 新專案預設使用「隨附 Chromium（錄製建議）」；既有專案保留其已儲存的瀏覽器選擇。
- 「測試與 Debug」可按「停止目前執行」取消佇列或執行中的流程；當前頁面動作會在安全檢查點結束。
- PDF 連結若開啟預覽頁，下載步驟會擷取 PDF 回應並保存，不必操作瀏覽器內建下載工具列。
- 錄製 Google 站內搜尋結果時會移除 `ved`、`usg`、`fexp` 等暫時轉址參數，Hover 等待也只使用穩定 selector。
- 執行完成的下載結果提供「開啟檔案」與「開啟資料夾」；僅允許開啟本程式 downloads 目錄內仍存在的檔案。
- 視覺化編輯點擊、輸入、選擇、勾選、上傳、鍵盤、Hover、等待、驗證、下載、條件與迴圈。
- 每個元件可設定多組 selector 備援、iframe、逾時、等待與執行後驗證。
- 支援一般 HTML、popup、新分頁、檔案下載，以及 ExtJS／Ksi component 路徑。
- 使用 headed Playwright 錄製點擊、輸入、下拉與勾選；密碼欄位不記錄內容。
- 桌面版下拉選單會自動錄製 Hover，並等待下一個子選單顯示後再點擊。
- 每個步驟間隔 800 ms、失敗重試間隔固定 5 秒；偵測到機器人驗證時等待人工完成，且不繞過驗證。
- 錄製瀏覽器仍開啟時，測試直接沿用同一個頁面、Cookie 與登入工作階段，不重新啟動瀏覽器；測試動作不會混入錄製事件。
- 新增「人工操作」步驟：遇到只在自動化重播時出現的網站安全驗證，可由使用者在同一個瀏覽器完成選單或驗證，系統確認網址／元件條件後再繼續，且不自動重試該步驟。
- 新增「保守重播模式」：預設每一步至少間隔 2 秒，操作前等待元件與頁面穩定、避免重複導頁，並維持單一工作站循序執行。此模式不隱藏或修改瀏覽器自動化特徵。
- 主頁面若回傳 HTTP 403／429，或偵測到 Cloudflare 等驗證頁，立即停止後續重播及該步驟重試，避免短時間內重複送出請求。
- 支援參數、敏感資料標記、批次資料、重試、取消與執行紀錄。
- Debug 證據包含事件、步驟結果、截圖、HTML、Console、頁面與下載資訊。
- 保留 0.2.7 的 EBAS 報表定義、批次範本、人工登入與下載功能。

錄製器會以獨立視窗啟動、強制帶到前景並立即導向目標網址；若 Windows
將視窗放在背景，可按「顯示錄製視窗」重新帶到前景。

## 操作路徑

1. 在「專案總覽」建立專案並輸入網址。
2. 在「網站與工作站」啟動瀏覽器，人工登入後開始錄製。
3. 在「自動化設計器」整理步驟、參數、等待條件及驗證規則。
4. 在「測試與 Debug」執行並檢查每一步結果。
5. 在「批次任務」填入多組資料並執行。
6. 在「發布與版本」選擇成果格式後匯出。

對使用 Cloudflare 等人工安全驗證的網站，請在步驟 2 完成驗證後保持錄製視窗開啟，直接進入步驟 3、4；所有測試完成後再按「停止錄製」。關閉或停止錄製後再次測試，系統只能重新啟動瀏覽器，網站仍可能要求再次驗證。

若安全驗證只在自動化測試某個選單步驟出現，請在設計器加入「人工操作」步驟，填寫操作說明，並將「完成驗證」設定為預期網址或完成後會出現的桌面版元件。測試執行到該步驟時會暫停，請直接在錄製瀏覽器完成操作；條件成立後流程會自動繼續。若未設定完成驗證，系統會拒絕執行該人工步驟。

## 可選匯出成果

同一個 ZIP 可自由勾選下列一種或多種格式：

| 格式 | 內容 |
| --- | --- |
| 可攜工作流程 | manifest、workflow、參數 schema、selectors、README、版本與範例 |
| TypeScript | 可獨立維護的 Playwright 專案、runner、型別、啟動批次檔與範例 |
| `SKILL.md` | 代理程式操作說明、工作流程、參考文件與驗收清單 |

匯出時會移除敏感參數的預設值，不包含密碼、Cookie、Token 或登入狀態。

## 資料與安全

- 專案及執行紀錄：`data\\studio\\`
- 下載結果：`downloads\\studio\\`
- Debug 證據：`debug\\studio\\`
- 瀏覽器工作站：`.auth\\studio\\`
- 系統僅允許流程停留在專案設定的網域。
- 驗證碼、MFA 與憑證登入必須由使用者在 headed browser 內人工完成。
- 匯出或分享前仍應檢查自訂頁面腳本與固定輸入值是否含機敏資料。

## 開發驗證

```powershell
npm.cmd run check
npm.cmd test
```

目前的自動測試涵蓋 ZIP 格式、新專案安全預設值、三種匯出成果及敏感值移除。

## 既有 EBAS 功能

啟動後從左側「EBAS 既有功能」進入，或雙擊 `start-ebas-ui.bat`。
原 0.2.7 的 API、報表定義、批次清單、範本、工作站及 Debug 流程均保留；
新的通用專案與原 EBAS 資料分開儲存。


## v1.0.29

- 人工操作步驟新增三種完成方式：手動按繼續、指定元素出現、網址符合。
- 執行監控在人工操作暫停時提供「人工操作完成，繼續執行」按鈕。
- 登入、OTP、憑證等互動流程可在完成後安全銜接下一個自動化步驟。


## v1.0.29 允許網域管理
- 工作站提供網域新增、移除與萬用子網域（`*.example.com`）管理。
- 一般網域採精確主機比對；只有明確使用 `*.` 才允許子網域。
- 開啟網址步驟會即時提示目標網域是否已允許，並可一鍵加入。
- 執行流程前預先掃描啟用中的開啟網址步驟，缺少允許網域時不啟動瀏覽器。
- 頁面跳轉後會再次檢查最終網址，若重新導向至未允許網域會明確停止。

## v1.0.35：CDP 一鍵啟動

CDP 模式預設啟用「執行時自動啟動 Chrome」。若 `http://127.0.0.1:9222` 尚未提供 CDP，Automation Studio 會自動尋找本機 Google Chrome，以獨立的 `ChromeCDPProfile` 啟動遠端除錯，等待連線成功後直接執行流程。日常使用不再需要先雙擊 `start-chrome-cdp.bat` 或先按測試連線；該 BAT 與手動啟動指令仍保留作為公司政策或特殊環境下的備援方式。

## v1.0.36：跨 Frame 可見性等待修正

- 修正跨 Frame `visible` 等待只檢查第一個候選元素的問題。若同一 selector 同時找到多個隱藏與可見節點，現在會逐一檢查，任一候選實際可見即通過。
- 跨 Frame 等待期間會重新取得 frame 清單，可處理 OWA 動態建立/替換 frame 的情況。
- 逾時診斷會同時列出每個 scope 的總候選數與可見候選數，方便判斷「有找到但全隱藏」與「完全找不到」兩種情況。
- 匯出的 TypeScript runner 同步套用相同邏輯。


## v1.0.38：等待第一筆新資料

新增「等待第一筆新資料」步驟：可先擷取目前第一筆作為基準，再等待清單第一筆真正改變並符合 Regex 後繼續，避免把舊郵件誤認成新驗證信。


## v1.0.39：直接下載連結

- 下載步驟新增「自動判斷／直接下載連結／點擊並等待下載」。
- 直接下載會讀取連結 href，沿用目前瀏覽器工作階段直接取得檔案，不開啟 PDF 預覽分頁。
- 自動模式優先直接下載，無法直接取得時才退回既有點擊下載。
- Windows 啟動器現在預設啟用 `NODE_USE_SYSTEM_CA=1`，讓 Playwright `APIRequestContext` 與瀏覽器一致使用 Windows 信任憑證庫；可處理公司 HTTPS 檢查憑證造成的 `unable to get local issuer certificate`，且不會關閉 TLS 驗證。
- 匯出的 TypeScript 專案 `start.bat` 同步套用相同設定；既有流程 JSON 與下載模式不需修改。


## V1.0.10 AI 執行監控

AI 流程助理新增即時執行監控，會顯示目前階段、已執行時間、目前動作、等待原因、URL、selector、最後成功動作與最近事件。網站探索期間會從後端 session 即時取得「掃描頁面／等待 AI 決策／驗證 selector／執行瀏覽器操作／等待頁面或下載反應」狀態，並提供停滯提示、停止目前探索、重新嘗試目前步驟及複製診斷資訊。監控本身不呼叫 AI。新 AI Provider 預設 Timeout 為 180 秒，Abort 逾時會明確顯示為 `AI_TIMEOUT`。詳見 `V1.0.10_AI_EXECUTION_MONITOR.md`。

## V1.0.9：AI 流程助理先探索網站再產生流程

- AI 流程助理新增「網站檢視」工作階段，會先用實際可見瀏覽器開啟目標網站。
- AI 探索只能選擇目前頁面真實存在的元素，實際操作後沿用錄製器取得的 selector。
- 登入、MFA、驗證碼與可能造成送出／刪除／核准等副作用的操作會暫停，交由人工完成後再繼續。
- 產生草稿時會核對 selector 是否來自本次探索或既有專案；互動步驟缺少 selector 或使用未觀察 selector 時直接視為驗證錯誤。
- 探索送往 AI Provider 的內容不包含密碼、Cookie、登入憑證或欄位實際輸入值；介面新增資料傳送提醒。

## V1.0.7：Gemini 驗證、重試與 TLS 診斷

- AI Provider：OpenAI、Gemini、Ollama / Local、OpenAI-compatible、Company AI Gateway。
- Gemini API Key 改用 `x-goog-api-key` Header；不再以 `?key=` 查詢參數送出。
- Gemini 預設模型改為 `gemini-3.5-flash-lite`，可在設定頁自行更換。
- 429 / 500 / 502 / 503 / 504 自動以 1 秒、2 秒、4 秒退避重試；Gemini 503 會明確提示模型高負載。
- `fetch failed` 現在會帶出底層 Node/Undici cause，例如 `UNABLE_TO_GET_ISSUER_CERT_LOCALLY - unable to get local issuer certificate`。
- AI 設定新增「網路／TLS 診斷」，不傳送 API Key，只檢查 Endpoint 的 DNS/TLS/HTTP，並顯示 Node 版本、`NODE_USE_SYSTEM_CA`、`NODE_EXTRA_CA_CERTS` 與 TLS 驗證狀態。
- 正式環境如公司 HTTPS Inspection 導致 `UNABLE_TO_GET_ISSUER_CERT_LOCALLY`，建議使用 `NODE_EXTRA_CA_CERTS` 指向公司 Root/Intermediate CA PEM；不要長期使用 `NODE_TLS_REJECT_UNAUTHORIZED=0`。
- 保留自然語言 AI 流程助理：需求 -> AI Workflow 草稿 -> 安全正規化 -> 預覽 -> 人工建立/套用，不直接執行。

## V1.0.9 對話式 AI 流程修改

AI 流程助理在產生初版後可持續用自然語言修改同一份流程。修改先顯示差異候選版，由使用者確認後才套用；若需要新的網站元素 selector，會重新啟動實際網站探索。另提供「復原上一版」按鈕，直接由本機版本快照復原，不呼叫 AI。詳見 `V1.0.9_CONVERSATIONAL_AI_WORKFLOW.md`。

### V1.0.9 對話修改網站探索狀態 Hotfix

修正多輪對話修改被未完成的網站探索 session 誤擋問題。純流程邏輯修改不再要求先完成網站探索；只有本輪需要新的互動 selector 時才重新探索。初版流程的網站探索要求與未驗證 selector 阻擋機制仍保留。詳見 `V1.0.9_CONVERSATIONAL_REVISION_EXPLORATION_HOTFIX.md`。


## V1.0.9 候選修改確認介面

AI 多輪對話產生候選修改後，流程步驟會直接以顏色與標籤顯示新增、修改、刪除與移動；可按「確認並套用至目前專案」一次完成確認與正式套用，或使用「僅套用至 AI 草稿」維持原本分段確認方式。候選修改差異直接標色與確認操作均在本機完成，不會額外呼叫 AI。

## V1.0.9 AI download exploration rule hotfix

See `V1.0.9_AI_DOWNLOAD_EXPLORATION_RULE_HOTFIX.md`. Local and multiple downloads no longer force manual exploration unless the same action changes remote data.


### V1.0.9 AI 流程助理持久錯誤紀錄

AI 流程助理發生網站探索、流程產生或多輪修改錯誤時，錯誤會固定保留在「AI 錯誤紀錄」區塊，包含時間、階段與完整訊息。紀錄會保存在本機 session，重新整理後仍可查看，並可逐筆關閉或全部清除；不再只依賴數秒後自動消失的 toast。

## V1.0.10 AI 專案建立／套用按鈕修正

- AI 草稿若已有有效 `targetUrl`，但 `navigate` 步驟漏掉 `url`，系統會自動補上目標網址，不再因可安全修復的結構性缺漏阻擋「建立為新專案」或「套用至目前專案」。
- AI prompt 已要求 `navigate` 明確輸出 URL，降低模型再次漏填的機率。
- AI 草稿操作區會顯示按鈕停用原因；沒有目前專案與 Workflow 驗證失敗會分別提示。


## V1.0.11 測試與 Debug 步驟範圍執行

「測試與 Debug」新增「只執行此步驟」與「從此步驟執行」兩種局部測試模式。單步模式現在可直接執行條件分支或迴圈中的巢狀子步驟；從此步驟模式會由選取步驟開始，執行同一層後續步驟並接續父層後方流程。對巢狀子步驟啟動時不會重跑外層條件判斷或先前迴圈，因此需要先準備好瀏覽器狀態與前置變數。使用說明已新增完整操作步驟與注意事項。詳見 `V1.0.11_STEP_DEBUG_EXECUTION.md`。

## V1.0.12 測試與 Debug AI 失敗分析

「測試與 Debug」在執行失敗後新增 AI 分析與失敗診斷包。內建 AI 會依失敗步驟、錯誤、執行事件與失敗頁面元素提出根因與候選步驟設定修正；候選修正需人工確認才套用，且新的 selector 必須來自失敗頁面實際觀察證據。另可下載已遮罩的 ZIP 診斷包供外部 AI／支援人員使用。詳見 `V1.0.12_DEBUG_AI_FAILURE_DIAGNOSTICS.md`。

## V1.0.12 UI 資訊架構調整

為降低使用說明與系統設定的資訊密度，本修正版將「測試與 Debug：步驟執行方式」及「測試失敗後：AI 分析與失敗診斷包」併回「主要操作說明 → 測試與 Debug」，並改成需要時再展開；「AI 流程助理」移至左側「開發者功能」；系統設定中的 AI Provider 改成整區與各 Provider 分層收折。詳見 `V1.0.12_UI_INFORMATION_ARCHITECTURE_HOTFIX.md`。

- V1.0.12 hotfix：自動化設計器每個流程步驟卡片新增「只執行此步驟」與「從此步驟執行」快速 Debug 按鍵。

## V1.0.13 Debug 保留與自動清理

「系統設定 > Debug 保留天數」與「Debug 保存方式」已實際生效。「僅失敗任務」會在成功 run 完成後只刪除該 run 自己的 Debug；歷史到期資料採事件觸發與 24 小時節流，Automation Studio 啟動或流程完成時只在距上次完整清理已滿 24 小時才掃描。另提供「立即清理過期 Debug」與上次清理統計。詳見 `V1.0.13_DEBUG_RETENTION_HOTFIX.md`。
