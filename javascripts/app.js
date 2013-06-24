$(document).ready(function() {
  var dataHandler, t, x, y;
  x = $("#x");
  y = $("#y");
  t = [$("#t1"), $("#t2"), $("#t3"), $("#t4"), $("#t5"), $("#t6")];
  dataHandler = function(ev) {
    var data, el, _i, _len, _results;
    data = ev.accelerationIncludingGravity;
    x.text("x: " + data.x);
    y.text("y: " + data.y);
    _results = [];
    for (_i = 0, _len = t.length; _i < _len; _i++) {
      el = t[_i];
      _results.push(el.css("transform", "translate(" + (data.x * 5) + "px, " + (data.y * 5) + "px)"));
    }
    return _results;
  };
  return window.addEventListener("devicemotion", dataHandler, true);
});
