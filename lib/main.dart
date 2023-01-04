import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/basico/reatividade_page.dart';
import 'package:get_gerenciamento_estado/controllers/controllers_home_page.dart';
import 'package:get_gerenciamento_estado/controllers/getxcontroller_example/controller.dart';
import 'package:get_gerenciamento_estado/controllers/getxcontroller_example/getx_controller_example_page.dart';
import 'package:get_gerenciamento_estado/home_page.dart';
import 'package:get_gerenciamento_estado/tipos/tipos_reativos_genericos_page.dart';
import 'package:get_gerenciamento_estado/tipos/tipos_reativos_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => ReatividadePage()),
        GetPage(name: '/tiposReativos', page: () => TiposReativosPage()),
        GetPage(
            name: '/tiposReativosGenericos',
            page: () => TiposReativosGenericosPage()),
        GetPage(
            name: '/controllers',
            page: () => ControllersHomePage(),
            children: [
              GetPage(
                  name: '/getxcontroller',
                  binding: BindingsBuilder.put(() => Controller()),
                  page: () => GetxControllerExamplePage()),
            ]),
      ],
    );
  }
}
