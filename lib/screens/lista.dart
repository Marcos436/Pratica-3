import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Passagens'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Icon(Icons.add_location_alt),
            title: Text('passagem $index'),
            trailing: Text('quantidade $index'),
          );
        },
      ),
    );
  }
}
