import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposObsPage extends StatelessWidget {
  TiposObsPage({Key? key}) : super(key: key);

  /// usa se o .oba ao final da variavel

  final nome = 'Leo Gonzalez'.obs;
  final isAluno = true.obs;
  final qtdCurso = 2.obs;
  final valorCurso = 1479.00.obs;
  final jornadas = ['Jornada Getx', 'Jornada ADF'].obs;

  final aluno = <String, dynamic>{
    'id': 1241,
    'nome': 'Leonardo Gonzalez',
    'tipo': 'Aluno',
  }.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genéricos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('Id do aluno: ${aluno.value['id']}');

              /// >>> usar o .value
            }),
            Obx(() {
              return Text('Nome do aluno: ${aluno.value['nome']}');

              /// >>> usar o .value
            }),
            Obx(() {
              return Column(
                children: jornadas.value.map(Text.new).toList(),

                /// >>> usar o .value
              );
            }),
            ElevatedButton(
              onPressed: () {
                aluno.value['id'] = 10;
                aluno.refresh();
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.value.add('Jornada DART');

                /// >>> usar o .value
                jornadas.refresh(); // >>> usar o refresh para atualizar
                // jornadas.value.assign('Jornada DART'); // remove tudo que tem na lista e adiciona a (STRING)
              },
              child: const Text('Adicionar Jornada'),
            ),
          ],
        ),
      ),
    );
  }
}
