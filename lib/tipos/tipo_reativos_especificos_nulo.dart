import 'package:get/get.dart';

class TipoReativosEspecificosNulo {
  final nome = RxnString();
  final isAluno = RxnBool(); // >> igual o de baixo, porem mais bonito
  final isAluno2 = Rxn<bool>();
  final qtdCurso = RxnInt();
  final valorCurso = RxnDouble();

  void teste() {
    isAluno.toggle();
    isAluno.isFalse;
  }
}
