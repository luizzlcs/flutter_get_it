
import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/products/products_page.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProductsPageRouter extends FlutterGetItModulePageRouter{
  const ProductsPageRouter({super.key});

  @override
  WidgetBuilder get view => (_)=> const ProductsPage();
  
}