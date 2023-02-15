import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWaveClipper extends StatelessWidget {
  const MyWaveClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Wave Clipper"),),
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5 ,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(color: Colors.deepOrangeAccent,
                  height: 200,
                ),
              ),
            ),
            Opacity(
              opacity: 1 ,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  color: Colors.red,
                  height: 180,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  child:  Text("My Wave Clipper" , style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height); // start path with this
    var firstStart = Offset(size.width/5, size.height);
    // first point of quadratic bezier curve
    var firstEnd = Offset(size.width/2.25, size.height - 50.0);
    // second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width- (size.width/3.24), size.height - 105);
    // third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10.0);
    // fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
