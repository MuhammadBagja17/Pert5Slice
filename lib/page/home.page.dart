import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget kotakUngu() {
      return Container(
        height: 88,
        width: 88,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(17)),
      );
    }

    Widget kotakBiru() {
      return Container(
        height: 150,
        width: 150,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(17)),
      );
    }

    Widget kotakHijau() {
      return Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(17)),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                    kotakUngu(),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kotakBiru(),
                    kotakBiru(),
                    kotakBiru(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              kotakHijau(),
              kotakHijau(),
              kotakHijau(),
              kotakHijau(),
              kotakHijau(),
            ],
          ),
        ),
      ),
    );
  }
}
