import 'package:funcoes_anonimas/ver_aprovacao/verificar_aprovacao.dart' as aprovacao;

String show(){
  var nota1 = 7.0;
  var nota2 = 8.0;
  var media = 7.0;
  var quantidadePresenca = 70;
  var cargaHorariaDisciplina = 80;
  var percentualMinimoPresenca = 75.0;
  return aprovacao.verificarAprovacao(nota1, nota2, media, quantidadePresenca, cargaHorariaDisciplina,percentualMinimoPresenca);
}

/*
Esta função tem o objetivo de verificar a aprovação pela nota e presença 
Considerando este cenário, quais são os possíveis contextos de teste?
  Usar notas abaixo da média,
  Usar notas acima da média,
  Usar quantidade de presença acima da média
  Usar quantidade de presença abaixo da média
  Abaixo de ambos os valores.

Para cada cenário, os resultados gerados estão coerentes? 
  Não

Faça a depuração e indique até onde a nota está correta.
  Até o cálculo da nota 1
Faça a depuração e indique até onde a presença está correta.
  Até o retorno do método verificarAprovacaoPresenca
Faça as alterações necessárias.
  ok
*/

