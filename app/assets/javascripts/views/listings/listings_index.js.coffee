class BackbonerailsApp.Views.ListingsIndex extends Backbone.View
  template: JST['listings/index']
  
  initialize: ->
<<<<<<< HEAD
    @collect = new BackbonerailsApp.Collections.Listings()
    

  events:
    'click .delete': 'destroyListing'
    'click .contact': 'newContact'
    'click .contactlist': 'contactList'

  contactList: (id)->
     id.preventDefault()
     list = id.currentTarget.id
     $('.'+list).toggle()
=======
    @collect = new BackbonerailsApp.Collections.Listings();
    @listing = new BackbonerailsApp.Models.Listing();

  events:
    'click .show': 'showListing'
    'click .edit': 'editListing'
    'click .delete': 'destroyListing'
    'click .new': 'newListing'

  showListing: (ids) ->
     console.log(ids)
     app = new BackbonerailsApp.Routers.Listings(model: @model);
     app.navigate('#listings/'+ids.currentTarget.id, true)

  editListing: (ids) ->
     app = new BackbonerailsApp.Routers.Listings(model: @model);
     app.navigate('#listings/'+ids.currentTarget.id+'/edit', true)
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee

  destroyListing: (ids) ->
     @collect.fetch().done =>
       @listing = @collect.get(ids.currentTarget.id)
       @listing.destroy()
<<<<<<< HEAD
       Backbone.history.navigate('#/listings', {trigger: true})

  newContact: (ids) ->
    @collect.fetch().done =>
      @model = @collect.get(ids.currentTarget.id)
      @model.loadContacts()
      do (@model) ->
        @model.contacts.fetch success: ->
          contactsView = new BackbonerailsApp.Views.ContactsIndex(contacts: @model.contacts)
          $("#list_contacts").html(contactsView.render().el)

           # We should probably only render this once instead of each load
          @contact = new BackbonerailsApp.Models.Contact()
          newContactsView = new BackbonerailsApp.Views.ContactsNew(model: @model, collection: @model.contacts)
          $("#container").html(newContactsView.render().el)

      @model.contacts.fetch()
=======
       Backbone.history.navigate("", {trigger: true})

  newListing: (e) ->
     e.preventDefault()
     app = new BackbonerailsApp.Routers.Listings(model: @listing, feature: @feature);
     app.navigate('#listings/new', true)
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee

  render: ->
    $(@el).html(@template(listings: @collection))
    this
