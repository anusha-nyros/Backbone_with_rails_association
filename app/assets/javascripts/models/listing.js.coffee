class BackbonerailsApp.Models.Listing extends Backbone.Model
<<<<<<< HEAD
  urlRoot: "/listings"

  loadFeatures: ->
     @features = new BackbonerailsApp.Collections.Features([], {listing_url: @url()});

  loadContacts: ->
    @contacts = new BackbonerailsApp.Collections.Contacts([], {listing_url: @url()});
=======
   urlRoot: '/listings'
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
