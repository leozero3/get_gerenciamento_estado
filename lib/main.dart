
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/atualizacao/atualizacao_objetos_page.dart';
import 'package:get_gerenciamento_estado/basico/reatividade_page.dart';
import 'package:get_gerenciamento_estado/home_page.dart';
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
        GetPage(name: '/tiposReativosGenericos', page: () => TiposReativosGenericosPage()),
        GetPage(name: '/TiposReativosGenericosNulo', page: () => TiposReativosGenericosNuloPage()),
        GetPage(name: '/TiposObsPage', page: () => TiposObsPage()),
        GetPage(name: '/atualizacaoObjetosPage', page: () => AtualizacaoObjetosPage()),
      ],
    );
  }
}
