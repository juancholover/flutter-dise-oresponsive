import 'package:app_ventas/src/presentation/auth/login/login_page.dart';
import 'package:app_ventas/src/presentation/auth/register/register_page.dart';
import 'package:app_ventas/src/presentation/pages/principal_page.dart';
import 'package:app_ventas/src/presentation/responsive/aspect_ratio_page.dart';
import 'package:app_ventas/src/presentation/responsive/expanded_flexible_page.dart';
import 'package:app_ventas/src/presentation/responsive/fractionally_sized_box_page.dart';
import 'package:app_ventas/src/presentation/responsive/layout_builder_page.dart';
import 'package:app_ventas/src/presentation/responsive/media_query_page.dart';
import 'package:app_ventas/src/presentation/responsive/orientation_builder_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'menu': (BuildContext context) => PrincipalPage(),

        'mediaQuery': (BuildContext context) => MediaQueryPage(),
        'layoutBuilder': (BuildContext context) => LayoutBuilderPage(),
        'orientation': (BuildContext context) => OrientationBuilderPage(),
        'expanded': (BuildContext context) => ExpandedFlexiblePage(),
        'fractionally': (BuildContext context) => FractionallySizedBoxPage(),
        'aspect': (BuildContext context) => AspectRatioPage(),
      },
    );
  }
}
