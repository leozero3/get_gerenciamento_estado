import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  TiposReativosPage({Key? key}) : super(key: key);

  final nome = RxString('Léo');
  final jornada = RxList(['Jornada GetX', 'Jornada ADF']);
  final aluno = RxMap({
    'id': 1995,
    'nome': 'Léo',
    'tipo': 'aluno',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('Id do Aluno ${aluno['id']}');
            }),
            Obx(() {
              return Text('nome do Aluno ${aluno['nome']}');
            }),
            Obx(() {
              return Column(
                children: jornada.map(Text.new).toList(),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  aluno['id'] = 1;
                },
                child: Text('Alterar Id')),
            ElevatedButton(
                onPressed: () {
                  jornada.add('Jornada Dart');
                },
                child: Text('Adicionar Jornada')),
          ],
        ),
      ),
    );
  }
}
