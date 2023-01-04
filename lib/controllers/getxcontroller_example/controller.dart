import 'package:get/get.dart';

class Controller extends GetxController {
  final nome = 'leo'.obs;

  @override
  void onInit() {
    print('inicio');
    super.onInit();
  }

  @override
  void onReady() {
    print('ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('fecha');
    super.onClose();
  }

  alterarDados() {
    nome('isaac');
  }
}
