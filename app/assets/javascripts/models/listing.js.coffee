class BackbonerailsApp.Models.Listing extends Backbone.Model
  urlRoot: "/listings"
 
  initialize: ->
     this.set({
             features: new BackbonerailsApp.Collections.Features(this.get('features')),
             contacts: new BackbonerailsApp.Collections.Contacts(this.get('contacts'))
        });

  loadFeatures: ->
     @features = new BackbonerailsApp.Collections.Features([], {listing_url: @url()});

  loadContacts: ->
    @contacts = new BackbonerailsApp.Collections.Contacts([], {listing_url: @url()});

