import 'package:get/state_manager.dart';

class WorkersController extends GetxController {
  final _nome = 'Leo'.obs;

  final _workers = <Worker>[];

  String get nome => _nome.value;

  @override
  void onInit() {
    //TODO: =>> ESCUTA TODAS AS ALTERACOES QUE ACONTECEM DENTRO DA VARIAVEL OBSERVAVEL

    final everWorker = ever(
      _nome,
      (nome) {
        print('executando worker ever');
        print(nome);
      },
      cancelOnError: true, //cancela caso ocorra um erro
      condition: () => _nome.value == 'isaac', //condicao para executar o worker
    );
    _workers.add(everWorker);
    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker();  // dispose
    }

    super.onClose();
  }

  alterarNome(String value) {
    _nome(value);
  }
}
