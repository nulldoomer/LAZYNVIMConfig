return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<leader>t]], -- Atajo para abrir la terminal flotante
      shade_filetypes = {},
      shading_factor = 2,
      direction = "float", -- Flotante
      close_on_exit = true,
      shell = "powershell.exe", -- Usa la shell por defecto
    })
  end,
}
