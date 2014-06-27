class BackbonerailsApp.Views.FeaturesNew extends Backbone.View
  template: JST['features/new']
  
  events:
    "click .button": "saveFeature"

  saveFeature: (e) ->
    e.preventDefault()
    @model.set name: @$('#feature_name').val()
    @model.save({"name": @$el.find("#feature_name").val()})
    console.log("succeess")
    console.log(@collection.length)
    @collection.on('reset', @render, this)
    Backbone.history.navigate('/#listings', {trigger: true})


  render: ->
    $(@el).html(@template(feature: @model))
    this
