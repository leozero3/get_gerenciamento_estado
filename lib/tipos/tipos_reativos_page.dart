import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  TiposReativosPage({Key? key}) : super(key: key);

  final nome = RxString('Leo Gonzalez');
  final isAluno = RxBool(true);
  final qtdCurso = RxInt(2);
  final valorCurso = RxDouble(1479.00);
  final jornadas = RxList(['Jornada Getx', 'Jornada ADF']);

  final aluno = RxMap({
    'id': 1241,
    'nome': 'Leonardo Gonzalez',
    'tipo': 'Aluno',
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
              return Text('Id do aluno: ${aluno['id']}');
            }),
            Obx(() {
              return Text('Nome do aluno: ${aluno['nome']}');
            }),
            Obx(() {
              return Column(
                children: jornadas.map(Text.new).toList(),
              );
            }),
            ElevatedButton(
              onPressed: () {
                aluno['id'] = 10;
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.add('Jornada DART');
                //jornadas.assign('Jornada DART'); // remove tudo que tem na lista e adiciona a (STRING)
              },
              child: const Text('Adicionar Jornada'),
            ),
          ],
        ),
      ),
    );
  }
}
