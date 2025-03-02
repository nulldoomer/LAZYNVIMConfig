return {
  "NvChad/nvim-colorizer.lua",
  lazy = false, -- Cargar inmediatamente
  config = function()
    require("colorizer").setup({
      "*", -- Habilita para todos los archivos
    })
  end,
}
