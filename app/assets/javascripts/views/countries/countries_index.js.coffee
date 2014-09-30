class BackbonerailsApp.Views.CountriesIndex extends Backbone.View

  template: JST['countries/index']

  initialize: ->
    @collection = new BackbonerailsApp.Collections.Countries()
    console.log(@collection)

  events: 
    'change #listing_country_id': 'selectState'

  selectState: (id) ->
    console.log(id)

  render: ->
    @collection.fetch().done =>
      console.log(@collection)
      $(@el).html(@template(countries: @collection))
    this
