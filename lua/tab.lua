-- [[ tab.lua ]]

-- 文件修改提示
require("bufferline").setup({
    
  options = {

      diagnostics = "nvim_lsp",
      
      offsets = {{
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
      }},
  },
})

-- git 修改提示
require("gitsigns").setup({

  signs = {

      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelet = { text = '='},
      changeddelete = { text = '~' },
  },
})