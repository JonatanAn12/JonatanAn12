import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<String> menuItems = [
    'Hamburguesa',
    'Pizza',
    'Ensalada',
    'Sopa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuItemDetailScreen(menuItem: menuItems[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MenuItemDetailScreen extends StatelessWidget {
  final String menuItem;

  MenuItemDetailScreen({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuItem),
      ),
      body: Center(
        child: Text('Detalles de $menuItem'),
      ),
    );
  }
}
