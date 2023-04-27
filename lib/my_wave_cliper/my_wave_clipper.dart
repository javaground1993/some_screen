import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWaveClipper extends StatelessWidget {
  const MyWaveClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Wave Clipper"),),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5 ,
              child: ClipPath(
                clipper: WClipper(),
                child: Container(color: Colors.black,
                  height: 200,
                ),
              ),
            ),
            /*
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

             */
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

class WClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 80); // start path with this
    var firstStart = Offset(0, size.height - 50);
    // first point of quadratic bezier curve
    var firstEnd = Offset(size.width/2, size.height -50 );
    // second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width/2, size.height - 50 );
    // third point of quadratic bezier curve
    var secondEnd = Offset(size.width - 40, size.height - 50);
    // fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);


    var thStart = Offset(size.width , size.height -50 );
    // third point of quadratic bezier curve
    var thEnd = Offset(size.width - 40, size.height );
    // fourth point of quadratic bezier curve
    path.quadraticBezierTo(thStart.dx, thStart.dy, thEnd.dx, thEnd.dy);

    path.lineTo(size.width, size.height);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
