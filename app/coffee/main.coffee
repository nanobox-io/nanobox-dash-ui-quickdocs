example = require 'jade/example'

class Quickdocs

  constructor: ($el) ->
    data  = { message: 'Live long and prosper.', source:'(See app/coffee/main.coffee)' }
    $node = $ example( data )
    $el.append $node

window.nanobox ||= {}
nanobox.Quickdocs = Quickdocs
