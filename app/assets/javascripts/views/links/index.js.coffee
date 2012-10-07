class Backsource.Views.LinksIndex extends Backbone.View
  template: JST['links/index']

  events:
    'submit #new_link': 'createLink'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendLink, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendLink)
    this

  appendLink: (link) =>
    view = new Backsource.Views.Link(model: link)
    @$('#links').append(view.render().el)

  createLink: (link) ->
    link.preventDefault()
    attributes = title: $('#new_link_title').val(), url: $('#new_link_url').val()
    @collection.create attributes,
      wait: true
      success: ->
        $('#new_link')[0].reset()
        $('.alert-box.alert').remove() if $('.alert-box.alert')
      error: @handleError

  handleError: (link, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attributes, messages of errors
        $("#notice").html("<div class='alert-box alert'>#{attributes} #{messages}</div>")

