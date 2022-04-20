/*
http://dontpad.com/aulafuncoesifpr

Atividade I
→ interfaceSalario 
→ bonificar - receber salario e o valor do bônus. Realizar o cálculo e informar se o total é maior que o salário mínimo.
→ descontar - receber salario e o valor do desconto. Realizar o cálculo e informar se o total é positivo.
→ comparar - receber dois salario. Retornar o maior salário.

Atividade II
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu

*/

import 'dart:io';

void show() {
  double salario1 = 0.00;
  double salario2 = 0.00;
  double bonusDesconto = 0.00;
  String resultado = "";
  print('''
  Escolha uma opção a ser realizada com o salário:
    01 - Bonificar.
    02 - Descontar.
    03 - Comparar.
''');
  int opcao = int.parse(stdin.readLineSync()!);
  print("Salario 1: ");
  salario1 = double.parse(stdin.readLineSync()!);

  if (opcao != 3) {
    if (opcao == 1) {
      print("Bônus: ");
      bonusDesconto = double.parse(stdin.readLineSync()!);
      resultado = interface(salario1, bonusDesconto, bonificar);
    } else {
      print("Desconto: ");
      bonusDesconto = double.parse(stdin.readLineSync()!);
      resultado = interface(salario1, bonusDesconto, descontar);
    }
  } else {
    print("Salário 2: ");
    salario2 = double.parse(stdin.readLineSync()!);
    resultado = "O maior salario é ${interface(salario1, salario2, 

    //Função anônima.
      (double salario1, double salario2) {
        if (salario1 > salario2) {
          return salario1;
        } else {
          return salario2;
        }
      }
    )}";
  }
  print(resultado);
}

//Passando um função como parâmetro.
String interface(double salario1, double valor2, Function funcao) {
  return funcao(salario1, valor2);
}

String bonificar(double salario, double bonus) {
  try {
    var valor = salario + (salario * (bonus / 100));
    if (valor > 1212.00) {
      return "o valor maior que o salario mínimo.";
    } else {
      return "O valor não é maior que o salário mínimo.";
    }
  } catch (e) {
    return "Falha ao realizar operação de bonificação";
  }
}

String descontar(double salario, double desconto) {
  try {
    var valor = salario - (salario * (desconto / 100));
    if (valor > 0) {
      return "O valor é positivo.";
    } else if (valor == 0) {
      return "O valor é igual a zero.";
    } else {
      return "O valor é negativo.";
    }
  } catch (e) {
    return "Erro ao realizar operação descontar";
  }
  
}

//Comentado o método pois foi implementada uma função anônima para realizar tal função
// double comparar(double salario1, double salario2) {
//   if (salario1 > salario2) {
//     return salario1;
//   } else {
//     return salario2;
//   }
// }
