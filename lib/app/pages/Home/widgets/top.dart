import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPageHome extends StatelessWidget {
  const TopPageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 12,
          right: MediaQuery.of(context).size.width / 12,
          top: MediaQuery.of(context).size.height / 40),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AutoSizeText(
                          'Bienvenido',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        ),
                        AutoSizeText(
                          'a TheraPhone',
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage('Assets/botones/user.png'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              width: double.infinity,
              height: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
                  hintText: 'Buscar técnicos o dispositivos',
                  border: border(),
                  enabledBorder: border(),
                  errorBorder: border(),
                  focusedBorder: border(),
                  disabledBorder: border(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      gapPadding: 0,
      borderSide: BorderSide(
        width: 0,
        color: Colors.black45,
      ),
    );
  }
}
