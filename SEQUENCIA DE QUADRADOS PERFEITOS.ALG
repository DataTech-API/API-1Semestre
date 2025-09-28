Algoritmo "QuadradosPerfeitos"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/09/2025
Var
   // Seção de Declarações das variáveis
   i, n, quadrado,SomaAcumulada: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval ("Digite um número para obter os quadrados perfeitos em ordem crescente")
   leia (n)
   limpatela
   SomaAcumulada <- 0
   para i de 1 até N faça
      quadrado <- i*i
      SomaAcumulada <-somaAcumulada + quadrado
      escreval(quadrado, "|", SomaAcumulada)
   fimpara
Fimalgoritmo
