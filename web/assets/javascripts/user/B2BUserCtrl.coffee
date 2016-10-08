class B2BUserCtrl
  constructor: (@$cookieStore, @$log, @$location,  @UserService) ->
      @$log.debug "B2B UserCtrl created"
      this.loadMap()

  loadMap: () ->
    @$log.debug "Load Map data"
    mapboxgl.accessToken = 'pk.eyJ1Ijoia296bG93c3QiLCJhIjoiY2lzeGVlNTFnMDAyeTJ0cGR2N3czaXN3ciJ9.fmbuFc5B24xKGiiLJ7mrpA';
    map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v9',
      center: [-74.50, 40],
      zoom: 9
    });

controllersModule.controller('B2BUserCtrl', ['$cookieStore', '$log', '$location', 'UserService', B2BUserCtrl])
