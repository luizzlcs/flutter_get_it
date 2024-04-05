import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/repositories/login_repository.dart';
import 'package:flutter_getit/flutter_getit.dart';

class RegisterPage extends StatelessWidget {

  const RegisterPage({ super.key });

   @override
   Widget build(BuildContext context) {
    final repository = Injector.get<LoginRepository>();
       return Scaffold(
           appBar: AppBar(title: const Text('Página de cadastro de acessos'),),
           body: Center(
            child: Text(repository.login()),
           ),
       );
  }
}