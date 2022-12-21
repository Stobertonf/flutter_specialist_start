import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_specialist_start/app/module/home/presenter/controller/home_controller.dart';

class HomeStartPage extends StatefulWidget {
  const HomeStartPage({super.key});
  @override
  State<HomeStartPage> createState() => _HomeStartPageState();
}

class _HomeStartPageState extends State<HomeStartPage> {
  final register = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 8,
        titleSpacing: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 0,
                right: 30,
                bottom: 0,
              ),
            ),
            Image.asset(
              width: 64,
              height: 32,
              fit: BoxFit.contain,
              'assets/images/logo.png',
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 9,
        height: MediaQuery.of(context).size.height * 1.6,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: const Text(
                        'Nunca Deixe Que Nenhum Limite Tire De Você a Ambição da Auto-Superação',
                        style: TextStyle(
                          fontSize: 20,
                          wordSpacing: 10,
                          letterSpacing: 1,
                          fontFamily: 'Dossis',
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.1,
                          padding: const EdgeInsets.all(0.0),
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        'assets/images/logo.png',
                                        height: 24,
                                      ),
                                      Image.asset(
                                        'assets/images/logo_1.png',
                                        height: 24,
                                      ),
                                      Image.asset(
                                        'assets/images/logo_2.png',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
