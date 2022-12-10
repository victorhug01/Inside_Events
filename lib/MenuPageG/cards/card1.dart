import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatefulWidget {
  Card1(
      {Key? key,
      required this.imagensCard,
      required this.titulo,
      required this.descricao,
      required this.horario})
      : super(key: key);
  late String titulo;
  late String descricao;
  late String horario;
  late List<Widget> imagensCard = imagensCard;

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
            child: Material(
              child: Container(
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                  color: const Color(0xFFCFE2FF),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 2,
            bottom: 4,
            child: Card(
              color: const Color(0xFFCFE2FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 0,
              child: Container(
                color: Colors.transparent,
                height: 174,
                width: 160,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlayCurve: Curves.easeInOutSine,
                    viewportFraction: 1,
                    aspectRatio: 2.4,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                  ),
                  items: widget.imagensCard.map((Image) => Image).toList(),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 162,
            child: Container(
              color: Colors.transparent,
              height: 190,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.titulo,
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF363f93),
                    ),
                  ),
                  Text(
                    widget.descricao,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 175, 171, 171),
                  ),
                  Text(
                    widget.horario,
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF363f93),
                    ),
                  ),
                  const SizedBox(
                    height: 0.5,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFFA1C7FF)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      child: Text(
                        "SAIBA MAIS",
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF363f93),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
