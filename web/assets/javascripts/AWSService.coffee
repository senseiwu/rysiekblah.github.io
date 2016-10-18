class AWSService
  constructor: (@$log, @$http, @$q, @$cookieStore) ->
    @$log.debug "constructing UserService"

  events: () ->
    @$log.debug "Load events"
    '{
      "data":
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
    }'

  venues: () ->
    @$log.debug "Load venues"

servicesModule.service('AWSService', ['$log', '$http', '$q', '$cookieStore', AWSService])
