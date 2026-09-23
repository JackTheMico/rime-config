-- SPDX-License-Identifier: GPL-3.0-or-later
-- 九键虎专属键盘布局 (9jianhu)

---@type KeyColorStyles
local S = safe_require("nekocat.colors._key_colors")
local func_key_text_size = safe_require("nekocat.font_offset").func_key_text_size

local keyboard = keyboard {
  name = "九键虎",
  author = "Carlson24 / 虎码社区",
  ascii_mode = false,
  label_transform = "NONE",
  lock = false,
  sidebar_mode = false,
  rows = {
    -- 第 1 行：句号 | QW (1) | ABC (2) | DEF (3) | 退格
    row {
      keys = {
        key(merge(S.period, key {
          label = { { text = "。" } },
          click = "。",
          long_click = "？",
          swipe_up = "？",
          width = 0.15,
          key_text_size = func_key_text_size
        })),
        key(merge(S.kp1, {
          label = { { text = "QW" } },
          click = "q",
          hint = { { text = "1" } },
          label_symbol = { { text = "！" } },
          swipe_up = "！",
          popup = { "q", "w", "Q", "W", "1", "！" },
          width = 0.233
        })),
        key(merge(S.kp2, {
          label = { { text = "ABC" } },
          click = "a",
          hint = { { text = "2" } },
          label_symbol = { { text = "：" } },
          swipe_up = "：",
          popup = { "a", "b", "c", "A", "B", "C", "2", "：" },
          width = 0.233
        })),
        key(merge(S.kp3, {
          label = { { text = "DEF" } },
          click = "d",
          hint = { { text = "3" } },
          label_symbol = { { text = "；" } },
          swipe_up = "；",
          popup = { "d", "e", "f", "D", "E", "F", "3", "；" },
          width = 0.234
        })),
        key(merge(S.backspace, key {
          click = "BackSpace",
          key_text_size = func_key_text_size,
          width = 0.15
        }))
      }
    },

    -- 第 2 行：逗号 | GHI (4) | JKL (5) | MNO (6) | 重输
    row {
      keys = {
        key(merge(S.comma, key {
          label = { { text = "，" } },
          click = "，",
          long_click = "、",
          swipe_up = "、",
          width = 0.15,
          key_text_size = func_key_text_size
        })),
        key(merge(S.kp4, {
          label = { { text = "GHI" } },
          click = "g",
          hint = { { text = "4" } },
          label_symbol = { { text = "“”" } },
          swipe_up = "“”{Left}",
          popup = { "g", "h", "i", "G", "H", "I", "4", "“", "”" },
          width = 0.233
        })),
        key(merge(S.kp5, key {
          label = { { text = "JKL" } },
          click = "j",
          hint = { { text = "5" } },
          label_symbol = { { text = "……" } },
          swipe_up = "……",
          popup = { "j", "k", "l", "J", "K", "L", "5", "…" },
          width = 0.233
        })),
        key(merge(S.kp6, {
          label = { { text = "MNO" } },
          click = "m",
          hint = { { text = "6" } },
          label_symbol = { { text = "——" } },
          swipe_up = "——",
          popup = { "m", "n", "o", "M", "N", "O", "6", "—" },
          width = 0.234
        })),
        key(merge(S.clear, key {
          label = { { text = "重输" } },
          click = "Escape",
          hint = { { text = "`" } },
          swipe_up = "`",
          key_text_size = func_key_text_size,
          width = 0.15
        }))
      }
    },

    -- 第 3 行：切万象虎26键 | PRS (7) | TUV (8) | XYZ (9) | 分词(')
    row {
      keys = {
        key(merge(S.func, key {
          label = { { text = "26" } },
          click = "SchemaTiger",
          long_click = "KeyboardLayouts",
          width = 0.15,
          key_text_size = func_key_text_size
        })),
        key(merge(S.kp7, {
          label = { { text = "PRS" } },
          click = "p",
          hint = { { text = "7" } },
          label_symbol = { { text = "（）" } },
          swipe_up = "（）{Left}",
          popup = { "p", "r", "s", "P", "R", "S", "7", "（", "）" },
          width = 0.233
        })),
        key(merge(S.kp8, {
          label = { { text = "TUV" } },
          click = "t",
          hint = { { text = "8" } },
          label_symbol = { { text = "《》" } },
          swipe_up = "《》{Left}",
          popup = { "t", "u", "v", "T", "U", "V", "8", "《", "》" },
          width = 0.233
        })),
        key(merge(S.kp9, {
          label = { { text = "XYZ" } },
          click = "x",
          hint = { { text = "9" } },
          label_symbol = { { text = "～" } },
          swipe_up = "～",
          popup = { "x", "y", "z", "X", "Y", "Z", "9", "~" },
          width = 0.234
        })),
        key(merge(S.func, key {
          label = { { text = "'分词" } },
          click = "apostrophe",
          long_click = "Paste",
          key_text_size = func_key_text_size,
          width = 0.15
        }))
      }
    },

    -- 第 4 行：数字/计算器 | 斜杠/选单 | 空格 | 英文切换 | 回车
    row {
      keys = {
        key(merge(S.num, key {
          click = "KeyboardNumber",
          label_symbol = { { text = "ic@calculator-variant" } },
          popup = { "Calculator", "LiquidHistory", "LiquidEmoji", "ThemeReload", "Deploy" },
          has_menu = "Tab",
          key_text_size = func_key_text_size,
          width = 0.15
        })),
        key(merge(S.slash, key {
          click = "/",
          label_symbol = { { text = "[" } },
          swipe_up = "[",
          hint = { { text = "ic@list-box-outline" } },
          swipe_down = "SchemeList",
          key_text_size = func_key_text_size,
          width = 0.13
        })),
        key(merge(S.space, {
          label = { { text = "schema_name" } },
          click = "Space",
          long_click = "VoiceAssist",
          hint = { { text = "◕ ‿ ◕" } },
          swipe_down = "LiquidEmoji",
          key_text_size = 15,
          key_text_offset_y = 1
        })),
        key(merge(S.switch, key {
          click = "Keyboard45Eng",
          label_symbol = { { text = "]" } },
          swipe_up = "]",
          long_click = "KeyboardList",
          hint = { { text = "ic@web" } },
          swipe_down = "IMESwitch",
          key_text_size = func_key_text_size,
          width = 0.13
        })),
        key(merge(S.enter, key {
          label = { { text = "enter_labels" } },
          click = "Enter",
          long_click = "ColorList",
          key_text_size = func_key_text_size,
          width = 0.15
        }))
      }
    },

    -- 第 5 行：拓展操作行（左右方向键、剪贴板等）
    safe_require("nekocat.layouts._action_row")({}).extra
  }
}

return keyboard
