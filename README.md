# 🧮 Calculadora em Dart

Uma calculadora simples de linha de comando desenvolvida em **Dart**, capaz de interpretar expressões matemáticas com as operações básicas: soma (`+`), subtração (`-`), multiplicação (`*`) e divisão (`/`).  
O projeto utiliza o pacote [`expressions`](https://pub.dev/packages/expressions) para fazer o parsing e a avaliação das expressões digitadas.

---

## 📦 Requisitos

- [Dart SDK](https://dart.dev/get-dart) (>= 3.0.0)
- Dependência externa:
  ```yaml
  dependencies:
    expressions: ^0.2.5+2
  ```

## ▶️ Como executar

Clone ou copie o código do repositório/projeto.

### Instale as dependências:
  ```Bash
    dart pub get
  ```
### Rode o programa:
  ```Bash
    dart run
  ```

## Exemplos de entradas
  ```Bash
    >> 2+2
    Resultado: 4
    
    >> 10/3
    Resultado: 3.3333333333333335
    
    >> (5+3)*2
    Resultado: 16
    
    >> 1/0
    Erro: divisão por zero!
    
    >> abc
    Expressão inválida!
    
    >> s
    Encerrando calculadora...
  
  ```

