Algoritmo "semnome"
// Disciplina   : algoritmos/api
// Professor   : sabah
// Descrição   : menu da calculadora
// Autor(a)    : andre s junqueira
// Data atual  : 25/09/2025
Var
   // Seção de Declarações das variáveis
   opcao:inteiro

Inicio
   enquanto opcao <> 6 faca
      escreval ("=======================================")
      escreval ("         MENU CALCULADORA             ")
      escreval ("=======================================")
      escreval ("")
      escreval ("   01 - Numeros Primos ")
      escreval ("   02 - Fatorial ")
      escreval ("   03 - Fibonacci")
      escreval ("   04 - Tribonacci")
      escreval ("   05 - Quadrado Perfeito")
      escreval ("   06 - Sair")
      escreval ("")
      escreval ("=======================================")
      escreval ("Digite a opção desejada: ")
      leia (opcao)
      limpatela

      se opcao = 1 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 01 - Numeros Primos")
         escreval ("---------------------------------------")
      fimse

      se opcao = 2 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 02 - Fatorial")
         escreval ("---------------------------------------")
      fimse

      se opcao = 3 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 03 - Sequencia de Fibonacci")
         escreval ("---------------------------------------")
      fimse

      se opcao = 4 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 04 - Sequencia de Tribonacci")
         escreval ("---------------------------------------")
      fimse

      se opcao = 5 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 05 - Quadrados Perfeitos")
         escreval ("---------------------------------------")
      fimse

      se opcao = 6 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 06 - SAIR")
         escreval ("---------------------------------------")
      fimse
   fimenquanto

Fimalgoritmo