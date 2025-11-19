algoritmo "Numeros_Triangulares"
// Gera k números triangulares a partir da posição inicial n
// Fórmula do número triangular: T(i) = i * (i + 1) / 2

var
   n, j, i : inteiro
   triangular: real

inicio

   escreva("Informe a posição inicial da Sequência Triangular : ")
   leia(n)

   enquanto (n <= 0) faca
      escreval("Número",n," inválido! Informe um número inteiro e positivo.")
      leia (n)
      limpatela
   fimenquanto

   escreva("Informe quantas outras posições deseja gerar: ")
   leia(j)
   
    Limpatela

   escreval(" ")
   escreval("O segmento escolhido da Sequência tiangular é:")

   para i de n ate n + j  faca
      triangular <- (i * (i + 1)) / 2
      escreval("Para a posição (", i,") = o número triangular é: ", triangular)
   fimpara


fimalgoritmo