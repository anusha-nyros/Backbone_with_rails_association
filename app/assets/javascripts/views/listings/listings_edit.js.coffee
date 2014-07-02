class BackbonerailsApp.Views.ListingsEdit extends Backbone.View
 
  template: JST['listings/edit']

  initialize: ->
    @collection.on('reset', @render, this)

  events:
    "click .button": "updateListing"
    "click .back": "backList"

  backList: (e) ->
    e.preventDefault()
    window.issues.fetch({reset:true})    

  updateListing: (e) ->
    e.preventDefault()
    sFilter = ""
    $('input[name="listing[feature_ids][]"]:checked').each ->
      sFilter = sFilter+ ((if @checked then $(this).val()+"," else ""))
    @model.set name: @$('#listing_name').val()
    @model.set headline: @$('#listing_headline').val()
    @model.set description: @$('#listing_description').val()
    @model.save({"name": @$el.find("#listing_name").val(),"headline": @$el.find("#listing_headline").val(),"description": @$el.find("#listing_description").val(),"feature_ids": sFilter })
    $("#modal-window").modal('hide');
    $('.alert').alert()
    $('.alert').css('display', 'block')
    $('.message').html("Listing Updated Succeessfully")
    window.issues.fetch({reset:true})    
    console.log("succeess")
    console.log(@collection.length)
    Backbone.history.navigate('/#listings', {trigger: true})

  render: ->
    @features = new BackbonerailsApp.Collections.Features()
    @features.fetch().done => 
      console.log(@collection)
      $(@el).html(@template(listing: @model, features: @features, feature: @collection))
      $(@el).append(this.afterRender().el);
    this
  
  afterRender: ->
    filter = []
    i = 0
    $('input[name="ft_name"]').each ->
      filter[i++] = $(this).attr('class')
    j=0
    while j < filter.length
      j++
    $('input[name="listing[feature_ids][]"]').each ->
      k = 0
      while k < filter.length
        $(this).prop("checked", true)  if filter[k] is $(this).attr("class")
        k++
