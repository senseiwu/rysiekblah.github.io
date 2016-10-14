class B2BUserCtrl
  constructor: (@$cookieStore, @$log, @$location, @$document,  @UserService) ->
      @$log.debug "B2B UserCtrl created"
      @$location.path("/")

      $('.carousel').carousel
        interval: 5000

      this.loadMap()
      this.initGallery()

      @$document.find("#manuTabsMP").click (e) ->
        e.preventDefault()
        $(this).tab('show')

  loadMap: () ->
    @$log.debug "Load Map data"
    L.mapbox.accessToken = 'pk.eyJ1Ijoia296bG93c3QiLCJhIjoiY2lzeGVlNTFnMDAyeTJ0cGR2N3czaXN3ciJ9.fmbuFc5B24xKGiiLJ7mrpA';
    mapLeaflet = L.mapbox.map('map', 'mapbox.streets', {
      scrollWheelZoom: false
    }).setView([38.913184, -77.031952], 16);
    L.marker([38.913184, -77.031952]).addTo(mapLeaflet);
    # L.marker([38.913184, -77.031952]).addTo(mapLeaflet);
    # L.marker([37.775408, -122.413682]).addTo(mapLeaflet);

    # mapboxgl.accessToken = 'pk.eyJ1Ijoia296bG93c3QiLCJhIjoiY2lzeGVlNTFnMDAyeTJ0cGR2N3czaXN3ciJ9.fmbuFc5B24xKGiiLJ7mrpA';
    # map = new mapboxgl.Map({
    #   container: 'map',
    #   style: 'mapbox://styles/mapbox/streets-v9',
    #   center: [19.786726, 50.177505],
    #   zoom: 16
    # });
    # L.marker([19.786726, 50.177505]).addTo(map)

  initGallery: () ->
    @$log.debug "inita gallery"
    @$document.find('#gallery').poptrox({
        baseZIndex: 20000,
        fadeSpeed: 300,
        overlayOpacity: 0,
        selector: 'g',
        popupCloserText: '',
        popupHeight: 150,
        popupLoaderText: '',
        popupSpeed: 300,
        popupWidth: 150,
        usePopupCaption: true,
        usePopupCloser: true,
        usePopupDefaultStyling: false,
        usePopupForceClose: true,
        usePopupLoader: true,
        usePopupNav: true,
        windowMargin: 50
		});

controllersModule.controller('B2BUserCtrl', ['$cookieStore', '$log', '$location', '$document', 'UserService', B2BUserCtrl])
