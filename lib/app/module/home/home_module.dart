import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_specialist_start/app/module/home/presenter/home_start_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => HomeStartPage(),
        ),
      ];
}
