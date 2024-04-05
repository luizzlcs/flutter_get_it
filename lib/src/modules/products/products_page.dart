import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/util/products_util.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final util = Injector.get<ProductsUtil>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de produtos'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/products/fornecedores');
              },
              child: const Text('Fornecedores'),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/products/register-products');
              },
              child: const Text('Registrar produtos'),
            ),
            const SizedBox(
               height: 15,
            ),
            Center(
              child: Text(util.listProducts()),
            )

          ],
        ),
      ),
    );
  }
}
