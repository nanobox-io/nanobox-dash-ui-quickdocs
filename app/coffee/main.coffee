component = require 'jade/component'

#
class Quickdocs

  # closed by default
  _is_open = false

  #
  constructor: ($el, @options={}) ->

    # set defaults
    if !@options.logsEnabled then @options.logsEnabled = false
    if !@options.loglevel then @options.logLevel = "INFO"

    #
    @$node = $(component())
    $el.append @$node

  #
  build : () ->

    # add svg icons
    castShadows(@$node)

    # add close actions; this needs to be done after shadows have been cast simply
    # because the element we're selecting is added by that library
    @$node.find('#close-x').click (e) => @toggle()

  # activate andy quickdoc toggles on the page
  activateToggles : () -> $("#quickdoc-toggle").click (e) => @load($(e.currentTarget).data("path"))

  # this is called from the #qd-toggle buttons, with bound qd_options { body:*, title:*, [ section:* ]}
  load : (path) ->

    # clean up any potential previous fails
    @$node.removeClass("failed")
    if @$failed then @$failed.remove()

    # attempt to get the quickdoc
    $.ajax(
      url: "#{@options.host}#{path}"

    # show the quickdoc
    ).done( (data) =>
      @$node.find(".title").html(data.title)
      @$body = @$node.find(".body").html(data.body)

      # load any svg icons that are in the body
      castShadows(@$body)

    # the quickdoc failed to load
    ).fail( =>
      @$node.addClass("failed")
      @$failed = $("<p>Unable to load quickdoc, please try again. If the problem persists, please <a href=''>let us know</a></p>")
      @$node.append(@$failed)
    )

    # open it if it's not already, otherwise the new content will just be loaded
    # above
    if !@_is_open then @open()

  # opens the component
  open : () ->
    @$node.removeClass("closed").addClass("open")
    @_is_open = true

  # closes the component
  close : () ->
    @$node.removeClass("open").addClass("closed")
    @_is_open = false

  # toggles the state of the component
  toggle : () -> if @_is_open then @close() else @open()

#
window.nanobox ||= {}
nanobox.Quickdocs = Quickdocs
