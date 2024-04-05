import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/auth/login/login_page_router.dart';
import 'package:flutter_get_it/src/modules/auth/register/register_page.dart';
import 'package:flutter_get_it/src/repositories/login_repository.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AuthModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton((i) => LoginRepository())];
  @override
  String get moduleRouteName => '/auth';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/login': (context) => const LoginPageRouter(),
        '/register': (context) => const RegisterPage(),
      };
}
