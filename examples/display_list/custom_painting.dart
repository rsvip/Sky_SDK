import "dart:sky";

void doIt() {
  var root = document.createElement('div');
  root.style['display'] = 'paragraph';
  root.appendChild(new Text('Hello World'));
  document.appendChild(root);
  root.offsetWidth; // force layout.

  double width = window.innerWidth.toDouble();
  double height = window.innerHeight.toDouble();
  PictureRecorder recorder = new PictureRecorder(width, height);
  Paint paint = new Paint()..setARGB(255, 0, 255, 0);
  recorder.drawCircle(50.0, 50.0, 50.0, paint);
  recorder.translate(10.0, 10.0);
  root.paint(recorder);
  recorder.translate(10.0, 10.0);
  root.paint(recorder);
  recorder.translate(10.0, 10.0);
  root.paint(recorder);
  document.rootPicture = recorder.endRecording();
}