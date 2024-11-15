return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'navarasu/onedark.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    require('onedark').setup {

      style = 'darker',
      transparent = true, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },
      -- Custom Highlights --
      colors = {
        orange = '#ffa500',
        yellow = '#ecff00',
        purple = '#ba00ff ',
        cyan = '#00ffff',
        bracket = '#FF4500', -- Gold for brackets
        parenthesis = '#FF4500', -- Tomato color for parentheses
        string = '#39FF14',
      },
      highlights = {
        ['@variable'] = { fg = '$cyan' },
        ['@paranthese'] = { fg = '$yellow' },
        ['@function'] = { fg = '$purple' },
        ['@punctuation.delimiter'] = { fg = '$parenthesis' }, -- General punctuation highlight
        ['@punctuation.bracket'] = { fg = '$bracket' }, -- Specific to brackets
        ['@string'] = { fg = '$string' },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- da:rker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    }
    require('onedark').load()
    vim.cmd.colorscheme 'onedark'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
