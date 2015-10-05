sass = require 'node-sass'

module.exports = class NodeSassCompiler
  brunchPlugin: yes
  type: 'stylesheet'
  extension: 'sass'
  pattern: /s[ac]ss$/

  constructor: (config) ->
    @nodeSassConfig = config?.plugins?.sass or {}

  compile: (params, callback) ->
    sass.render
      outputStyle: @nodeSassConfig.outputStyle
      includePaths: @nodeSassConfig.includePaths
      data: params.data
    , (err, res) -> callback(err, data: res.css)
