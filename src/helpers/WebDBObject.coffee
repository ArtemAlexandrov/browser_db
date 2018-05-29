export default class WebDBObject

  constructor: (options) ->
    @_beforeInit()
    @_initDefaults()
    @setOptions(options)
    @_initElements()
    @_initEvents()
    @_afterInit()

  setOptions: (options) -> @setOption key, option for key, option of options
  setOption: (key, value) -> this[key] = value

  _beforeInit: ->
  _initDefaults: ->
  _initElements: ->
  _initEvents: ->
  _afterInit: ->

