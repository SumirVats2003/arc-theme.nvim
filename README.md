# 🌈 Arc Theme for Neovim

A minimal and elegant Neovim colorscheme written in Lua.

## 🚀 Installation

### Lazy.nvim
```lua
{
  "SumirVats2003/arc-theme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("arc").load()
  end
}
```

```
use({
  "SumirVats2003/arc-theme.nvim",
  config = function()
    require("arc").load()
  end
})
```
