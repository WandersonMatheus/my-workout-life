import 'package:flutter/material.dart';
import 'package:myapp/pages/create_routine_page.dart'; // Importe a página de criação de rotina

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo com imagem
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Workout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' Life',
                    style: TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Botão para navegar para a criação de rotina
            ElevatedButton(
              onPressed: () {
                // Ao pressionar o botão, navega para a tela de criação de rotina
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateRoutinePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text("Criar Rotina"),
            ),
          ],
        ),
      ),
    );
  }
}
