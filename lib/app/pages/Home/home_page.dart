import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thera/app/pages/Home/widgets/categorias.dart';
import 'package:thera/app/pages/Home/widgets/top.dart';
import 'package:thera/app/pages/Home/widgets/transmiciones.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4E0D6),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: true,
        child: Container(
          margin: const EdgeInsets.only(top: 3),
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: const Color(0xFFfff3eb),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(80),
              topRight: Radius.circular(80),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Expanded(
                flex: 3,
                child: TopPageHome(),
              ),
              const Expanded(
                flex: 4,
                child: CategoriasCard(),
              ),
              const Expanded(
                flex: 3,
                child: Transmiciones(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
