import 'package:flutter/material.dart';
import '../views/login_page.dart';

class SplashViewModel extends ChangeNotifier {
  bool _navegou = false;
  bool get navegou => _navegou;

  /// Permanece na tela de splash por um tempo e depois vai para o Login.
  /// Avisa o usuario quando concluir se for preciso.
  Future<void> iniciarNavegacao(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    if (context.mounted && !_navegou) {
      _navegou = true;
      notifyListeners();

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    }
  }
}
