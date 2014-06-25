class BackbonerailsApp.Views.ListingsNew extends Backbone.View
  template: JST['listings/new']
  
  initialize: ->
    @collection.on('reset', @render, this)
    
    success: -> 
      console.log("succeess")
      Backbone.history.navigate("/listings", {trigger: true})

  events:
    "click .button": "saveListing"

  saveListing: (e) ->
    e.preventDefault()
    @model.set name: @$('#listing_name').val()
    @model.set headline: @$('#listing_headline').val()
    @model.set description: @$('#listing_description').val()
    @model.save({"name": @$el.find("#listing_name").val(),"headline": @$el.find("#listing_headline").val(),"description": @$el.find("#listing_description").val()})
    console.log("succeess")
    console.log(@collection.length)
    Backbone.history.navigate("/listings", {trigger: true})


  render: ->
    $(@el).html(@template(listing: @model, feature: @feature))
    this
