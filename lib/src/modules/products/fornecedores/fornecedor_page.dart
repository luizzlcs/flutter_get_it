import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import '../../../util/products_util.dart';

class FornecedorPage extends StatelessWidget {

  const FornecedorPage({ super.key });

   @override
   Widget build(BuildContext context) {
    final util = Injector.get<ProductsUtil>();
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Center(
            child: Text(util.listFornecedores()),
           ),
       );
  }
}