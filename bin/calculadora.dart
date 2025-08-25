import 'dart:io';
import 'package:expressions/expressions.dart';

void main() {
  print("+ - Calculadora / *  ");
  print("Digite expressões (ex: 1+1, 2*3, 5/2, 7-4, 2+2/2).");
  print("Digite 's' para sair.");

  while (true) {
    stdout.write(">> ");
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      continue;
    }

    if (input.toLowerCase() == 's') {
      print("Encerrando calculadora...");
      break;
    }

    try {
      final expression = Expression.parse(input);
      final evaluator = const ExpressionEvaluator();
      final result = evaluator.eval(expression, {});

      if (result == null) {
        print("Expressão inválida!");
        continue;
      }

      if (result is num && (result.isInfinite || result.isNaN)) {
        print("Erro: divisão por zero!");
      } else if (result is num && result % 1 == 0) {
        print("Resultado: ${result.toInt()}");
      } else {
        print("Resultado: $result");
      }
    } catch (e) {
      print("Erro ao avaliar expressão!");
    }
  }
}
