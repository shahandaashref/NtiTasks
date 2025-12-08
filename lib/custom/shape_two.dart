import 'package:flutter/material.dart';

class ShapeTwo extends StatelessWidget {
  const ShapeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
    size: Size(201, 56), 
    painter: RPSCustomPainter(),
);
  }
}



//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(128.613,-18.9687);
    path_0.cubicTo(165.93,-35.1007,191.048,-18.8863,198.942,-8.7626);
    path_0.cubicTo(211.051,17.7245,132.369,84.5617,112.973,42.3211);
    path_0.cubicTo(93.5759,0.0805147,71.5083,23.2217,29.1835,26.5174);
    path_0.cubicTo(-13.1412,29.8131,-7.53575,-26.5481,33.7775,-42.1513);
    path_0.cubicTo(75.0908,-57.7546,81.967,1.19636,128.613,-18.9687);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffFFE0A4).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}