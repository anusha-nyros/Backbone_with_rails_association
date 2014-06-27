class BackbonerailsApp.Routers.Contacts extends Backbone.Router

 routes:
    'contacts/new': 'create'
    'contacts': 'index'
    '': 'index'
    ':id': 'show'
    ':id/edit' : 'edit'

 initialize: ->
    @collection = new BackbonerailsApp.Collections.Contacts()
    @model = new BackbonerailsApp.Models.Contact()

  index: ->
    @collection.fetch().done =>
      view = new BackbonerailsApp.Views.ContactsIndex(collection: @collection)
      $('#container').html(view.render().el)

  show: (id)->
    @collection.fetch().done =>
      @contact = @collection.get(id)
      view = new BackbonerailsApp.Views.ContactsShow(model: @contact, collection: @collection)
      $(".indexlisting").html(view.render().el)

  edit: (id)->
    @collection.fetch().done =>
      @contact = @collection.get(id)
      view = new BackbonerailsApp.Views.ContactsEdit(model: @contact, collection: @collection)
      $(".indexlisting").html(view.render().el)

  create: ->
    @collection.fetch().done =>
      @contact = new BackbonerailsApp.Models.Contact()
      view = new BackbonerailsApp.Views.ContactsNew(model: @contact, collection: @collection)
      $(".indexlisting").html(view.render().el)

  destroy: (id)->
    @collection.fetch().done =>
      @contact = @collection.get(id)
      @contact.destroy()
