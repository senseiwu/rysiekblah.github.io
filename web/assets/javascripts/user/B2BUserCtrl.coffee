class B2BUserCtrl
  constructor: (@$cookieStore, @$log, @$location, @$document,  @AWSService) ->
      @$log.debug "B2B UserCtrl created"
      @venue = @AWSService.venue()

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

  # use it when getting data from lambda - promise
  # venueData: () ->
  #   @venue = @AWSService.venue()

controllersModule.controller('B2BUserCtrl', ['$cookieStore', '$log', '$location', '$document', 'AWSService', B2BUserCtrl])
