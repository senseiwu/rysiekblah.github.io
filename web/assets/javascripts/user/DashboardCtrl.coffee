class DashboardCtrl
  constructor: (@$log, @$location, @$document) ->
      @$log.debug "Dashboard controller created"


controllersModule.controller('DashboardCtrl', ['$log', '$location', '$document', DashboardCtrl])
