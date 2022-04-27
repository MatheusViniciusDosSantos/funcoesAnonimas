// import 'dart:io';

// double nota1 = 0;
// double nota2 = 0;

// void show() {
//   print("Arquivo de funções");
// }

// String verificarAprovacao(double nota1, double nota2) {
//   if (calcularMedia(nota1, nota2) >= 6) {
//     return ("Aprovado");
//   } else {
//     return ("Reprovado");
//   }
// }

// String verificarMaiorNota(double nota1, double nota2) {
//   if (nota1 > nota2) {
//     return "a nota $nota1 é a maior.";
//   } else if (nota1 < nota2) {
//     return ("a nota $nota2 é a maior.");
//   } else {
//     return ("As notas tem o mesmo valor.");
//   }
// }

// double calcularMedia(double nota1, double nota2) {
//   return (nota1 + nota2) / 2;
// }

// void mostrarNaTela() {
//   print("Digite a nota 1: ");
//   nota1 = double.parse(stdin.readLineSync()!);
//   print("Digite a nota 2: ");
//   nota2 = double.parse(stdin.readLineSync()!);
//   print("Escolha o tipo o que deseja fazer");

//   print('''
//   1 - Verificar a aprovação.
//   2 - Verificar maior nota.
//   3 - Calcular média.
//   ''');
//   var acao = stdin.readLineSync();
//   var resposta = "";
//   if (acao == '1') {
//     resposta = verificarAprovacao(nota1, nota2);
//     print(resposta);
//   } else if (acao == '2') {
//     resposta = verificarMaiorNota(nota1, nota2);
//     print(resposta);
//   } else if (acao == '3') {
//     resposta = calcularMedia(nota1, nota1).toString();
//     print(resposta);
//   } else {
//     print("Digite uma das opções na próxima vez. Exemplo: 1");
//   }
// }

import 'dart:io';

/**
* verificar aprovação - 2 notas
média - 2 notas
maior nota - de 2 notas
*/

//Função que vai mostrar na tela as opções
void show() {
  print('''
  Escolha uma opção:
    01 - Verificar a aprovação.
    02 - Calcular a média.
    03 - Verifica a maior nota.
  ''');
  int opcao = int.parse(stdin.readLineSync()!);
  print("Nota 1:");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Nota 2:");
  double nota2 = double.parse(stdin.readLineSync()!);
  String resultado = "";
  if (opcao == 1) {
    resultado = interface(nota1, nota2, verificaAprovacao);
  } else if (opcao == 2) {
    //Função anônima que realiza a mesma coisa que a função nomeada calcularMedia(ela está comentada agora)
    resultado = "A média é ${interface(nota1, nota2, 
      (double nota1, double nota2) {
        double media = (nota1 + nota2) / 2;
        return media;
      }
    )}" ;
  } else if (opcao == 3) {
    resultado = "a maior nota é ${interface(nota1, nota2, 
    //Feita uma arrow function, função com apenas 1 linha e o que tem na frente da lanbda é o retorno, e usado o operador ternário para reduzir tudo para uma linha.
    (double nota1, double nota2) => (nota1 > nota2) ? nota1 : nota2
    )}";
  } else {
    resultado = "Opção inválida.";
  }

  print(resultado);
}

//Função de returno da interface
String interface(double nota1, double nota2, Function minhaFuncao) {
  return minhaFuncao(nota1, nota2);
}

//Função de verificar a aprovação
String verificaAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}

//Função de calcular a média
// double calcularMedia(double nota1, double nota2) {
//   double media = (nota1 + nota2) / 2;
//   return media;
// }

//Função de verificar maior nota
double maiorNota(double nota1, double nota2) {
  if (nota1 > nota2) {
    return nota1;
  } else {
    return nota2;
  }
}

//Função de verificar a aprovação, usando o valor mediaAprovacao como um valor opcional, uma vez que é um valor opcional,
// é necessário informar um valor padrão para quando esse valor não for informado na chamada da função.
String verificaAprovacaoComMedia(double nota1, double nota2, [double mediaAprovacao=6]) {
  double media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}

//Função de verificar a aprovação, aqui temos o chamado parametro nomeado, quando essa função for chamada será mostrado o
// nome do parametro na chamada da função, logo não é necessário que os parametros estejam na orde correta na sua chamada
// desde que o valor esteja associado a referencia correta.
String verificaAprovacaoComParametroNomeado({required double nota1, required double nota2, double mediaAprovacao = 6}) {
  double media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}
