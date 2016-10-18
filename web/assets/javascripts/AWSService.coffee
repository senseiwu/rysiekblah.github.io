class AWSService
  constructor: (@$log, @$http, @$q, @$cookieStore) ->
    @$log.debug "constructing UserService"

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
          "name":"REDGRAPE",
          "info":"Located near the Jingan Temple, the WeWork Yanping Lu coworking space has a rich culture and history.",
          "address":"1355 Market Street, Suite 900, San Francisco, CA 94103",
          "type":"co-working space"
        }
      ]
    }'


servicesModule.service('AWSService', ['$log', '$http', '$q', '$cookieStore', AWSService])
