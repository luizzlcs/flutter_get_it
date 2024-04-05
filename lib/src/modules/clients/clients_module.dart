
import 'package:flutter/material.dart';
import 'package:flutter_get_it/src/modules/clients/clients_page.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ClientsModule extends FlutterGetItModule {
  @override
  String get moduleRouteName =>'/clients';

  @override
  Map<String, WidgetBuilder> get pages => {
    '/clients':(context) => const ClientsPage()
  };
  
}