import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu incrível app"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              accountName: Text("Ricarth Lima"),
              accountEmail: Text("ricarth.lima@alura.com.br"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              onTap: () => onButtonSairClicked(context),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Flutter"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Unity"),
            ),
            ListTile(
                leading: Icon(Icons.check),
                title: Text("Se inscrever na Dotcode")),
          ],
        ),
      ),
    );
  }

  void onButtonSairClicked(BuildContext context) {}
}
