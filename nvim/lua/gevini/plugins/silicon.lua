return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  main = "nvim-silicon",
  config = function()
    require("nvim-silicon").setup({
      font = "JetBrainsMono Nerd Font",
      theme = "gruvbox-dark",
      background = "#1E1E2E",
      shadow_color = "#181825",

      no_round_corner = true,
      no_line_number = false,
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
          ":t")
      end,
    })
  end,
}
