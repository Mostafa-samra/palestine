import 'package:flutter/material.dart';

void main() => runApp(const Plastin());

class Plastin extends StatelessWidget {
  const Plastin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "فلسطين",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff5b504a),
        body: Column(
          children: [
            _newMethod(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 50,
                ),
                Text(
                  "فلسطين فى القلب",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Image.asset('images/oip.jpeg')
          ],
        ),
      ),
    );
  }

  SizedBox _newMethod() {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.black,
                height: 60,
              ),
              Container(
                color: Colors.white,
                height: 80,
              ),
              Container(
                color: Colors.green,
                height: 60,
              ),
            ],
          ),
          Positioned(
            child: CustomPaint(
              size: const Size(200, 200),
              painter: DrawTriangle(),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width * 0.5);
    path.close();
    canvas.drawPath(path, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
