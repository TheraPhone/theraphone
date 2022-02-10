import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transmiciones extends StatelessWidget {
  const Transmiciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 12,
                  right: MediaQuery.of(context).size.width / 12,
                ),
                child: AutoSizeText(
                  'REPARACIONES EN VIVO',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              Image(
                image: AssetImage('Assets/botones/video.png'),
              )
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.only(left: 30, bottom: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
