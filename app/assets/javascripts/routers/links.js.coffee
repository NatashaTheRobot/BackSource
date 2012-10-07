class Backsource.Routers.Links extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Backsource.Collections.Links()
    @collection.reset($('#container').data('links'))

  index: ->
    view = new Backsource.Views.LinksIndex(collection: @collection)
    $('#container').html(view.render().el)
