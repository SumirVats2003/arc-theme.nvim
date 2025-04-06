local util = require'arc.util'

local M = {}

local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.load()
  local bg_dark        = '#1c2433'
  local bg             = '#222B3A'
  local bg_light       = '#2B3444'
  local bg_lighter     = '#3A4353'

  local grey           = '#A1ADB7'
  local grey_dark      = '#5A6570'

  local red            = '#FF738A'
  local heavy_red      = '#D94C5F'

  local green          = '#3CEC85'
  local green_high     = '#26D070'

  local blue           = '#69C3FF'
  local blue_light     = '#9BD7FF'

  local yellow         = '#EACD61'
  local yellow_light   = '#FFF799'

  local orange         = '#FF955C'
  local orange_light   = '#FFB27E'

  local purple         = '#B78AFF'
  local cyan_dark      = '#5CCFE6'
  local cyan           = '#22ECDB'

  local fg             = '#c3cfd9'
  local fg_light       = '#DCE3EB'
  local fg_dark        = '#8B99A5'

  local hollow         = '#3A4353'
  local hollow_lighter = '#4A5463'

  local white          = '#F0F3F5'

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
