---@alias SyntaxType 'declarative' | 'text' | 'func' | 'property' | 'primitive' | 'type' | 'digit' | 'parameter' | 'comment' | 'variable' | 'instanceReference' | 'logical' | 'operator'
---@alias Palette { name: string, text: string, declarative: string, func: string, digit: string, primitive: string, property: string, operator: string, variable: string, logical: string, parameter: string, instanceReference: string, type: string, comment: string }
---@alias ThemeName 'light' | 'light_bold' | 'light_italic' | 'light_italic_bold' | 'dark' | 'dark_bold' | 'dark_italic' | 'dark_italic_bold'
---@alias Theme table<ThemeName, Palette>
---@alias Selector fun(palette: Palette, as: SyntaxType): TokenStyle
---@alias Import fun(self, h: StaticImporter): HighlightRegistartionWithFunction
---@alias StaticImporter fun(h: HighlightRegistartionWithFunction)
---@alias Match fun(self, syntax: SyntaxType, scope: string | string[], selector?: Selector): HighlightRegistartionWithFunction
---@alias HighlightCreator fun(self, palette: Palette): table<string, TokenStyle>

---@alias HighlightRegistartion table<SyntaxType, { scope: string, selector?: Selector }[]>
---@alias HighlightRegistartionWithFunction { match: Match, import: Import, highlight_groups: HighlightCreator }

---@class TokenStyle
---@field fg? string #RRGGBB
---@field bg? string #RRGGBB
---@field sp? string #RRGGBB
---@field blend? integer 1 to 100
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdouble? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field nocombine? boolean
---@field link? string
---@field default? {}
---@field ctermfg? string
---@field ctermbg? string
---@field cterm? {}
---@field force? boolean if true force update the highlight group when it exists.
---@field altfont? boolean enable alternative font in nvim 0.9
