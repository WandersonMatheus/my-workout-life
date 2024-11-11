import 'package:flutter/material.dart';

class CreateRoutinePage extends StatefulWidget {
  const CreateRoutinePage({super.key});

  @override
  _CreateRoutinePageState createState() => _CreateRoutinePageState();
}

class _CreateRoutinePageState extends State<CreateRoutinePage> {
  final TextEditingController routineNameController = TextEditingController();

  List<String> exercises = []; // Lista de exercícios adicionados à rotina

  // Função para adicionar exercício
  void addExercise(String exercise) {
    setState(() {
      exercises.add(exercise);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Rotina de Treino'),
        backgroundColor: Colors.orange.shade700,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campo para inserir o nome da rotina
            TextField(
              controller: routineNameController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Nome da Rotina',
                labelStyle: TextStyle(color: Colors.orange.shade700),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange.shade700),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Lista de exercícios
            Text(
              'Exercícios:',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: exercises.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      exercises[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Botão para adicionar exercício
            ElevatedButton(
              onPressed: () {
                // Lógica para adicionar exercício
                showDialog(
                  context: context,
                  builder: (context) {
                    String exercise = '';
                    return AlertDialog(
                      title: Text('Adicionar Exercício'),
                      content: TextField(
                        onChanged: (value) {
                          exercise = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Nome do exercício',
                          hintStyle: TextStyle(color: Colors.black45),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            if (exercise.isNotEmpty) {
                              addExercise(exercise); // Adiciona exercício
                              Navigator.pop(context);
                            }
                          },
                          child: Text('Adicionar'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text("Adicionar Exercício"),
            ),
            SizedBox(height: 20),

            // Botão para salvar rotina
            ElevatedButton(
              onPressed: () {
                // Lógica para salvar a rotina
                String routineName = routineNameController.text;
                if (routineName.isNotEmpty && exercises.isNotEmpty) {
                  // Salvar rotina (aqui pode-se salvar localmente ou em um banco de dados)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content:
                            Text('Rotina "$routineName" salva com sucesso!')),
                  );
                } else {
                  // Caso a rotina ou exercícios não tenham sido preenchidos
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preencha todos os campos!')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text("Salvar Rotina"),
            ),
          ],
        ),
      ),
    );
  }
}
