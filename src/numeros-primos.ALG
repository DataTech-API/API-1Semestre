Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/10/2025
Var
   // Seção de Declarações das variáveis
   PrimoEntrada, ContadorPrimo, numPrimo, iPrimo, divPrimo, primoAnterior, primoAtual, difePrimo : inteiro

inicio
   escreval("=== LISTA DE NÚMEROS PRIMOS ===")
   escreva("Quantos números primos você deseja ver? ")
   Escreval ("")
   leia(PrimoEntrada)

   ContadorPrimo <- 0
   numPrimo <- 2

   limpatela
   
   escreval("")
   escreva("Sequência de números primos: ")
   escreval("")

   enquanto (ContadorPrimo < PrimoEntrada) faca
      divPrimo <- 0

      para iPrimo de 1 ate numPrimo faca
         se (numPrimo mod iPrimo = 0) entao
            divPrimo <- divPrimo + 1
         fimse
      fimpara

      se (divPrimo = 2) entao
         ContadorPrimo <- ContadorPrimo + 1
         escreval("primo:", numPrimo, "  ")
         
         se (ContadorPrimo > 1) entao
            difePrimo <- numPrimo - primoAnterior
            escreval("diferença: ", difePrimo)
         fimse
         
         primoAnterior <- numPrimo

      fimse


      numPrimo <- numPrimo + 1
   fimenquanto

   escreval("")
   escreval("=== Fim do programa ===")
fimalgoritmo