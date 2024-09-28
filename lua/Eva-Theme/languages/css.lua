---@type StaticImporter
local function css(h)
  h:map_token('parameter', '@variable.css')
    :map_token('instanceReference', '@keyword.modifier.css')
    :map_token('text', '@type.css')
    :map_token('NONE', '@property.css', function(palette, _)
      return { fg = palette.escape }
    end)
    :map_token('NONE', '@operator.css', function(palette, _)
      return { fg = palette.punctuation }
    end)
end

return css
