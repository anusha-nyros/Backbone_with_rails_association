class BackbonerailsApp.Views.StatesIndex extends Backbone.View

  template: JST['states/index']

  initialize: ->
    @collection = new BackbonerailsApp.Collections.States()
    console.log(@collection)

  render: ->
    @collection.fetch().done =>
      console.log(@collection)
      $(@el).html(@template(states: @collection))
    this
