local command = require "core.command"
local style = require "core.style"
local keymap = require "core.keymap"

command.add(nil,  {
  -- Reset zoom value
  ["user:zoom-reset"] = function()
    style.fscale = SCALE
    style.set_font()
  end,
  -- Zoom out, limit max font size
  ["user:zoom-in"] = function()
    style.fscale = style.fscale + SCALE / 10
    if style.fscale > SCALE * 3 then
        style.fscale = SCALE * 3
    end
    style.set_font()
  end,
  -- Zoom out, limit min font size
  ["user:zoom-out"] = function()
    style.fscale = style.fscale - SCALE / 10
    if style.fscale < SCALE / 2 then
        style.fscale = SCALE / 2
    end
    style.set_font()
  end,
})

keymap.add {
  ["ctrl+="] = "user:zoom-in",
  ["ctrl+-"] = "user:zoom-out",
  ["ctrl+0"] = "user:zoom-reset",
}
