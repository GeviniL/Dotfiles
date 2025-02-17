return
{
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
   -- VimTeX configuration goes here
    vim.g.vimtex_view_general_viewer= "zathura"
    vim.g.vitmtex_view_zathura_options = "-reuse-instance"
    vim.g.vimtex_syntax_enabled = 0
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_compiler_progname = 'nvr'
    vim.g.vimtex_cimplier_method = "latexmk"
    vim.g.vimtex_view_forward_search_on_start = false
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",
      callback = 1,
      continuous = 1,
      -- executable = "latexmk",
      hooks = {},
      options = {
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-shell-escape",
      },
    }
  end
}
