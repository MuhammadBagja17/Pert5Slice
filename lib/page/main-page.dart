import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff090A0A)),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img-avatar.png"))),
            )
          ],
        ),
      );
    }

    Widget musicHeader() {
      Widget musicCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff090A0A)),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            musicCard("assets/img-music11.png", "Chill Hits"),
            musicCard("assets/img-music12.png", "Top Hits"),
            musicCard("assets/img-music13.png", "Happy Hits"),
            musicCard("assets/img-music14.png", "Good Times")
          ],
        ),
      );
    }

    Widget musicPlay() {
      Widget musicCard(String img, String text, String subtext) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 142,
                height: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff090A0A)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subtext,
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xff6C7072)),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: Text("Just for you",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff090A0A))),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24,
                ),
                musicCard("assets/img-music21.png", "Chill Hits",
                    "Jonas Blue, NOTD, David Guetta and more"),
                musicCard("assets/img-music22.png", "Top Hits",
                    "Ariana Grande, Doja Cat, Megan Thee Stallion..."),
                musicCard("assets/img-music23.png", "Happy Hits",
                    "BTS, Dua Lipa, Malone, Justin Bieber and more")
              ],
            ),
          ),
        ],
      );
    }

    Widget musicPopular() {
      Widget musicCard(String img, String text, String subtext) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 142,
                height: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff090A0A)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subtext,
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xff6C7072)),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: Text("Popular songs",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff090A0A))),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24,
                ),
                musicCard("assets/img-music33.png", "Good Vibes",
                    "JTame Impala, Joji, Tyler, The Creator, 5 Second"),
                musicCard("assets/img-music13.png", "Mega Hit Mix",
                    "Ariana Grande, BTS, Dua Lipa, Justin Bieber, Taylo"),
                musicCard("assets/img-music11.png", "Young & Free",
                    "LANY, Jeremy Zucker, Joji, ILLENIUM, Glass A...")
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        header(),
        const SizedBox(
          height: 24,
        ),
        musicHeader(),
        const SizedBox(
          height: 20,
        ),
        musicPlay(),
        musicPopular()
      ],
    ))));
  }
}
