class BackbonerailsApp.Models.Listing extends Backbone.Model
<<<<<<< HEAD
  urlRoot: "/listings"
 
  initialize: ->
     this.set({
             features: new BackbonerailsApp.Collections.Features(this.get('features')),
             contacts: new BackbonerailsApp.Collections.Contacts(this.get('contacts'))
        });
=======
<<<<<<< HEAD
  urlRoot: "/listings"
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49

  loadFeatures: ->
     @features = new BackbonerailsApp.Collections.Features([], {listing_url: @url()});

  loadContacts: ->
    @contacts = new BackbonerailsApp.Collections.Contacts([], {listing_url: @url()});
<<<<<<< HEAD
=======
=======
   urlRoot: '/listings'
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
