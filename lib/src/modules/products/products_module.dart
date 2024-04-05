
import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/products/fornecedores/fornecedor_page.dart';
import 'package:flutter_get_it/src/modules/products/products_page_router.dart';
import 'package:flutter_get_it/src/util/products_util.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'register_products/register_product_page.dart';

class ProductsModule extends FlutterGetItModule {
  
  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) => ProductsUtil())
  ];
  
  @override
  String get moduleRouteName => '/products';

  @override
  
  Map<String, WidgetBuilder> get pages => {
    '/products':(context) => const ProductsPageRouter(),
    '/register-products':(context) => const RegisterProductPage(),
    '/fornecedores':(context) => const FornecedorPage(),

  };
  
}