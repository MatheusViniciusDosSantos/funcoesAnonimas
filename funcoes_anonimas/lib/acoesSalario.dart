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

import 'dart:ffi';
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
    })}";
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

//Função que adiciona o salario ao valor total
void adicionarSalario(double valor, double salario) {
  if (validaPositivo(valor)) {
    print(valor + salario);
  }
}

//Função que valida se o valor é positivo
bool validaPositivo(double valor) {
  if (valor > 0) {
    return true;
  } else {
    return false;
  }
}

//Função que adiona o salario ao valor total com função anônima
void adicionarSalario2(double valor, double salario) {
  //if usando uma função
  if (interface2(valor, (double valorValidar) {
    if (valorValidar > 0) {
      return true;
    } else {
      return true;
    }
  })) {
    print(valor + salario);
  }
}

bool interface2(double valor, Function funcao) {
  return funcao(valor);
}

//Função que adicioan o salario, com arrow function
void adicionarSalario3(double valor, double salario) {
  if (interface2(valor, (double valorValidar) => (valorValidar > 0) ? true : false)) {
    print(valor + salario);
  }
}

bool interface3(double valor, Function funcao) {
  return funcao(valor);
}

//Função que valida se o valor é positivo
bool validaNegativo(double valor) {
  if (valor < 0) {
    return true;
  } else {
    return false;
  }
}

//Função que adiona o salario ao valor total com função anônima
void retiraSalario2(double valor, double salario) {
  //if usando uma função
  if (interface2(valor, (double valorValidar) {
    if (valorValidar < 0) {
      return true;
    } else {
      return true;
    }
  })) {
    print(valor + salario);
  }
}

bool interface4(double valor, Function funcao) {
  return funcao(valor);
}

//Função que adicioan o salario, com arrow function
void retiraSalario3(double valor, double salario) {
  if (interface2(
      valor, (double valorValidar) => (valorValidar < 0) ? true : false)) {
    print(valor + salario);
  }
}

bool interface5(double valor, Function funcao) {
  return funcao(valor);
}

//Função que verifica se o valor informado é maior que o dobro do salario
bool validaMaiorDobro(double valor1, double valor2) {
  if (valor2 >= valor1*2) {
    return true;
  } else {
    return false;
  }
}

//Função que verifica se o valor informado é maior que o dobro do salario com função anônima
void maisQueODobro(double valor, double salario) {
  //if usando uma função
  if (interface6(valor, salario, 
  (double valorValidar, double valor2) {
    if (valorValidar >= valor2*2) {
      return true;
    } else {
      return true;
    }
  })) {
    print("O valor $valor é maior que o dobro do salario");
  }
}

bool interface6(double valor, double salario, Function funcao) {
  return funcao(valor, salario);
}

//Função que verifica se o valor informado é maior que o dobro do salario com arrow
void maiorQueODobroArrow(double valor, double salario) {
  if (interface7(valor, salario, (double valorValidar, double valor2) => (valorValidar >= valor2 * 2) ? true : false)) {
    print(valor + salario);
  }
}

bool interface7(double valor, double salario, Function funcao) {
  return funcao(valor, salario);
}
