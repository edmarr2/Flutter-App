import 'package:flutter/material.dart';
import 'package:teste_flutter/Controller/app_controller.dart';
import 'package:teste_flutter/Page/homepage.dart';
import 'package:teste_flutter/Page/login.dart';

class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDark
                    ? Brightness.dark
                    : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePagefulWidget(),
            },
        );
      }
    );
  }
}