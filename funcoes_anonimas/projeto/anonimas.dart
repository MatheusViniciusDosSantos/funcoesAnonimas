void show() {
  print(interface());
}

String interface() {
  String mostrar = "";
  List<double> listavalores = [250.0, 300.0, 750.0];
  double desconto = 0.1;
  var valorVenda = calcularPreco(listavalores);
  //Chamo uma função que usará de parametro
  var descontoVenda = retornaDesconto(valorVenda, desconto,
      ({required double valor, double desconto = 0.0}) => valor * desconto);
  var valorTotal =
      () => descontoVenda >= 0 ? valorVenda - descontoVenda : valorVenda;
  return mostrar;
}

double calcularPreco(List<double> listavalores) {
  double valorTotal = 0.0;
  if (listavalores.isNotEmpty &&
      (validarValores(listavalores, (List<double> listavalores) {
        for (int i = 0; i < listavalores.length; i++) {
          if (!(listavalores[i] >= 0)) {
            return false;
          }
        }
        return true;
      }))) {}
  for (int i = 0; i < listavalores.length; i++) {
    valorTotal = valorTotal + listavalores[i];
  }
  return valorTotal;
}

//Função que vai retornar a validação dos parametros com outra função como base
bool validarValores(List<double> listavalores, Function validar) {
  return validar(listavalores);
}

//Função que vai retornar o valor do desconto com base no valor informado
double retornaDesconto(double valor, double desconto, Function funcao) {
  return funcao(valor: valor, desconto: desconto);
}

// double calcularPreco2(List<double> listavalores) {
//   double valorTotal = 0.0;
//   if(validarValores2(listavalores, (){
//     return listavalores[]
//   }))
  
//   for (int i = 0; i < listavalores.length; i++) {
//     valorTotal = valorTotal + listavalores[i];
//   }
//   return valorTotal;
// }

// //Função que vai retornar a validação dos parametros com outra função como base
// bool validarValores2(List<double> listavalores, Function validar) {
//   bool resultado = true;
//   for (int i = 0; i < listavalores.length; i++) {
//     if (!validar(listavalores[i])) {
//       resultado = false;
//       break;
//     }
//   }
//   return resultado;
// }
/*
void forEach(void action(E element)) {
    for (E element in this) action(element);
  }*/

  /*
domínio
escopo 
requisitos

  */

