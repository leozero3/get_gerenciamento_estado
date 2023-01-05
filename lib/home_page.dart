import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/basico');
              },
              child: const Text('Básico Reatividade'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativos');
              },
              child: const Text('Tipos Reativos'),
            ),
            ///
            

            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericos');
              },
              child: const Text('Tipos Reativos Genéricos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/TiposReativosGenericosNuloPage');
              },
              child: const Text('Tipos Reativos Genéricos Nulos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/TiposObsPage');
              },
              child: const Text('Tipos Obs'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/atualizacaoObjetosPage');
              },
              child: const Text('Atualização Objetos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/controllers');
              },
              child: const Text('Controllers'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/GetxWidget');
              },
              child: const Text('Getx Widget'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/local_state_widget');
              },
              child: const Text('Local State Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
