import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_specialist_start/app/module/home/presenter/home_start_page.dart';
import 'package:flutter_specialist_start/app/module/home/presenter/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final register = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: register.pageController,
      children: const [
        HomeStartPage(),
      ],
    );
  }
}
