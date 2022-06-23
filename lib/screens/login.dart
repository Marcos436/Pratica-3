import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flight_outlined, size: 72, color: Colors.blue),
          Text(
            'Lipzer Viagens',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('E-mail')),
          ),
          TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')),
            obscureText: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
              ),
              child: Text('ENTRAR'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            ),
          ),
        ],
      ),
    );
  }
}
