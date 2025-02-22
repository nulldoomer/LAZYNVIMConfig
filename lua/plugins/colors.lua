function ColorMyPencils(color)
  color = color or "kanagawa-dragon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- Asegura que se cargue inmediatamente
    priority = 1000, -- Se ejecuta antes que otros esquemas de colores
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = false },
        statementStyle = { bold = true },
        transparent = true, -- Fondo transparente
        dimInactive = false,
        theme = "dragon", -- Usa el tema "dragon"
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = "none" }, -- Fondo transparente para ventanas flotantes
            FloatBorder = { bg = "none" }, -- Fondo transparente para los bordes de las ventanas flotantes
            FloatTitle = { bg = "none" }, -- Fondo transparente para los títulos de las ventanas flotantes

            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Colores personalizados para el modo oscuro

            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Colores personalizados para el plugin Lazy
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Colores personalizados para el plugin Mason

            TelescopeTitle = { fg = theme.ui.special, bold = true }, -- Colores personalizados para los títulos de Telescope
            TelescopePromptNormal = { bg = theme.ui.bg_p1 }, -- Colores personalizados para el prompt de Telescope
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 }, -- Colores personalizados para los bordes del prompt de Telescope
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Colores personalizados para los resultados de Telescope
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 }, -- Colores personalizados para los bordes de los resultados de Telescope
            TelescopePreviewNormal = { bg = theme.ui.bg_dim }, -- Colores personalizados para la vista previa de Telescope
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim }, -- Colores personalizados para los bordes de la vista previa de Telescope

            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Colores personalizados para el menú emergente
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Colores personalizados para el ítem seleccionado en el menú emergente
            PmenuSbar = { bg = theme.ui.bg_m1 }, -- Colores personalizados para la barra de desplazamiento del menú emergente
            PmenuThumb = { bg = theme.ui.bg_p2 }, -- Colores personalizados para el pulgar de la barra de desplazamiento del menú emergente
          }
        end,
      })
      ColorMyPencils()
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true, -- No se carga hasta que se use
    config = function()
      vim.g.gruvbox_material_background = "medium" -- Opciones: "soft", "medium", "hard"
    end,
  },
}
