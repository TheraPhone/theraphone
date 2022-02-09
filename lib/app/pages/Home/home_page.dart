import 'package:flutter/material.dart';
import 'package:thera/app/pages/Home/widgets/top.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4E0D6),
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
                flex: 4,
                child: TopPageHome(),
              ),
              Expanded(
                flex: 6,
                child: Container(),
              ),
              Expanded(
                flex: 4,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
