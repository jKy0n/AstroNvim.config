return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- add any opts here
    -- ordem = prioridade. O primeiro da lista vira padrão; use <leader>a? para trocar em runtime
    providers = {
      "openai:gpt-4o-mini",   -- ChatGPT
      "copilot:gpt-4o"        -- Copilot como fallback
    },
    -- Configurações específicas de cada provedor
    openai = {
      model = "gpt-4o-mini",
      timeout = 60000,
      -- se preferir não usar variável de ambiente:
      -- api_key_name = "OPENAI_API_KEY",
    },
    copilot = {
      model = "gpt-4o",
      timeout = 60000,
      -- Avante busca o token no arquivo hosts.json/apps.json gerado pelo Copilot :contentReference[oaicite:2]{index=2}
      -- Ou lê GITHUB_TOKEN/COPILOT_API_KEY se definidos
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
