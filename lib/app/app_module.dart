import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_specialist_start/app/module/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: HomeModule(),
        ),
        ModuleRoute(
          "/Home",
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
