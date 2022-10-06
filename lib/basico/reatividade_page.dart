import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReatividadePage extends StatelessWidget {
  ReatividadePage({Key? key}) : super(key: key);

  final _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reatividade Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador'),
            Obx(() {
              return Text('${_counter.value}');
            }),
            ElevatedButton(
              onPressed: () {
                _counter.value++;
              },
              child: const Text('Soma +1'),
            )
          ],
        ),
      ),
    );
  }
}
