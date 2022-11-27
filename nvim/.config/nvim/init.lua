-- Colorscheme
SCHEME = os.getenv("SysTheme"):lower() or "dark"

-- Treesitter parsers
PARSERS = { "python", "lua", "c", "cpp", "rust", "julia", "yaml", "json", "toml" }

-- Plugin Manager
PLUGINS = { "packer" }

-- Paths
HOME_PATH = vim.fn.expand("$HOME")
CONFIG_PATH = vim.fn.stdpath("config")
PACKER_PATH = vim.fn.stdpath("data") .. "\\site\\pack\\packer"

-- Linting icons
ICON_ERROR = "E"
ICON_WARN = "W"
ICON_INFO = "I"
ICON_HINT = "H"

-- Improve startuptime using impatient
require("user.plugins.config.impatient")

-- Configuration files
require("user.autocmds")
require("user.options")
require("user.utils")
require("user.mappings")
require("user.plugins")
