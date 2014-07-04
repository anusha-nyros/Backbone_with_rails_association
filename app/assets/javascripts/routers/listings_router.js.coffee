class BackbonerailsApp.Routers.Listings extends Backbone.Router

 routes:
    'listings/new': 'create'
    '/listings': 'index'
    '.*': 'index'
    'listings/:id': 'show'
    'listings/:id/edit' : 'edit'

 #isSignedIn: ->
   # $('body').data('user-signed-in') == "true"

 initialize: ->
    @collection = new BackbonerailsApp.Collections.Listings()
    @model = new BackbonerailsApp.Models.Listing()
    @user = new BackbonerailsApp.Models.User()

  index: ->
   # if @isSignedIn()
      view = new BackbonerailsApp.Views.ListingsIndex(collection: @issues)
    #else
    #  view = new BackbonerailsApp.Views.UsersIndex(model: @user)
    #$('#mainapp').html(view.render().el)


 show: (id)->
    @collection.fetch().done =>
      @listing = window.issues.get(id)
      console.log(@listing)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @collection)
      $("#container").html(view.render().el)

 edit: (id)->
    @collection.fetch().done =>
      @listing = window.issues.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @collection)
      $(".modal-body").html(view.render().el)
      $('#modal-window').modal('show')

 create: (e)->
   @collection.fetch().done =>
     @listing = new BackbonerailsApp.Models.Listing()
     view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @collection)
     $(".modal-body").html(view.render().el)
     $('#modal-window').modal('show')


 destroy: (id)->
    @collection = new BackbonerailsApp.Collections.Listings()
    @collection.fetch().done =>
      @listing = window.issues.get(id)
      @listing.destroy()
