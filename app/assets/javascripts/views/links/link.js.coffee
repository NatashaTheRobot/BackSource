class Backsource.Views.Link extends Backbone.View
  template: JST['links/link']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(link: @model))
    this