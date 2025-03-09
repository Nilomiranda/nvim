return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "%.git/" },
          hidden = true,
          layout_config = {
            prompt_position = "top", -- Moves the search input to the top
          },
          sorting_strategy = "ascending", -- Ensures items appear from top to bottom
        },
        pickers = {
          find_files = {
            find_command = { "fd", "--type", "f", "--hidden", "--exclude", ".git" },
          }
        }
      })
    end,
  }
  