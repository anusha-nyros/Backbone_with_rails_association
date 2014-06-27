class BackbonerailsApp.Views.FeaturesEdit extends Backbone.View
  template: JST['features/edit']

  initialize: ->
    @collection.on('reset', @render, this)

  events:
    "click .button": "updateFeature"

  updateFeature: (e) ->
    e.preventDefault()
    alert(@$('#feature_name').val())
    @model.set name: @$('#feature_name').val()
    @model.save({"name": @$el.find("#feature _name").val()})
    console.log("succeess")
    console.log(@collection.length)
    Backbone.history.navigate('/#features', {trigger: true})

  render: ->
    $(@el).html(@template(feature: @model))
    this
