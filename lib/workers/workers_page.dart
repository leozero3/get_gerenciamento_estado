import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/workers/workers_controller.dart';

class WorkersPage extends StatefulWidget {
  WorkersPage({Key? key}) : super(key: key);

  @override
  State<WorkersPage> createState() => _WorkersPageState();
}

class _WorkersPageState extends State<WorkersPage> {
  final controller = Get.find<WorkersController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Worker'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: controller.alterarNome,
            ),
            Obx(() {
              return Text(controller.nome);
            }),
          ],
        ),
      ),
    );
  }
}
