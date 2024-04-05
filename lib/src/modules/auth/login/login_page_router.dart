import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/auth/login/login_controller.dart';
import 'package:flutter_get_it/src/modules/auth/login/login_page.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginPageRouter extends FlutterGetItModulePageRouter {
  const LoginPageRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => LoginController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const LoginPage();
}
