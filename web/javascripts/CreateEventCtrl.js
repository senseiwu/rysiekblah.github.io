// Generated by CoffeeScript 1.11.1
(function() {
  var CreateEventCtrl;

  CreateEventCtrl = (function() {
    function CreateEventCtrl($log, $location, EventService) {
      this.$log = $log;
      this.$location = $location;
      this.EventService = EventService;
      this.$log.debug("CreateEventCtrl created");
      this.availableColors = ['Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Maroon', 'Umbra', 'Turquoise'];
      this.multipleDemo = {};
      this.multipleDemo.colors2 = ['Blue', 'Red'];
      this.newItemType = 'bill';
      this.event = {};
      this.event["private"] = false;
      ({
        setEventPrivete: function() {
          this.$log.debug("Event private");
          return this.event["private"] = true;
        },
        setEventPublic: function() {
          this.$log.debug("Event public");
          return this.event["private"] = false;
        },
        change: function() {
          return this.$log.debug("change");
        }
      });
    }

    return CreateEventCtrl;

  })();

  controllersModule.controller('CreateEventCtrl', ['$log', '$location', 'EventService', CreateEventCtrl]);

}).call(this);
