import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:teste_flutter/Page/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 100,
          child: Image.asset(
              'assets/images/logo.png'
          ),
        ),
        SizedBox(height: 100),
        TextField(
          onChanged: (text) {
            email = text;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          onChanged: (text) {
            password = text;
          },
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
        ),
        // ignore: deprecated_member_use
        SizedBox(height: 15),
        // ignore: deprecated_member_use
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            if(!(email == 'edmar_espinola@hotmail.com')
                || !(password == 'abcdefg')) {
              return print('Erro ao fazer login');
            }
            Navigator.of(context).pushReplacementNamed('/home');
          },
          child: Text('Login'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [_body()]
            )
          )
        )
      )
    );
    }
}
