import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriasCard extends StatelessWidget {
  const CategoriasCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 12,
              right: MediaQuery.of(context).size.width / 12,
            ),
            child: AutoSizeText(
              'CATEGORIAS',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            height: double.infinity,
            child: Wrap(
              // crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.spaceAround,
              runAlignment: WrapAlignment.spaceEvenly,
              // direction: Axis.horizontal,
              // verticalDirection: VerticalDirection.down,
              spacing: 0,
              runSpacing: 10,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Categorias(
                    iconTitle:
                        const AssetImage("Assets/categorias/botondeflash.png"),
                    image: const AssetImage('Assets/categorias/therafast.png'),
                    title: 'TheraFast'),
                Categorias(
                    iconTitle: AssetImage('Assets/categorias/lapices.png'),
                    image: AssetImage('Assets/categorias/theraclass.png'),
                    title: 'TheraFast'),
                Categorias(
                    iconTitle: AssetImage('Assets/categorias/botonregalo.png'),
                    image: AssetImage('Assets/categorias/therashop.png'),
                    title: 'TheraFast'),
                Categorias(
                    iconTitle: AssetImage('Assets/categorias/Cards.png'),
                    image: AssetImage('Assets/categorias/Theracashboton.png'),
                    title: 'TheraFast'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Categorias extends StatelessWidget {
  final String title;
  final ImageProvider<Object> iconTitle;
  final ImageProvider<Object> image;
  const Categorias({
    Key? key,
    required this.iconTitle,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      //height: double.infinity,
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        image: DecorationImage(image: image, fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AutoSizeText(
                title,
                maxLines: 1,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image(image: iconTitle, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
