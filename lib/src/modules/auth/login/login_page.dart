import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/auth/login/login_controller.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Injector.get<LoginController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de Login'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(controller.login().toString()),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/auth/register');
              },
              child: const Text('Cadastrar Usuários'),
            )
          ],
        ),
      ),
    );
  }
}
