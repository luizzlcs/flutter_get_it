import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/modules/auth/auth_module.dart';
import 'src/modules/clients/clients_module.dart';
import 'src/modules/products/products_module.dart';
import 'src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      pages: [
        FlutterGetItPageBuilder(
          page: (context) => const HomePage(title: 'Home Page'),
          path: '/',
        ),
      ],
      modules: [
        AuthModule(),
        ClientsModule(),
        ProductsModule(),
      ],
      builder: (context, routes, flutterGetItNavObserver) {
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorObservers: [flutterGetItNavObserver],
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: routes,
        );
      },
    );
  }
}
