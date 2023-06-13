return {
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    -- one dark 主题
    {
        "navarasu/onedark.nvim",
        lazy = false,
        config = function()
            require("user.onedark")
        end,
    },
    -- nightly
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
    },
    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        riority = 1000,
    },
    -- 快捷键查询
    {
        "folke/which-key.nvim",
        lazy = false,
        config = function()
            require("user.which-key")
        end,
    },
    -- 自动保存
    {
        "Pocco81/auto-save.nvim",
        config = function()
            require("user.auto-save")
        end,
    },
    -- 文件管理系统
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for file icons
        tag = "nightly", -- optional, updated every week. (see issue #1193)
        config = function()
            require("user.nvim-tree")
        end,
    },
    -- 文件字母查找
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        config = function()
            require("user.telescope")
        end,
    },
    -- 括号自动补全
    {
        "windwp/nvim-autopairs",
        config = function()
            require("user.nvim-autopairs")
        end,
    },
    -- 自动补全
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "onsails/lspkind-nvim" }, -- 为补全添加类似 vscode 的图标
            { "hrsh7th/vim-vsnip" }, -- vsnip 引擎，用于获得代码片段支持
            { "hrsh7th/cmp-vsnip" }, -- 适用于 vsnip 的代码片段源
            { "hrsh7th/cmp-nvim-lsp" }, -- 替换内置 omnifunc，获得更多补全
            { "hrsh7th/cmp-path" }, -- 路径补全
            { "hrsh7th/cmp-buffer" }, -- 缓冲区补全
            { "hrsh7th/cmp-cmdline" }, -- 命令补全
            { "f3fora/cmp-spell" }, -- 拼写建议
            { "rafamadriz/friendly-snippets" }, -- 提供多种语言的代码片段
            { "lukas-reineke/cmp-under-comparator" }, -- 让补全结果的排序更加智能}}
        },
        config = function()
            require("user.nvim-cmp")
        end,
    },
    -- buffer
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("user.bufferline")
        end,
    },
    -- 颜色高亮
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("user.nvim-treesitter")
        end,
    },
    -- git管理
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("user.gitsigns")
        end,
    },
    -- tmux nvim manager
    {
        "christoomey/vim-tmux-navigator",
        config = function()
            require("user.tmux-navigator")
        end,
    },
}