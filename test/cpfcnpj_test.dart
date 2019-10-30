import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:test/test.dart';

void main() {
  group('Testar biblioteca', () {

    setUp(() {
      
    });

    test('Teste de CPF', () {
      expect(CPF.isValid(null), isFalse);
      expect(CPF.isValid("123"), isFalse);
      expect(CPF.isValid("00000000000"), isFalse);
      expect(CPF.isValid("11111111111"), isFalse);
      expect(CPF.isValid("123.717.730-86"), isFalse);
      expect(CPF.isValid("123.717.730-95"), isFalse);
      expect(CPF.isValid("123.717.730-85"), isTrue);
      expect(CPF.isValid("12371773085"), isTrue);

      expect(CPF.format("12371773085"), "123.717.730-85");
      expect(CPF.format("123.717.730-85"), "123.717.730-85");
      expect(CPF.format("11111111111"), "111.111.111-11");
      expect(CPF.format("123"), "123");
    });

    test('Teste de CNPJ', () {
      expect(CNPJ.isValid(null), isFalse);
      expect(CNPJ.isValid("123"), isFalse);
      expect(CNPJ.isValid("00000000000000"), isFalse);
      expect(CNPJ.isValid("11111111111111"), isFalse);
      expect(CNPJ.isValid("43.814.971/0001-89"), isFalse);
      expect(CNPJ.isValid("43.814.971/0001-98"), isFalse);
      expect(CNPJ.isValid("43.814.971/0001-88"), isTrue);
      expect(CNPJ.isValid("43814971000188"), isTrue);

      expect(CNPJ.format("43814971000188"), "43.814.971/0001-88");
      expect(CNPJ.format("43.814.971/0001-88"), "43.814.971/0001-88");
      expect(CNPJ.format("11111111111111"), "11.111.111/1111-11");
      expect(CNPJ.format("123"), "123");
    });
  });
}
