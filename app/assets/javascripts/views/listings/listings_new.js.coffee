class BackbonerailsApp.Views.ListingsNew extends Backbone.View
  template: JST['listings/new']
  
  initialize: ->
<<<<<<< HEAD
    @model.loadFeatures()
    @collection.on('reset', @render, this)
   
=======
<<<<<<< HEAD
    @model.loadFeatures()
    @collection.on('reset', @render, this)
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    
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
<<<<<<< HEAD
    $("#modal-window").modal('hide');
    $('.alert').alert()
    $('.alert').css('display', 'block')
    $('.message').html("Listing Created Succeessfully")
    window.issues.fetch({reset:true})    
=======
    Backbone.history.navigate('/#listings', {trigger: true})
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49


  render: ->
    @features = new BackbonerailsApp.Collections.Features()
    @features.fetch().done => 
      $(@el).html(@template(listing: @model, features: @features))
<<<<<<< HEAD
=======
=======
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
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    this
