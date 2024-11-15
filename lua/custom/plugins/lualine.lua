return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true, -- Enables icons
        theme = 'onedark', -- Set the theme (use any supported theme)
        component_separators = '|', -- Separator between components
        section_separators = '', -- Separator between sections
        disabled_filetypes = {}, -- Filetypes to disable lualine for
        always_divide_middle = true, -- Ensure the statusline is always divided
      },
      sections = {
        lualine_a = { 'mode' }, -- Current mode (normal, insert, etc.)
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' }, -- Current file name
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' }, -- Progress (percentage through the file)
        lualine_z = { 'location' }, -- Line and column number
      },
      inactive_sections = {
        lualine_a = {}, -- Empty inactive sections
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {}, -- Optional tabline configuration
      extensions = { 'nvim-tree' }, -- Extensions for file explorer or other plugins
    }
  end,
}
