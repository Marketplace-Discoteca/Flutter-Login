import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;
  final String password;

  const HomeScreen({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Usar Future.delayed para asegurar que el diálogo se muestra después de que la pantalla se ha construido
    Future.delayed(Duration.zero, () {
      _showUserInfoDialog(context);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: Center(
        child: Text('Home screen'),
      ),
    );
  }

  void _showUserInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Información del usuario'),
          content: Text('Correo: $email\nContraseña: $password'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _performAction1(context);
              },
              child: Text('Acción 1'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _performAction2(context);
              },
              child: Text('Acción 2'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _performAction3(context);
              },
              child: Text('Acción 3'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    ).catchError((error) {
      print('Error mostrando el diálogo: $error');
    });
  }

  void _performAction1(BuildContext context) {
    // Lógica para la acción 1
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Acción 1 realizada')),
    );
  }

  void _performAction2(BuildContext context) {
    // Lógica para la acción 2
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Acción 2 realizada')),
    );
  }

  void _performAction3(BuildContext context) {
    // Lógica para la acción 3
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Acción 3 realizada')),
    );
  }
}
