import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red,
    );
  }
}

class HeaderBordeRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,      
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(80)
        )
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
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
    //lapiz.style = PaintingStyle.stroke; //solo linea
    lapiz.style = PaintingStyle.fill; // pinta el contenido
    lapiz.strokeWidth = 2;// tamaño del lapiz
    final path = new Path();
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height*0.5);
    // path.moveTo(0, size.height*0.5);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
