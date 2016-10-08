class B2BUserCtrl
  constructor: (@$cookieStore, @$log, @$location,  @UserService) ->
      @$log.debug "B2B UserCtrl created"

controllersModule.controller('B2BUserCtrl', ['$cookieStore', '$log', '$location', 'UserService', B2BUserCtrl])
