component = require 'jade/component'

#
class Quickdocs

  # constructor
  constructor: ($el, @options) ->

    #
    @$node = $(component())
    $el.append @$node

    # add svg icons
    # castShadows($(".shadow-parent"))

    # closed by default
    @is_open = false

    # add close action
    @$node.find('.close').click (e) => @toggle()

    # add click events to any quickdoc toggles after the page had loaded
    $(document).ready =>
      $("#quickdoc-toggle").click (e) =>
        $target = $(e.currentTarget)
        @load($target.data("path"))

  #
  build : () ->

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
      @$node.find(".body").html(data.body)

    # the quickdoc failed to load
    ).fail( =>
      @$node.addClass("failed")
      @$failed = $("<p>Unable to load quickdoc, please try again. If the problem persists, please <a href=''>let us know</a></p>")
      @$node.append(@$failed)
    )

    # open it if it's not already, otherwise the new content will just be loaded
    # above
    if !@is_open then @open()

  #
  open : () ->
    @$node.removeClass("closed").addClass("open")
    @is_open = true

  #
  close : () ->
    @$node.removeClass("open").addClass("closed")
    @is_open = false

  #
  toggle : () -> if @is_open then @close() else @open()

#
window.nanobox ||= {}
nanobox.Quickdocs = Quickdocs
