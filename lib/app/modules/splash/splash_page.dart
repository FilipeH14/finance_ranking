import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash aqui!!'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('ir para login'),
          onPressed: () => Navigator.of(context).pushNamed('/login'),
        ),
      ),
    );
  }
}
