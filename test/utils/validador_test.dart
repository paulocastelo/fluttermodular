import 'package:flutter_test/flutter_test.dart';
import 'package:fluttermodular/terminal/utils/validador.dart';

void main() {
  group('Validação de Email', () {
    test('Email válido', () {
      expect(isEmailValido('email@email.com'), isTrue);
    });
    test('Email inválido sem @', () {
      expect(isEmailValido('testeemail.com'), isFalse);
    });
    test('Email inválido vazio', () {
      expect(isEmailValido(''), isFalse);
    });
  });

  group('Validação de Nome', (){
    test('Nome válido',(){
      expect(isNomeValido('Nome Sobrenome'), isTrue);
    });
    test('Nome inválido - vazio',(){
      expect(isNomeValido(''), isFalse);
    });
  });
}
