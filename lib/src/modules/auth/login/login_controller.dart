import 'package:flutter_get_it/src/repositories/login_repository.dart';

class LoginController {
 
 LoginController({
    required this.repository,
  });

  final LoginRepository repository;

  String login()=> repository.login();
}
