import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/controllers/getxcontroller_example/controller.dart';

class GetxControllerExamplePage extends StatefulWidget {
  const GetxControllerExamplePage({Key? key}) : super(key: key);

  @override
  State<GetxControllerExamplePage> createState() =>
      _GetxControllerExamplePageState();
}

class _GetxControllerExamplePageState extends State<GetxControllerExamplePage> {
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() {
            return Text(Get.find<Controller>().nome);
          }),
          ElevatedButton(
            onPressed: () {
              Get.find<Controller>().alterarDados();
            },
            child: Text('alterar dados'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.reload<Controller>(); // só funciona com lazyPut
              setState(() {});
            },
            child: Text('recarregar controller'),
          )
        ],
      )),
    );
  }
}
