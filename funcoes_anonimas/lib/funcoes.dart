import 'dart:io';

double nota1 = 0;
double nota2 = 0;

void show() {
  print("Arquivo de funções");
}

void verificarAprovacao(double nota1, double nota2) {
  if (calcularMedia(nota1, nota2) >= 6) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}

void verificarMaiorNota(double nota1, double nota2) {}

double calcularMedia(double nota1, double nota2) {
  return (nota1 + nota2) / 2;
}

void mostrarNaTela() {
  print("Digite a nota 1: ");
  nota1 = double.parse(stdin.readLineSync()!);
  print("Digite a nota 2: ");
  nota2 = double.parse(stdin.readLineSync()!);
  print("Escolha o tipo o que deseja fazer");

  print('''
  1 - Verificar a aprovação.
  2 - Verificar maior nota.
  3 - Calcular média.
  ''');
  var acao = stdin.readLineSync();
  if (acao == '1') {
    verificarAprovacao(nota1, nota2);
  } else if (acao == '2') {
    verificarMaiorNota(nota1, nota2);
  } else if (acao == '3') {
    calcularMedia(nota1, nota1);
  } else {
    print("Digite uma das opções na próxima vez. Exemplo: 1");
  }
}
