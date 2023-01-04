import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosGenericosNuloPage extends StatelessWidget {
  TiposReativosGenericosNuloPage({Key? key}) : super(key: key);


  /// usa se o Rxn pra poder usar o nulo

  final nome = Rxn<String>('Leo Gonzalez');
  final isAluno = Rxn<bool>(true);
  final qtdCurso = Rxn<int>(2);
  final valorCurso = Rxn<double>(1479.00);
  final jornadas = Rxn<List<String>>(['Jornada Getx', 'Jornada ADF']);

  final aluno = Rxn<Map<String, dynamic>>({
    'id': 1241,
    'nome': 'Leonardo Gonzalez',
    'tipo': 'Aluno',
  });

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
              return Text('Id do aluno: ${aluno.value?['id']}');/// >>> usar o .value
            }),
            Obx(() {
              return Text('Nome do aluno: ${aluno.value?['nome']}');/// >>> usar o .value
            }),
            Obx(() {
              return Column(
                children: jornadas.value?.map(Text.new).toList() ?? [],/// >>> usar o .value
              );
            }),
            ElevatedButton(
              onPressed: () {
                aluno.value?['id'] = 10;
                aluno.refresh();
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.value?.add('Jornada DART');  /// >>> usar o .value
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
