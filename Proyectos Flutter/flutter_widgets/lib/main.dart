import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú del Restaurante'),
      ),
      body: ListView(
        children: const <Widget>[
         MenuItem(
            title: 'Hamburguesa',
            description: 'Una jugosa hamburguesa con queso y verduras frescas.',
            price: '\$10',
          ),
           MenuItem(
            title: 'Pizza',
            description: 'Pizza casera con tus ingredientes favoritos.',
            price: '\$12',
          ),
         MenuItem(
            title: 'Ensalada César',
            description: '  Carne a la llanera .',
            price: '\$8',
          ),
          // Agrega más elementos de menú según sea necesario
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  const MenuItem({
    super.key,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      trailing: Text(price),
    );
  }
}


