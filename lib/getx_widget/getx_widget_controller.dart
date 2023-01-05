import 'package:get/get.dart';

class GetxWidgetController extends GetxController{
    final _nome = 'leo'.obs;


    get nome => _nome;

    void alterarNome(){
        _nome('Isaac');
    }
}