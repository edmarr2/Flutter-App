import 'package:flutter/material.dart';
import 'package:teste_flutter/Controller/app_controller.dart';

class HomePagefulWidget extends StatefulWidget {
  const HomePagefulWidget({Key key}) : super(key: key);

  @override
  _HomePagefulWidgetState createState() => _HomePagefulWidgetState();
}

/// This is the private State class that goes with HomePagefulWidget.
class _HomePagefulWidgetState extends State<HomePagefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Edmar'),
              accountEmail: Text('edmar_espinola@hotmail.com'),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/user.jpg'),
              )
            ),
            ListTile(
              title: Text('Início'),
              leading: Icon(Icons.home),
              onTap: (){
                print('home');
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.navigate_before),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Accordous'),
        actions: [CustomSwitch()],
      ),
      body: Container(),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}