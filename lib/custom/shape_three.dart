import 'package:flutter/material.dart';



class ShapeThree extends StatelessWidget {
  const ShapeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
    size: Size(114, 172), 
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
    path_0.moveTo(77.1144,50.5);
    path_0.cubicTo(86.3144,10.9,114.281,0.333333,127.114,0);
    path_0.cubicTo(155.614,6,162.615,109,117.115,99.5);
    path_0.cubicTo(71.6152,90,77.1144,121.5,54.6144,157.5);
    path_0.cubicTo(32.1144,193.5,-9.88563,155.5,2.11437,113);
    path_0.cubicTo(14.1144,70.5,65.6144,100,77.1144,50.5);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffE33C64).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}