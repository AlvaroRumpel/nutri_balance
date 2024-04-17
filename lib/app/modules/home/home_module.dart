import 'package:provider/provider.dart';

import '../../core/modules/module_model.dart';
import '../../core/routes/routes.dart';
import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ModuleModel {
  HomeModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (context) => HomeController(),
            ),
          ],
          routers: {
            Routes.home: (context) => HomePage(
                  controller: context.read<HomeController>(),
                )
          },
        );
}
