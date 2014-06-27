class BackbonerailsApp.Models.Listing extends Backbone.Model
  urlRoot: "/listings"

  loadFeatures: ->
     @features = new BackbonerailsApp.Collections.Features([], {listing_url: @url()});

  loadContacts: ->
    @contacts = new BackbonerailsApp.Collections.Contacts([], {listing_url: @url()});
