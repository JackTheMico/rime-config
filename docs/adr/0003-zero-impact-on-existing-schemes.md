# 0003 零侵入原则：不修改通用 26 键布局与共享组件

在实现九键虎专属键盘时，严格保持对既有其他输入方案（如万象双拼、自然码、小鹤双拼、李氏三拼等）的零侵入：

1. 不修改通用的 `47keys.lua`、`_action_row.lua` 及 `layouts.lua` 共享组件；
2. 保持 26 键界面结构纯净，切回九键虎方案统一遵循 Rime 原生标准交互（下滑句号呼出 `SchemeList` 方案选单）；
3. 改动严格限制在新增独立的 `layouts/9jianhu.lua`、在 `textkeyboard.lua` 中登记方案映射，以及在 `preset_keys.lua` 中声明专用按键。
