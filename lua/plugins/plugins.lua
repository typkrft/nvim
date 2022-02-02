-- Bootstrap Packer
-- run `nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'` to install
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  
  -- Packer 
  -- https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'
  
  -- Themer
  -- https://github.com/themercorp/themer.lua
  use({
    "themercorp/themer.lua",
    config = function()
      require("themer").setup({
        colorscheme = "dracula",
        styles = {
	  comment = { style = 'italic' },
          ["function"] = { style = 'italic' }, 
          functionbuiltin = { style = 'italic' }, 
          variable = { style = 'italic' }, 
          variableBuiltIn = { style = 'italic' }, 
          parameter  = { style = 'italic' }, 
        },
      })
    end
    })

  -- Automatically setup configuration 
  if packer_bootstrap then
    require('packer').sync()
  end
end)
