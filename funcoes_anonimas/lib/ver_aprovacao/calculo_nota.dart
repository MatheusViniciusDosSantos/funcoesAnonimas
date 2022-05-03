//nota 1 representa 40%
//nota 2 representa 60%

double calcularMedia(double nota1, double nota2){
  nota1 = calcularNota1(nota1);
  nota2 = calcularNota2(nota2);//calcular a nota 2 não a 1
  return (nota1 + nota2) / 10;//Trocar o 2 por 10 pois a soma dos pesos é 10
}

double calcularNota1(double nota1){
  //nota1 = 0;//Nãozerar
  return nota1 * 4;
}

double calcularNota2(double nota2){
  //nota2 = 0;
  return nota2 * 6;
}
//10* 4 + 10*6
//40 + 60
//100/10
//10