class EventCtrl
  constructor: (@$log, @$location, @$document) ->
      @$log.debug "EventCtrl controller created"


controllersModule.controller('EventCtrl', ['$log', '$location', '$document', EventCtrl])
