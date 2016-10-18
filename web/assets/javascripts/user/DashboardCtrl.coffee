class DashboardCtrl

  constructor: (@$log, @$location, @$document, @AWSService) ->
    @$log.debug "Dashboard controller created"
    @events = {}
    @venues = {}
    this.load()
    @$log.debug "Loaded EVENT: " + JSON.stringify(obj) for obj in @events

  load: () ->
    @events = JSON.parse(@AWSService.events()).data
    @venues = JSON.parse(@AWSService.venues()).data

  storeVenueId: (id) ->
    @AWSService.storeVenue(id)

controllersModule.controller('DashboardCtrl', ['$log', '$location', '$document', 'AWSService', DashboardCtrl])
