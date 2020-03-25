// import 'package:app_maqueta_v2/src/widget/header_cuadrado.dart';
// import 'package:app_maqueta_v2/src/widget/header_curva.dart';
// import 'package:app_maqueta_v2/src/widget/header_pentagono.dart';
// import 'package:app_maqueta_v2/src/widget/header_triangular.dart';
// import 'package:app_maqueta_v2/src/widget/header_wave.dart';
import 'package:app_maqueta_v2/src/widget/header_wave_bottom.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderWaveBottom(),
    );
  }
}