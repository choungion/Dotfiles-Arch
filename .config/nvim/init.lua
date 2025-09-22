vim.cmd('colorscheme nordic')
require("plugins")
-- The Packer configuration must come first.
return require('packer').startup(function(use)
  -- This line is required for Packer to manage itself.
  use("wbthomason/packer.nvim")
  
  -- List the theme here so Packer can manage it.
  use 'AlexvZyl/nordic.nvim'
end)

-- The colorscheme command must be at the end,
-- after the Packer block is finished.
