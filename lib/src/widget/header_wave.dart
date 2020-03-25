import 'package:flutter/material.dart';
class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        child: CustomPaint(
          painter: _headerDiagonalPaint(),
        ),
      );
  }
}
class _headerDiagonalPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final lapiz = Paint();

    lapiz.color = Colors.red;
    // lapiz.style = PaintingStyle.stroke; //solo linea
    lapiz.style = PaintingStyle.fill; // pinta el contenido
    lapiz.strokeWidth = 5;// tamaño del lapiz
    final path = new Path();
    // path.moveTo(0,0);
   
    //triangulo superior
    path.lineTo(0,0);
    path.lineTo(0, size.height * 0.25);

    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,size.width * 0.50 ,size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20,size.width ,size.height * 0.25);
    // path.lineTo(size.width * 0.45, size.height * 0.35);
    // path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);


    // //triangulo inferior
    // path.lineTo(0,0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    
    // path.moveTo(0, size.height*0.5);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}