class Backsource.Views.LinksIndex extends Backbone.View
  template: JST['links/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(links: @collection))
    this
