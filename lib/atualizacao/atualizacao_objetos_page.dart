import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_gerenciamento_estado/atualizacao/usuario_model.dart';

class AtualizacaoObjetosPage extends StatelessWidget {
  final alunoModel = UsuarioModel(
    id: 1,
    nome: 'Leo',
    email: 'leo@leo.com',
  ).obs;

  AtualizacaoObjetosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(alunoModel.value.id.toString());
            }),
            Obx(() {
              return Text(alunoModel.value.nome);
            }),
            Obx(() {
              return Text(alunoModel.value.email);
            }),
            ElevatedButton(
              onPressed: (() {
                alunoModel.value.nome = 'Isaac';
                alunoModel.refresh();
              }),
              child: const Text('Atualizando com refresh'),
            ),
            ElevatedButton(
              onPressed: (() {
                // Design pattern prototype
                // Estamos criando um novo objeto
                alunoModel.value = alunoModel.value.copyWith(nome: 'Isaac');
                // nao necessita usar o .refresh()
              }),
              child: const Text('Atualizando com copyWith'),
            ),
            ElevatedButton(
              onPressed: (() {
                alunoModel.update((aluno) {
                  aluno?.nome = 'Isaac';
                  // nao necessita usar o .refresh()
                });
              }),
              child: const Text('Atualizando com Update'),
            ),
          ],
        ),
      ),
    );
  }
}
