import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Bicho - Manuel Bandeira',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PoemScreen(),
      },
    );
  }
}

class PoemScreen extends StatelessWidget {
  const PoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O Bicho'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'O Bicho',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Manuel Bandeira (1947)',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Vi ontem um bicho\n'
                    'Na imundície do pátio\n'
                    'Catando comida entre os detritos.',
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Quando achava alguma coisa,\n'
                    'Não examinava nem cheirava:\n'
                    'Engolia com voracidade.',
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'O bicho não era um cão,\n'
                    'Não era um gato,\n'
                    'Não era um rato.',
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'O bicho, meu Deus, era um homem.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
