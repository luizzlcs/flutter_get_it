import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/util/products_util.dart';
import 'package:flutter_getit/flutter_getit.dart';

class RegisterProductPage extends StatelessWidget {

  const RegisterProductPage({ super.key });

   @override
   Widget build(BuildContext context) {
    final util = Injector.get<ProductsUtil>();
       return Scaffold(
           appBar: AppBar(title: const Text('Cadastro de produtos'),),
           body: Center(
             child: Text(util.register()),
           ),
       );
  }
}