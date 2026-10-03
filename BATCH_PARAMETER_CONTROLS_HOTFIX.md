# Batch parameter controls hotfix

Automation Studio v1.0.39 batch rows now mirror the Test & Debug parameter controls.

- `select` parameters render as dropdowns using workflow `options`.
- `boolean` parameters render as true/false dropdowns.
- number/date/secret/text parameters use matching input types.
- New batch rows inherit workflow parameter `defaultValue` values.
- Existing rows receive defaults only for newly added/missing parameters; user-edited values are preserved.
- Batch boolean values are submitted as booleans, matching Test & Debug behavior.
