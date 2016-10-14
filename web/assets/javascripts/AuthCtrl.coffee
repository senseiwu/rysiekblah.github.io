class AuthCtrl
  constructor: (@$cookieStore, @$log, @$location, @UserService) ->
      @$log.debug "Cookies Controlles created"

  logoff: () ->
    @$log.debug "logoff"
    @$location.path("/")
    @$cookieStore.remove('userdata')
    @UserService.auth(undefined)

  isActive: () ->
    @$log.debug "is active: " + !angular.isUndefined(@UserService.user)
    !angular.isUndefined(@UserService.user)

controllersModule.controller('AuthCtrl', ['$cookieStore', '$log', '$location', 'UserService', AuthCtrl])
