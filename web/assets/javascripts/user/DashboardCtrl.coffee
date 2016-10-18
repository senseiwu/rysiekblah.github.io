class DashboardCtrl

  constructor: (@$log, @$location, @$document, @AWSService) ->
    @$log.debug "Dashboard controller created"
    @events = {}
    this.load()
    @$log.debug "Loaded EVENT: " + JSON.stringify(obj) for obj in @events

  load: () ->
    @events = JSON.parse(@AWSService.events()).data

controllersModule.controller('DashboardCtrl', ['$log', '$location', '$document', 'AWSService', DashboardCtrl])
