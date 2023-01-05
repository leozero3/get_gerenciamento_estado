import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({Key? key}) : super(key: key);

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
            ValueBuilder<bool?>(
              initialValue: true,
              builder: (obscureValue, updater) {
                return TextFormField(
                  obscureText: obscureValue!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        updater(!obscureValue);
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                );
              },
              onUpdate: (p0) {
                print('alterado para $p0');
              },

              onDispose: () {
                print('Removido da arvore de widget');
              },
            ),


            //TODO::=>  ESPERA UMA VARIAVEL OBSERVADA, PRECISA SER UMA VARIAVEL 'RX'
            ObxValue<RxBool>((obscureData) {
              return TextFormField(
                obscureText: obscureData.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureData.toggle(); // o toggle é a mesma coisa que fazer a inversão do objeto ex: !obscureData
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              );
            },true.obs),
          ],
        ),
      ),
    );
  }
}
