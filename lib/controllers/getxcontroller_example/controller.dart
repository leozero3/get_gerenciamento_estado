import 'package:get/get.dart';

class Controller extends GetxController {
  final _nome = 'leo'.obs;  

  String get nome => _nome.value;


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
    _nome('isaac');
  }
}
