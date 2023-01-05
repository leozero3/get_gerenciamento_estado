import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/getx_widget/getx_widget_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx widget'),
      ),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(), //pode usar dentro da rota no Bindings
          builder: (controller) {
            return Column(
              children: [
                Text(controller.nome),
                ElevatedButton(
                    onPressed: () => controller.alterarNome(),
                    child: Text('Alterar nome'))
              ],
            );
          },
        ),
      ),
    );
  }
}
