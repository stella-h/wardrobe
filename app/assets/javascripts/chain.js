$(document).ready(function () {
  var canvas = document.getElementById('myCanvas');
  paper.setup(canvas);

  var tool = new paper.Tool();
  var points = 25;

  // The distance between the points:
  var length = 35;

  var path = new paper.Path({
    strokeColor: '#f6956b',
    strokeWidth: 3,
    strokeCap: 'round'
  });

  var start = paper.view.center / [10, 1];
  for (var i = 0; i < points; i++) {
    path.add(start + new paper.Point(i * length, 0));
  }

  tool.onMouseMove = function (event) {
    path.firstSegment.point = event.point;
    for (var i = 0; i < points - 1; i++) {
      var segment = path.segments[i];
      var nextSegment = segment.next;
      var vector = segment.point - nextSegment.point;
      vector.length = length;
      nextSegment.point = segment.point - vector;
    }
    path.smooth();
  };

  tool.onMouseDown = function (event) {
    path.fullySelected = true;
    path.strokeColor = 'blue';
  };

  tool.onMouseUp = function (event) {
    path.fullySelected = false;
    path.strokeColor = '#f6956b';
  };
});