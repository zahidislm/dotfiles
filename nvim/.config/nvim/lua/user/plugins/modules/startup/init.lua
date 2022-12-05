-- ------------------------------- Packer ------------------------------- --
use({
    "wbthomason/packer.nvim",
})
-- ------------------------------ Impatient ----------------------------- --
use({
    "lewis6991/impatient.nvim",
})
-- ------------------------------- Themes ------------------------------- --
use({
    "EdenEast/nightfox.nvim",
    config = 'require(P_CONFIGS .. "startup.theme")',
})
-- ------------------------------ Telescope ----------------------------- --
use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = {
        { "nvim-lua/plenary.nvim", module = "plenary" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        { "nvim-telescope/telescope-file-browser.nvim" },
        { "desdic/telescope-rooter.nvim" },
        { "stevearc/dressing.nvim" }
    },

    setup = 'require(P_MAPPINGS .. "startup.telescope")',
    config = 'require(P_CONFIGS .. "startup.telescope")'
})
