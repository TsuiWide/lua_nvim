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
    }
}