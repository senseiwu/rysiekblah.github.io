// Generated by CoffeeScript 1.11.1
(function() {
  var EventCtrl;

  EventCtrl = (function() {
    function EventCtrl($log, EventService) {
      this.$log = $log;
      this.EventService = EventService;
      this.$log.debug("constructing EventController");
      this.events = [];
      this.text = "Hello";
      this.temp = [];
      this.getAllEvents();
    }

    EventCtrl.prototype.getAllEvents = function() {
      this.$log.debug("Hello Ctrl");
      return this.EventService.httpCall("/upcomingJson").then((function(_this) {
        return function(data) {
          return _this.temp.push({
            index: 1,
            "name": "Upcoming",
            "content": data
          });
        };
      })(this), (function(_this) {
        return function(error) {
          return _this.$log.error("Unable to get Users: " + error);
        };
      })(this), this.EventService.httpCall("/todayJson").then((function(_this) {
        return function(data) {
          return _this.temp.push({
            index: 2,
            "name": "Today",
            "content": data
          });
        };
      })(this), (function(_this) {
        return function(error) {
          return _this.$log.error("Unable to get Users: " + error);
        };
      })(this), this.EventService.httpCall("/pastJson").then((function(_this) {
        return function(data) {
          return _this.temp.push({
            index: 3,
            "name": "Past",
            "content": data
          });
        };
      })(this), (function(_this) {
        return function(error) {
          return _this.$log.error("Unable to get Users: " + error);
        };
      })(this), this.events = this.temp)));
    };

    EventCtrl.prototype.getText = function() {
      return "hello";
    };

    return EventCtrl;

  })();

  controllersModule.controller('EventCtrl', ['$log', 'EventService', EventCtrl]);

}).call(this);