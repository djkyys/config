return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "pdf"
      -- Optional: disable some features for better performance
      vim.g.vimtex_indent_enabled = 0
      vim.g.vimtex_syntax_enabled = 1
      -- Set up key mappings (optional)
      vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<cr>", { desc = "Compile LaTeX" })
      vim.keymap.set("n", "<leader>lv", "<cmd>VimtexView<cr>", { desc = "View PDF" })
      vim.keymap.set("n", "<leader>lc", "<cmd>VimtexClean<cr>", { desc = "Clean aux files" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              build = {
                executable = "latexmk",
                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                onSave = true,
              },
              forwardSearch = {
                executable = "pdf", -- or "skim" on macOS
                args = { "%p" },
              },
            },
          },
        },
      },
    },
  },
}
