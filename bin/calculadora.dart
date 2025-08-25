import 'dart:io';

void main() {
  print("+ / Calculadora - *  ");
  print("Digite expressões (ex: 1+1, 2*3, 5/2, 7-4).");
  print("Digite 's' para sair.");

  while (true) {
    print(">> ");
    String? input = stdin.readLineSync();

    if (input == null) continue;
    if (input.toLowerCase() == 's') {
      print("Encerrando calculadora...");
      break;
    }

    if (input.contains('+')) {
      var partes = input.split('+');
      var num1 = double.tryParse(partes[0].trim());
      var num2 = double.tryParse(partes[1].trim());
      if (num1 != null && num2 != null) {
        print("Resultado: ${num1 + num2}");
      } else {
        print("Entrada inválida!");
      }
    } else if (input.contains('-')) {
      var partes = input.split('-');
      var num1 = double.tryParse(partes[0].trim());
      var num2 = double.tryParse(partes[1].trim());
      if (num1 != null && num2 != null) {
        print("Resultado: ${num1 - num2}");
      } else {
        print("Entrada inválida!");
      }
    } else if (input.contains('*')) {
      var partes = input.split('*');
      var num1 = double.tryParse(partes[0].trim());
      var num2 = double.tryParse(partes[1].trim());
      if (num1 != null && num2 != null) {
        print("Resultado: ${num1 * num2}");
      } else {
        print("Entrada inválida!");
      }
    } else if (input.contains('/')) {
      var partes = input.split('/');
      var num1 = double.tryParse(partes[0].trim());
      var num2 = double.tryParse(partes[1].trim());
      if (num1 != null && num2 != null) {
        if (num2 == 0 || num1 == 0) {
          print("Erro: divisão por zero!");
        } else {
          print("Resultado: ${num1 / num2}");
        }
      } else {
        print("Entrada inválida!");
      }
    } else {
      print("Expressão não reconhecida! Use +, -, * ou /.");
    }
  }
}
