local util = require'arc.util'

local M = {}

local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.load()
  -- COLOR DEFINITIONS
  local bg_dark        = '#1c2433'
  local bg             = '#1c2433'
  local bg_light       = '#444c5b'
  local bg_lighter     = '#444c5b'
  local grey           = '#a1adb7'
  local grey_dark      = '#444c5b'
  local red            = '#FF738A'
  local heavy_red      = '#FF738A'
  local green          = '#3CEC85'
  local green_high     = '#3CEC85'
  local blue           = '#69C3FF'
  local blue_light     = '#69C3FF'
  local yellow         = '#EACD61'
  local yellow_light   = '#EACD61'
  local orange         = '#FF955C'
  local orange_light   = '#FF955C'
  local purple         = '#B78AFF'
  local cyan_dark      = '#77aed7'
  local cyan           = '#22ECDB'
  local fg             = '#c3cfd9'
  local fg_light       = '#ABB7C1'
  local fg_dark        = '#a1adb7'
  local hollow         = '#444c5b'
  local hollow_lighter = '#444c5b'
  local white          = '#c3cfd9'

  local editor_syntax = {
    Normal = { fg = fg_light, bg = bg_dark },
    CursorLine = { bg = bg },
    Cursor = { fg = bg_dark, bg = yellow },
    Visual = { bg = hollow_lighter },
    LineNr = { fg = fg_dark },
    CursorLineNr = { fg = fg },
    MatchParen = { fg = cyan, bold = true },
    Comment = { fg = fg_dark, italic = true },
    Keyword = { fg = heavy_red },
    Identifier = { fg = heavy_red },
    Function = { fg = blue, italic = true },
    Constant = { fg = cyan },
    String = { fg = green },
    Number = { fg = orange },
    Type = { fg = yellow },
    Special = { fg = blue },
    DiagnosticError = { fg = red, bold = true, bg = util.darken(red, 0.1) },
    DiagnosticWarn = { fg = orange, bold = true, bg = util.darken(orange, 0.1) },
    DiagnosticInfo = { fg = yellow, bold = true, bg = util.darken(yellow, 0.1) },
    DiagnosticHint = { fg = green, bold = true, bg = util.darken(green, 0.1) },
  }

  for group, opts in pairs(editor_syntax) do
    highlight(group, opts)
  end
end

return M
