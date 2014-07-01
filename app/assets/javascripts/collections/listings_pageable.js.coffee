class BackbonerailsApp.PageableCollectionListings extends Backbone.PageableCollection
    model: BackbonerailsApp.Models.Listing,
    mode: "server" ,
    url: '/listings' ,
    events: ->
      "click #paginationSelect" : "fetchSelectedData"
   
    
    fetchSelectedData: ->

    state: ->
      pageSize: 5,
      order: 1

    queryParams: ->
      totalPages: null,
      totalRecords: null,
      sortKey: "sort"

    parseState: (resp, queryParams, state, options) ->
      totalRecords: resp.total_pages

    parseRecords: (resp, options) ->
      JSON.parse(resp.listings)
