local common = require "core.common"
local style = {}

style.set_font = function()
  style.padding = { x = common.round(14 * style.fscale), y = common.round(7 * style.fscale) }
  style.divider_size = common.round(1 * style.fscale)
  style.scrollbar_size = common.round(4 * style.fscale)
  style.caret_width = common.round(2 * style.fscale)
  style.tab_width = common.round(170 * style.fscale)
  style.font = renderer.font.load(EXEDIR .. "/data/fonts/font.ttf", 14 * style.fscale)
  style.big_font = renderer.font.load(EXEDIR .. "/data/fonts/font.ttf", 34 * style.fscale)
  style.icon_font = renderer.font.load(EXEDIR .. "/data/fonts/icons.ttf", 14 * style.fscale)
  style.code_font = renderer.font.load(EXEDIR .. "/data/fonts/monospace.ttf", 13.5 * style.fscale)
end

style.fscale = SCALE
style.set_font()

style.background = { common.color "#2e2e32" }
style.background2 = { common.color "#252529" }
style.background3 = { common.color "#252529" }
style.text = { common.color "#97979c" }
style.caret = { common.color "#93DDFA" }
style.accent = { common.color "#e1e1e6" }
style.dim = { common.color "#525257" }
style.divider = { common.color "#202024" }
style.selection = { common.color "#48484f" }
style.line_number = { common.color "#525259" }
style.line_number2 = { common.color "#83838f" }
style.line_highlight = { common.color "#343438" }
style.scrollbar = { common.color "#414146" }
style.scrollbar2 = { common.color "#4b4b52" }

style.syntax = {}
style.syntax["normal"] = { common.color "#e1e1e6" }
style.syntax["symbol"] = { common.color "#e1e1e6" }
style.syntax["comment"] = { common.color "#676b6f" }
style.syntax["keyword"] = { common.color "#E58AC9" }
style.syntax["keyword2"] = { common.color "#F77483" }
style.syntax["number"] = { common.color "#FFA94D" }
style.syntax["literal"] = { common.color "#FFA94D" }
style.syntax["string"] = { common.color "#f7c95c" }
style.syntax["operator"] = { common.color "#93DDFA" }
style.syntax["function"] = { common.color "#93DDFA" }

return style
