class AWSService
  constructor: (@$log, @$http, @$q, @$cookieStore, @$window) ->
    @$log.debug "constructing AWSService"
    @venuesDb = {}
    @venuesDb["1"] = '{
      "name":"REDGRAPE",
      "info":"Located near the Jingan Temple, the WeWork Yanping Lu coworking space has a rich culture and history.",
      "address":"1355 Market Street, Suite 900, San Francisco, CA 94103",
      "type":"co-working space"
    }'
    @venuesDb["2"] = '{
      "name":"We Work",
      "about":"Located near the Jingan Temple, the WeWork Yanping Lu coworking space has a rich culture and history. It also offers easy access to two main Metro stops, Line 2 and Line 7, and is surrounded by restaurants offering traditional Shanghai cuisine. Members can enjoy a giant fish tank wall, large meeting rooms, and office space flooded with sunlight thanks to the floor-to-ceiling windows.",
      "address":"1355 Market Street, Suite 900, San Francisco, CA 94103",
      "type":"co-working space",
      "contact":{
        "name":"Tomasz",
        "phone":"1234567",
        "wechat":"kozlowst",
        "skype":"kozlow111"
      },
      "venue":{
        "capacity":"400",
        "confRooms":"20",
        "desks":"300",
        "offices":"30"
      },
      "amenities":{
        "wifi":"yes",
        "coffee":"yes",
        "printer":"yes",
        "onsiteSupport":"yes",
        "showers":"no"
      },
      "directions":{
        "info":"Located near the Jingan Temple, the WeWork Yanping Lu coworking space has a rich culture and history. It also offers easy access to two main Metro stops, Line 2 and Line 7",
        "bus":"Line 230, Liu Chan Road",
        "metro":"Line 2, station Liu Chan, Exit A1",
        "coordinates":{
          "longitude":"38.913184",
          "latitude":"-77.036982"
        }
      },
      "offer":[
          {
            "type":"Conference Room",
            "capacity":"16",
            "amenities":{
              "projector":"yes",
              "whiteboard":"no",
              "smartboard":"yes",
              "camera":"yes"
            },
            "pricing":[
              {
                "price":"200CNY",
                "unit":"per hour",
                "comment":"minimum booking 1 hour"
              },
              {
                "price":"500CNY",
                "unit":"per day"
              }
            ]
          },
          {
            "type":"Desk",
            "capacity":"1",
            "amenities":{
              "whiteboard":"yes",
              "deskLamp":"yes"
            },
            "pricing":[
              {
                "price":"200CNY",
                "unit":"per day",
                "comment":"minimum booking 1 day"
              },
              {
                "price":"1100CNY",
                "unit":"per month"
              }
            ]
          }
        ]
    }'

  events: () ->
    @$log.debug "Load events"
    '{
      "data":
      [
        {
          "date":"MONDAY, OCTOBER 13",
          "eventList":
          [
            {

              "id":"1",
              "time":"6:00pm",
              "title":"UX desing principals",
              "description":"Come and find your future co-founers and investors!!!",
              "venueName":"Simple Work",
              "venueId":"1",
              "venueAddress":"555 Kings Road, Suite 900, New York, NJ 33333"
            },
            {
              "id":"2",
              "time":"7:00pm",
              "title":"Functional Programming",
              "description":"Come and find your future co-founers and investors!!!",
              "venueName":"We Work",
              "venueId":"2",
              "venueAddress":"1355 Market Street, Suite 900, San Francisco, CA 94103"
            }
          ]
        },
        {
          "date":"Tuesday, OCTOBER 14",
          "eventList":
          [
            {

              "id":"1",
              "time":"6:00pm",
              "title":"UX desing principals",
              "description":"Come and find your future co-founers and investors!!!",
              "venueName":"Simple Work",
              "venueId":"3",
              "venueAddress":"555 Kings Road, Suite 900, New York, NJ 33333"
            },
            {
              "id":"2",
              "time":"7:00pm",
              "title":"Functional Programming",
              "description":"Come and find your future co-founers and investors!!!",
              "venueName":"We Work",
              "venueId":"2",
              "venueAddress":"1355 Market Street, Suite 900, San Francisco, CA 94103"
            }
          ]
        }
      ]
    }'

  venues: () ->
    @$log.debug "Load venues"
    '{
      "data":
      [
        {
          "id":"2",
          "name":"REDGRAPE",
          "info":"Located near the Jingan Temple, the WeWork Yanping Lu coworking space has a rich culture and history.",
          "address":"1355 Market Street, Suite 900, San Francisco, CA 94103",
          "type":"co-working space"
        }
      ]
    }'

  venue: () ->
    @$log.debug "Load venue id:" + @$window.sessionStorage.venueId + " json: " + @venuesDb[@$window.sessionStorage.venueId]
    JSON.parse(@venuesDb[@$window.sessionStorage.venueId])

  storeVenue: (id) ->
    @$window.sessionStorage.venueId = id
    @$log.debug "Venue ID: " + @$window.sessionStorage.venueId + "STORED in stervice"

servicesModule.service('AWSService', ['$log', '$http', '$q', '$cookieStore', '$window', AWSService])
