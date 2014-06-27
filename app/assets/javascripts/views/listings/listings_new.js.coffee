class BackbonerailsApp.Views.ListingsNew extends Backbone.View
  template: JST['listings/new']
  
  initialize: ->
    @model.loadFeatures()
    @collection.on('reset', @render, this)
    
  events:
    "click .button": "saveListing"


  saveListing: (e) ->
    e.preventDefault()
    sFilter = ""
    $('input[name="listing[feature_ids][]"]:checked').each ->
      sFilter = sFilter+ ((if @checked then $(this).val()+"," else ""))
    @model.set name: @$('#listing_name').val()
    @model.set headline: @$('#listing_headline').val()
    @model.set description: @$('#listing_description').val()
    @model.save({"name": @$el.find("#listing_name").val(),"headline": @$el.find("#listing_headline").val(),"description": @$el.find("#listing_description").val(), "feature_ids": sFilter})
    console.log("succeess")
    console.log(@collection.length)
    Backbone.history.navigate('/#listings', {trigger: true})


  render: ->
    @features = new BackbonerailsApp.Collections.Features()
    @features.fetch().done => 
      $(@el).html(@template(listing: @model, features: @features))
    this