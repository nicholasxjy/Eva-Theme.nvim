local dark_base = require('Eva-Theme.palette').dark_base

local eva = {}

eva.normal = {
  a = { fg = dark_base.func, bg = dark_base.background },
  b = { fg = dark_base.operator, bg = dark_base.background },
  c = { fg = dark_base.variable, bg = dark_base.background },
  x = { fg = dark_base.variable, bg = dark_base.background },
  y = { fg = dark_base.logical, bg = dark_base.background },
  z = { fg = dark_base.punctuation, bg = dark_base.background },
}

eva.insert = {
  a = { fg = dark_base.text, bg = dark_base.background },
  z = { fg = dark_base.variable, bg = dark_base.background },
}

eva.visual = {
  a = { fg = dark_base.logical, bg = dark_base.background },
  z = { fg = dark_base.variable, bg = dark_base.background },
}

eva.command = {
  a = { bg = dark_base.warning, fg = dark_base.background },
  b = { bg = dark_base.panelBackground, fg = dark_base.func },
}

eva.replace = {
  a = { bg = dark_base.property, fg = dark_base.background },
  b = { bg = dark_base.panelBackground, fg = dark_base.property },
}

eva.terminal = {
  a = { fg = dark_base.parameter, bg = dark_base.background },
  z = { fg = dark_base.variable, bg = dark_base.background },
}

eva.inactive = {}

return eva
