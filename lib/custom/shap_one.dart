import 'package:flutter/material.dart';

class ShapOne extends StatelessWidget {
  const ShapOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: Size(63, 346), painter: RPSCustomPainter());
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(16.1165, 80.2131);
    path_0.cubicTo(19.7124, 13.0689, -8.83197, 5.80122, -29.2317, -7.90821);
    path_0.cubicTo(-67.1596, 47.7522, -144.232, 145.796, -149.098, 155.955);
    path_0.cubicTo(-153.964, 166.114, -168.84, 270.247, -175.67, 321.044);
    path_0.lineTo(-26.6662, 345.109);
    path_0.cubicTo(-6.4668, 332.984, 38.619, 292.784, 57.367, 228.984);
    path_0.cubicTo(80.8021, 149.234, 12.5205, 147.357, 16.1165, 80.2131);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff3B9EC0).withValues(alpha: 1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
