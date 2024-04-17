import 'package:flutter/material.dart';

import 'core/language/pt_br.dart';
import 'core/routes/routes.dart';
import 'core/ui/theme_config.dart';
import 'modules/home/home_module.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: PtBr.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.lightTheme,
      initialRoute: Routes.home,
      routes: {
        ...HomeModule().routers,
      },
    );
  }
}
