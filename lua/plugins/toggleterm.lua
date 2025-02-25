return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      shading_factor = 2,
      direction = "float",
      close_on_exit = true,
      shell = "powershell.exe",
    })

    -- Mapeo manual solo en Normal y Visual mode
    vim.keymap.set({ "n", "v" }, "<leader>t", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
    vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>:ToggleTerm<CR>]], { noremap = true, silent = true })
  end,
}
