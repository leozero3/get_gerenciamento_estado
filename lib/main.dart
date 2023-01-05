import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/atualizacao/atualizacao_objetos_page.dart';
import 'package:get_gerenciamento_estado/basico/reatividade_page.dart';
import 'package:get_gerenciamento_estado/controllers/controllers_home_page.dart';
import 'package:get_gerenciamento_estado/controllers/getxcontroller_example/controller.dart';
import 'package:get_gerenciamento_estado/controllers/getxcontroller_example/getx_controller_example_page.dart';
import 'package:get_gerenciamento_estado/getx_widget/getx_widget_page.dart';
import 'package:get_gerenciamento_estado/home_page.dart';
import 'package:get_gerenciamento_estado/local_state_widget/local_state_widget_page.dart';
import 'package:get_gerenciamento_estado/tipos/tipos_obs_page.dart';
import 'package:get_gerenciamento_estado/tipos/tipos_reativos_genericos_nulo_page.dart';
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
            name: '/tiposReativosGenericos',
            page: () => TiposReativosGenericosPage()),
        GetPage(
            name: '/TiposReativosGenericosNulo',
            page: () => TiposReativosGenericosNuloPage()),
        GetPage(name: '/TiposObsPage', page: () => TiposObsPage()),
        GetPage(
            name: '/atualizacaoObjetosPage',
            page: () => AtualizacaoObjetosPage()),
        GetPage(
            name: '/controllers',
            page: () => ControllersHomePage(),
            children: [
              GetPage(
                  name: '/getxcontroller',
                  binding: BindingsBuilder(() {
                    Get.put(Controller());
                  }),
                  // binding: BindingsBuilder(() {
                  //   Get.lazyPut(() => Controller());
                  // }),
                  page: () => GetxControllerExamplePage()),
            ]),
        GetPage(name: '/GetxWidget', page: () => GetxWidgetPage(),),
        GetPage(name: '/local_state_widget', page: () => LocalStateWidgetPage(),)
      ],
    );
  }
}
