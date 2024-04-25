import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú del Restaurante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Plato> menu = [
    Plato(nombre: 'Carapulcra', precio: 9.99, imagen: 'assets/carapulcra_chinchana.png'),
    Plato(nombre: 'Tallarines Verdes', precio: 12.99, imagen: 'assets/tallarines_verdes.png'),
    Plato(nombre: 'Caldo de gallina', precio: 15.99, imagen: 'assets/caldo_de_gallina.png'),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú del Restaurante'),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(menu[index].imagen), 
              title: Text(menu[index].nombre), 
              subtitle: Text('\$${menu[index].precio.toString()}'), 
            ),
          );
        },
      ),
    );
  }
}

class Plato {
  final String nombre;
  final double precio;
  final String imagen;

  Plato({required this.nombre, required this.precio, required this.imagen});
}




/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú Personalizado'),
        ),
        body: MenuPersonalizado(),
      ),
    );
  }
}
class MenuPersonalizado extends StatelessWidget {
  final List<Map<String, dynamic>> opciones = [
    {'title': 'Home', 'icon': Icons.home},
    {'title': 'Profile', 'icon': Icons.person},
    {'title': 'Chat', 'icon': Icons.chat},
    {'title': 'Map', 'icon': Icons.map},
    {'title': 'List', 'icon': Icons.list},
    {'title': 'Access-time', 'icon': Icons.access_time},
    {'title': 'Cloud', 'icon': Icons.cloud},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: opciones.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(opciones[index]['icon']),
          title: Text(opciones[index]['title']),
          onTap: () {
            // Lógica para manejar la selección de la opción
            print('Tocaste ${opciones[index]['title']}');
          },
        );
      },
    );
  }
}
*/