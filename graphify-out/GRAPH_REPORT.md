# Graph Report - automation-studio-generic-v1.2.1  (2026-10-03)

## Corpus Check
- 63 files · ~101,883 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 10 file(s) not represented in the graph (top: .bat 5, (none) 2, .css 2)

## Summary
- 1314 nodes · 4027 edges · 50 communities (46 shown, 4 thin omitted)
- Extraction: 96% EXTRACTED · 4% INFERRED · 0% AMBIGUOUS · INFERRED: 180 edges (avg confidence: 0.83)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `790b0a90`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- executor.ts
- legacy/app.js
- ai/types.ts
- bindActions
- public/app.js
- ebasReportAdapter.ts
- workflowGenerator.ts
- siteExplorer.ts
- generateAIWorkflowDraft
- escapeHtml
- reportService.ts
- mcpTool.ts
- clickAndWaitForDownload
- playwrightReportAdapter.ts
- recorder.ts
- ui/server.ts
- cdp.ts
- store.ts
- debugDiagnostics.ts
- router.ts
- WorkflowProject
- renderRuns
- debugAnalyzer.ts
- createStudioRouter
- renderRun
- exporter.ts
- scripts
- ref_node_fs
- formatDate
- RecorderManager
- applyRecorderStatus
- mcp/server.ts
- studio/types.ts
- examples.ts
- runHistoryRetention.ts
- EbasReportAdapter
- studio.test.ts
- compilerOptions
- 核心功能介紹
- browser.ts
- debugRetention.ts
- .executeStepWithRetry
- zip.ts
- Agent Instructions
- normalizeSystemSettings
- AIWebsiteExplorer
- .status
- .start
- rules/graphify.md
- workflows/graphify.md

## God Nodes (most connected - your core abstractions)
1. `bindActions()` - 96 edges
2. `createStudioRouter()` - 75 edges
3. `toast()` - 63 edges
4. `api()` - 52 edges
5. `FlowError` - 38 edges
6. `escapeHtml()` - 31 edges
7. `bindActions()` - 29 edges
8. `StudioStore` - 29 edges
9. `ReportService` - 28 edges
10. `RecorderManager` - 28 edges

## Surprising Connections (you probably didn't know these)
- `checkWorkerSession()` --calls--> `resolveChromiumExecutablePath()`  [EXTRACTED]
  src/ui/server.ts → src/adapters/chromiumExecutable.ts
- `startManualLogin()` --calls--> `resolveChromiumExecutablePath()`  [EXTRACTED]
  src/ui/server.ts → src/adapters/chromiumExecutable.ts
- `EbasReportAdapter` --implements--> `ReportAdapter`  [EXTRACTED]
  src/adapters/ebasReportAdapter.ts → src/adapters/reportAdapter.ts
- `EbasReportAdapter` --references--> `AppConfig`  [EXTRACTED]
  src/adapters/ebasReportAdapter.ts → src/config.ts
- `createReportService()` --calls--> `EbasReportAdapter`  [EXTRACTED]
  src/container.ts → src/adapters/ebasReportAdapter.ts

## Import Cycles
- None detected.

## Communities (50 total, 4 thin omitted)

### Community 0 - "executor.ts"
Cohesion: 0.11
Nodes (42): applyWait(), captureStepState(), CdpDownloadSink, clamp(), cssString(), describePage(), DownloadCapture, downloadWithWindowsNative() (+34 more)

### Community 1 - "legacy/app.js"
Cohesion: 0.07
Nodes (86): addBatchItem(), applyBatchParameter(), applyBatchYear(), bindActions(), bindNavigation(), callManualTool(), callMcpTool(), checkHealth() (+78 more)

### Community 2 - "ai/types.ts"
Cohesion: 0.09
Nodes (42): assertProviderConfig(), getActiveProviderConfig(), resolveSecret(), AIProviderError, createAIProvider(), buildAuthHeaders(), DEFAULT_RETRY_DELAYS, delay() (+34 more)

### Community 3 - "bindActions"
Cohesion: 0.09
Nodes (60): api(), applyDebugAIPatch(), applyTheme(), bindActions(), bindNavigation(), closeProjectDialog(), copyAIWorkflowDraft(), copyCdpLaunchCommand() (+52 more)

### Community 4 - "public/app.js"
Cohesion: 0.09
Nodes (57): adapterOptions(), addAllowedDomain(), addDomainValue(), addNestedStep(), addStep(), AI_PROVIDER_META, AI_WORKFLOW_MONITOR_STAGES, changeSelectedStepKind() (+49 more)

### Community 5 - "ebasReportAdapter.ts"
Cohesion: 0.08
Nodes (51): accountCodeMatches(), applyInteractiveEbasKindSelections(), assertPageOpen(), buildDownloadWaitError(), checkOutputFormat(), chooseByLabelOrNearbyText(), clickByText(), clickDropdownOption() (+43 more)

### Community 6 - "workflowGenerator.ts"
Cohesion: 0.10
Nodes (46): ADAPTERS, AIWorkflowConversationTurn, AIWorkflowDraftDiff, AIWorkflowDraftDiffItem, AIWorkflowDraftInput, AIWorkflowDraftProject, AIWorkflowDraftResult, AIWorkflowRevisionResult (+38 more)

### Community 7 - "siteExplorer.ts"
Cohesion: 0.14
Nodes (19): cssEscape(), describeElement(), ExplorationSession, isDownloadElement(), isDownloadOnlyManualReason(), normalizePlannerDecisionForSafeDownloads(), parseJsonObject(), pickRecordedEvent() (+11 more)

### Community 8 - "generateAIWorkflowDraft"
Cohesion: 0.12
Nodes (42): acceptAIWorkflowRevision(), acceptAndApplyAIWorkflowRevision(), activeAIProviderSummary(), aiWorkflowErrorStageLabel(), aiWorkflowRequestSignal(), appendAIWorkflowMonitorEvent(), applyAIWorkflowToCurrentProject(), beginAIWorkflowOperation() (+34 more)

### Community 9 - "escapeHtml"
Cohesion: 0.08
Nodes (39): addBatchRow(), aiAuthOptions(), aiWorkflowStepDiffState(), batchParameterDefault(), countAIWorkflowSteps(), createBatchRow(), ensureParameterIds(), escapeHtml() (+31 more)

### Community 10 - "reportService.ts"
Cohesion: 0.09
Nodes (27): TaskStore, BatchDownloadItem, BatchDownloadItemInput, BatchDownloadItemStatus, BatchDownloadResult, BatchDownloadTask, BatchDownloadTaskStatus, DownloadTask (+19 more)

### Community 11 - "mcpTool.ts"
Cohesion: 0.11
Nodes (21): DownloadOpenMode, hasPdfSignature(), isWindowsExplorerDirectoryOpen(), openStudioDownloadArtifact(), pathExists(), resolveStudioDownloadArtifact(), runCommand(), runWindowsShellOpen() (+13 more)

### Community 12 - "clickAndWaitForDownload"
Cohesion: 0.17
Nodes (23): appendDownloadTimestamp(), assertAllowedUrl(), browserCdpResourceDownload(), browserNavigationDownload(), clickAndWaitForDownload(), createCdpDownloadSink(), decodedDownloadNameFromUrl(), delay() (+15 more)

### Community 13 - "playwrightReportAdapter.ts"
Cohesion: 0.14
Nodes (19): MockReportAdapter, sanitizeFileName(), withTimestamp(), PlaywrightReportAdapter, sanitizeFileName(), withTimestamp(), DownloadReportInput, DownloadReportOutput (+11 more)

### Community 14 - "recorder.ts"
Cohesion: 0.15
Nodes (19): cssQuoted(), decodedRecordedDownloadName(), fallbackRecorderSelectors(), importPlaywright(), isPdfResponse(), normalizeRecorderSelectorCandidates(), normalizeRecorderSelectorPayload(), pdfResponseMatchesTarget() (+11 more)

### Community 15 - "ui/server.ts"
Cohesion: 0.06
Nodes (72): playwright, DEFAULT_EBAS_REPORT, definitionsCache, deleteEbasReportDefinition(), EBAS_BUSINESS_TYPE_OPTIONS, EBAS_LEVEL_OPTIONS, EBAS_OUTPUT_FORMAT_OPTIONS, EBAS_STAGE_OPTIONS (+64 more)

### Community 16 - "cdp.ts"
Cohesion: 0.26
Nodes (15): CdpConnectionResult, cdpLaunchArguments(), CdpTabInfo, connectToCdpBrowser(), defaultCdpProfileDir(), delay(), describeCdpTabs(), findChromeExecutable() (+7 more)

### Community 17 - "store.ts"
Cohesion: 0.09
Nodes (34): createEbasExample(), createGenericExample(), createDefaultProject(), DebugCleanupResult, DebugCleanupStatus, debugCleanupStatusPath, debugRoot, DeleteRunsResult (+26 more)

### Community 18 - "debugDiagnostics.ts"
Cohesion: 0.20
Nodes (21): buildAIDebugAnalysisRequest(), redactSecrets(), redactText(), SECRET_KEYS, aggregateFrameText(), buildDiagnosticReadme(), buildFailureDiagnosticZip(), buildFramePath() (+13 more)

### Community 19 - "router.ts"
Cohesion: 0.18
Nodes (10): DEFAULT_AI_SETTINGS, readFailurePageSummary(), objectValues(), publicStudioSettings(), readJsonBody(), readRunDebug(), sendBuffer(), sendJson() (+2 more)

### Community 20 - "WorkflowProject"
Cohesion: 0.20
Nodes (11): AIDebugAnalysisInput, countEnabledSteps(), loadPlaywright(), materializeParameters(), redactParameters(), runtimeStatus(), WorkflowRunner, ActiveRecorderBrowserSession (+3 more)

### Community 21 - "renderRuns"
Cohesion: 0.17
Nodes (21): applyRunDeleteResult(), captureRunHistoryScrollState(), clearCompletedRuns(), clearRunSelection(), closeRunHistoryDetails(), deleteFilteredRuns(), deleteRunHistoryRecords(), deleteSelectedRuns() (+13 more)

### Community 22 - "debugAnalyzer.ts"
Cohesion: 0.17
Nodes (20): AIDebugAnalysisResult, clampInt(), createAIDebugAnalysis(), DOWNLOAD_MODES, limit(), MANUAL_COMPLETION_MODES, MATCH_MODES, normalizePatch() (+12 more)

### Community 23 - "createStudioRouter"
Cohesion: 0.21
Nodes (8): isDebugCleanupDue(), nextDebugCleanupEligibleAt(), createStudioRouter(), nextRunHistoryCleanupEligibleAt(), enqueueJsonWrite(), formatFileError(), StudioStore, writeJsonAtomic()

### Community 24 - "renderRun"
Cohesion: 0.13
Nodes (20): analyzeCurrentRunFailure(), buildRunDebugText(), buildRunHistoryDetailsMarkup(), cancelCurrentRun(), continueCurrentRun(), fileNameFromPath(), formatDebugTime(), formatDebugValue() (+12 more)

### Community 25 - "exporter.ts"
Cohesion: 0.20
Nodes (16): collectSelectors(), exampleParameters(), ExportService, generatedParameterTypes(), generatedTest(), json(), parameterMarkdown(), portableEntries() (+8 more)

### Community 26 - "scripts"
Cohesion: 0.11
Nodes (18): dependencies, playwright, name, private, scripts, check, demo, dev (+10 more)

### Community 27 - "ref_node_fs"
Cohesion: 0.12
Nodes (15): fileExists(), findLocalPlaywrightChromiumCandidates(), installedChromiumCandidates(), normalizePath(), readChromiumRevision(), resolveChromiumExecutablePath(), config, rl (+7 more)

### Community 28 - "formatDate"
Cohesion: 0.16
Nodes (19): buildIssueReportText(), cleanupExpiredDebugNow(), cleanupExpiredRunHistoryNow(), clearIssueReport(), copyIssueReport(), formatByteSize(), formatDate(), issueReportEmail() (+11 more)

### Community 29 - "RecorderManager"
Cohesion: 0.27
Nodes (4): normalizeFramePath(), RecorderManager, recorderScript(), validFrameUrl()

### Community 30 - "applyRecorderStatus"
Cohesion: 0.17
Nodes (18): applyRecorderStatus(), clearBrowserProfile(), clearRecording(), commitRecording(), focusRecorder(), markRecorderSyncError(), pollRecorder(), recorderFramePathList() (+10 more)

### Community 31 - "mcp/server.ts"
Cohesion: 0.21
Nodes (11): assertObject(), formatToolError(), handleLine(), JsonRpcRequest, McpToolCallResult, MinimalMcpServer, normalizeBatchItems(), normalizeStringRecord() (+3 more)

### Community 32 - "studio/types.ts"
Cohesion: 0.12
Nodes (16): BatchRow, BrowserConnectionMode, BrowserSettings, CdpInitialPageMode, ConditionRule, FrameRule, LocatorMatchMode, ManualCompletionMode (+8 more)

### Community 33 - "examples.ts"
Cohesion: 0.33
Nodes (12): applyRecordedEvents(), cssQuotedSelector(), isGoogleCseTemporarySelector(), isRelatedHoverEvent(), normalizeRecordedSelectorPayload(), recordedEventFrameUrl(), recordedEventKind(), recordedEventsToSteps() (+4 more)

### Community 34 - "runHistoryRetention.ts"
Cohesion: 0.18
Nodes (14): calculateRunHistoryUsage(), DELETABLE_STATUSES, directorySize(), findExpiredRunHistory(), hasRunDiagnosticData(), isRunHistoryCleanupDue(), isRunHistoryDeletable(), RUN_HISTORY_CLEANUP_INTERVAL_MS (+6 more)

### Community 35 - "EbasReportAdapter"
Cohesion: 0.18
Nodes (7): DebugRecorder, dumpExtTree(), EbasReportAdapter, sanitizeFileName(), withTimestamp(), EbasReportDefinition, getEbasReportDefinition()

### Community 36 - "studio.test.ts"
Cohesion: 0.19
Nodes (13): extractPatternValue(), findWorkflowStepById(), isAllowedHostname(), normalizeAllowedDomain(), preflightWorkflowDomains(), selectWorkflowRunSteps(), workflowStepsFromStepId(), BrowserProfileStatus (+5 more)

### Community 37 - "compilerOptions"
Cohesion: 0.17
Nodes (11): compilerOptions, esModuleInterop, forceConsistentCasingInFileNames, module, moduleResolution, outDir, rootDir, skipLibCheck (+3 more)

### Community 38 - "核心功能介紹"
Cohesion: 0.12
Nodes (15): 1. 系統需求, 1. 視覺化流程設計器 (Automation Designer), 2. 啟動方式, 2. 瀏覽器工作站與智慧錄製器 (Browser Recorder), 3. 接管現有 Chrome 瀏覽器 (CDP 模式), 4. 測試與單步除錯 (Test & Debug), 5. 批次下載與任務管理 (Batch Runner), 6. 多格式成果匯出 (Export) (+7 more)

### Community 39 - "browser.ts"
Cohesion: 0.27
Nodes (11): browserLaunchMessage(), DESKTOP_VIEWPORT, existingFile(), firstExisting(), installedBrowserCandidates(), localPlaywrightCandidates(), readRevision(), resolveStudioBrowser() (+3 more)

### Community 40 - "debugRetention.ts"
Cohesion: 0.33
Nodes (9): DEBUG_CLEANUP_INTERVAL_MS, DebugCleanupSweepResult, directorySize(), listOrphanRunDirectories(), removeEmptyParents(), removeRunDebugDirectory(), resolveSafeDebugPath(), sweepExpiredDebug() (+1 more)

### Community 41 - ".executeStepWithRetry"
Cohesion: 0.24
Nodes (11): appendEvent(), assertNoRecentRateLimit(), attachObservability(), attachPageObservability(), classifyError(), getActivePage(), isHumanVerificationError(), isHumanVerificationPage() (+3 more)

### Community 42 - "zip.ts"
Cohesion: 0.43
Nodes (6): crc32(), crcTable, createZip(), dosTimestamp(), normalizeName(), ZipEntry

### Community 43 - "Agent Instructions"
Cohesion: 0.18
Nodes (10): Agent Instructions, Architecture Guidance, Code And Spec Quality, Further Orientation, Memory, Output Rules, Risk And Reliability, Role (+2 more)

### Community 44 - "normalizeSystemSettings"
Cohesion: 0.83
Nodes (4): clampSystemInteger(), isSettingsRecord(), normalizeAISettings(), normalizeSystemSettings()

### Community 47 - ".start"
Cohesion: 0.50
Nodes (4): createAIRecorderProjectId(), createMonitor(), normalizeHttpUrl(), createId()

## Knowledge Gaps
- **161 isolated node(s):** `name`, `version`, `private`, `type`, `playwright` (+156 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 181 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **4 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `createStudioRouter()` connect `createStudioRouter` to `examples.ts`, `ai/types.ts`, `runHistoryRetention.ts`, `studio.test.ts`, `workflowGenerator.ts`, `mcpTool.ts`, `AIWebsiteExplorer`, `.status`, `ui/server.ts`, `.start`, `cdp.ts`, `debugDiagnostics.ts`, `router.ts`, `store.ts`, `WorkflowProject`, `debugAnalyzer.ts`, `exporter.ts`, `RecorderManager`?**
  _High betweenness centrality (0.033) - this node is a cross-community bridge._
- **Why does `playwright` connect `ui/server.ts` to `EbasReportAdapter`, `ebasReportAdapter.ts`, `playwrightReportAdapter.ts`, `recorder.ts`, `WorkflowProject`, `createStudioRouter`, `scripts`?**
  _High betweenness centrality (0.026) - this node is a cross-community bridge._
- **Why does `FlowError` connect `ebasReportAdapter.ts` to `EbasReportAdapter`, `reportService.ts`, `playwrightReportAdapter.ts`, `ref_node_fs`, `mcp/server.ts`?**
  _High betweenness centrality (0.023) - this node is a cross-community bridge._
- **Are the 82 inferred relationships involving `bindActions()` (e.g. with `acceptAIWorkflowRevision()` and `acceptAndApplyAIWorkflowRevision()`) actually correct?**
  _`bindActions()` has 82 INFERRED edges - model-reasoned connections that need verification._
- **Are the 37 inferred relationships involving `createStudioRouter()` (e.g. with `.diagnoseProvider()` and `.generate()`) actually correct?**
  _`createStudioRouter()` has 37 INFERRED edges - model-reasoned connections that need verification._
- **What connects `name`, `version`, `private` to the rest of the system?**
  _161 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `executor.ts` be split into smaller, more focused modules?**
  _Cohesion score 0.10993657505285412 - nodes in this community are weakly interconnected._