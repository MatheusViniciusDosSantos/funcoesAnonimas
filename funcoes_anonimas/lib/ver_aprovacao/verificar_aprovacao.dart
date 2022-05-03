import 'package:funcoes_anonimas/ver_aprovacao/calculo_nota.dart' as nota;
import 'package:funcoes_anonimas/ver_aprovacao/calculo_presenca.dart' as presenca;

String verificarAprovacao(double nota1, double nota2, double media, int quantidadePresenca, int cargaHorariaDisciplina, double percentualMinimoPresenca){
  var aprovadoNota = verificarAprovacaoNota(nota1, nota2);
  var aprovadoPresenca = verificarAprovacaoPresenca(quantidadePresenca, cargaHorariaDisciplina, 60);
  var resultado = 'aprovado';
  if(!aprovadoNota && !aprovadoPresenca) resultado = 'reprovado por nota e presença';
  else if(!aprovadoNota) resultado = 'reprovado por nota'; //precisa mais uma condição para quando reprovado por ambas
  else if(!aprovadoPresenca) resultado = 'reprovado por presença';//Reprovado por presença não por nota 
  return resultado;
}

bool verificarAprovacaoNota(double nota1, double nota2, [double media=6]){ //Média base não pode ser 0 mas sim 6
  return (nota.calcularMedia(nota1, nota2) >= media);
}

bool verificarAprovacaoPresenca(int quantidadePresenca, int cargaHorariaDisciplina, double percentualMinimoPresenca){
  return (presenca.calcularPercentualPresenca(quantidadePresenca, cargaHorariaDisciplina) >= percentualMinimoPresenca);//Valor maior ou igual não somente maior
}
