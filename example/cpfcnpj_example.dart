import 'package:cpfcnpj/cpfcnpj.dart';

main() {
  
  // Validar CPF
  if (CPF.isValid("123.717.730-86")) {
    print("Este CPF é válido.");
  } else {
    print("Este CPF é inválido.");
  }

  // Validar CNPJ
  if (CNPJ.isValid("43.814.971/0001-89")) {
    print("Este CNPJ é válido.");
  } else {
    print("Este CNPJ é inválido.");
  }

  // Formatar CPF
  print(CPF.format("12371773085")); // 123.717.730-85

  // Formatar CNPJ
  print(CNPJ.format("43814971000188")); // 43.814.971/0001-88

}
