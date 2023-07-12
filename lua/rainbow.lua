--[[
   Copyright 2023
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
--]]

local queries = require("nvim-treesitter.query")

local M = {}

function M.init()
    require("nvim-treesitter").define_modules({
        rainbow = {
            module_path = "rainbow.internal",
            is_supported = function(lang)
                return queries.get_query(lang, "parens") ~= nil
            end,
            extended_mode = true,
            colors = {
                "#98c379",
                "#61afef",
                "#e5c06b",
                "#c678dd",
            },
            termcolors = {
                "Green",
                "Cyan",
                "Yellow",
                "Magenta",
            },
        },
    })
end

return M
