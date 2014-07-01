class BackbonerailsApp.Routers.Listings extends Backbone.Router
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
 
 routes:
    'new': 'create'
    'listings': 'index'
    '': 'index'
    ':id': 'show'
    ':id/edit' : 'edit'

 initialize: ->
<<<<<<< HEAD
    @issues = new BackbonerailsApp.Collections.Listings()
    #@issues = new BackbonerailsApp.PageableCollectionListings()
 
 index: ->
    @issues.fetch({reset: true}).done =>
      view = new BackbonerailsApp.Views.ListingsIndex(model: @model, collection: @issues)
      $("#container1").append(view.render().$el);

      

 show: (id)->
    @issues.fetch().done =>
      @listing = @issues.get(id)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @issues)
      $("#container").html(view.render().el)

 edit: (id)->
    @issues.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @issues)
      $(".modal-body").html(view.render().el)
      $('#modal-window').modal('show')

 create: (e)->
   @issues.fetch().done =>
     @listing = new BackbonerailsApp.Models.Listing()
     view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @issues)
     $(".modal-body").html(view.render().el)
     $('#modal-window').modal('show')


 destroy: (id)->
=======
    @collection = new BackbonerailsApp.Collections.Listings()
    @collection.fetch()
 
 index: ->
    @collection.fetch().done =>
      view = new BackbonerailsApp.Views.ListingsIndex(model: @model, collection: @collection)
      $('#container').html(view.render().el)

 show: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @collection)
      $("#container").html(view.render().el)

 edit: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @collection)
      $("#container").html(view.render().el)

 create: (e)->
    @listing = new BackbonerailsApp.Models.Listing()
    view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @collection)
    $("#container").html(view.render().el)

 destroy: (id)->
=======
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
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    @collection.fetch().done =>
      @listing = @collection.get(id)
      @listing.destroy()
