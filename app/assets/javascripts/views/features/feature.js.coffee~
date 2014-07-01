class BackbonerailsApp.Views.Feature extends Backbone.View

  template: JST['features/feature']

  initialize: ->
    @collection.on('reset', @render, this)

  events:
    "click .save": "updateFeature"

  updateFeature: (e) ->
    e.preventDefault()
    sFilter = ""
    $('input[name="listing[feature_ids][]"]:checked').each ->
      sFilter = sFilter+ ((if @checked then $(this).val()+"," else ""))
    @model.save({"feature_ids": sFilter })
    $("#modal-window").modal('hide');
    $('.alert').alert()
    $('.alert').css('display', 'block')
    $('.message').html("Listing Updated Succeessfully")
    window.issues.fetch({reset:true})    

  render: ->
    @feature = new BackbonerailsApp.Collections.Features()
    @feature.fetch().done =>
      $(@el).html(@template({features: @collection, feature: @feature}))
      $(@el).append(this.afterRender().el);
    this

  afterRender: ->
    filter = []
    i = 0
    $('input[name="ft_name"]').each ->
      filter[i++] = $(this).attr('class')
    j = 0
    while j < filter.length
      j++
    $('input[name="listing[feature_ids][]"]').each ->
      k = 0
      while k < filter.length
        $(this).prop("checked", true)  if filter[k] is $(this).attr("class")
        k++
