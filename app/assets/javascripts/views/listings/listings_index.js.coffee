class BackbonerailsApp.Views.ListingsIndex extends Backbone.View
  template: JST['listings/index']
  
  initialize: ->
    @collect = new BackbonerailsApp.Collections.Listings()
    

  events:
    'click .delete': 'destroyListing'
    'click .contact': 'newContact'
    'click .contactlist': 'contactList'

  contactList: (id)->
     id.preventDefault()
     list = id.currentTarget.id
     $('.'+list).toggle()

  destroyListing: (ids) ->
     @collect.fetch().done =>
       @listing = @collect.get(ids.currentTarget.id)
       @listing.destroy()
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

  render: ->
    $(@el).html(@template(listings: @collection))
    this
