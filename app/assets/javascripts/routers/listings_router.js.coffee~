class BackbonerailsApp.Routers.Listings extends Backbone.Router
  routes:
    'listings/new': 'create'
    'listings': 'index'
    '.*': 'index'
    'listings/:id': 'show'
    'listings/:id/edit' : 'edit'

  initialize: ->
    @collection = new BackbonerailsApp.Collections.Listings()

  index: ->
    @collection.fetch().done =>
      view = new BackbonerailsApp.Views.ListingsIndex(collection: @collection)
      $('#container').html(view.render().el)

  show: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @collection)
      $(".indexlisting").html(view.render().el)

  edit: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @collection)
      $(".indexlisting").html(view.render().el)

  create: ->
    @collection.fetch().done =>
      @listing = new BackbonerailsApp.Models.Listing
      view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @collection, feature: @feature)
      $(".indexlisting").html(view.render().el)

  destroy: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      @listing.destroy()
