Algoritmo "Fatorial"
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/09/2025
Var
   N, I: inteiro
   Resultado, ResultadoAnt, opcao: real
   Repetir: caractere

Inicio
   // Exibindo o Fatorial
   repita
      escreva ("Informe o fatorial que deseja calcular: ")
      leia (N)
      escreval ("")
      limpatela
      Resultado <- 1
      para I <- 1 ate N passo 1 faca
         ResultadoAnt <- Resultado
         Resultado <- Resultado * I

         se I = 1 entao
            escreval (I, " =", Resultado:0:0)
         senao
            escreval ((ResultadoAnt), " X", I, " =", Resultado)

         fimse
      fimpara


      escreval ("")
      escreval ("O fatorial de:", N, " é igual a:", Resultado)
      escreval ("")

      // Exibindo em lista o Fatorial
      Resultado <- 1
      para I <- 1 ate N faca
         ResultadoAnt <- Resultado
         Resultado <- Resultado * I

         se I = 1 entao
            escreva ("Sequência:", Resultado)
         senao
            escreva (" X", I)

         fimse
      fimpara

      escreva (" =", Resultado)
      escreval ("")

      //Menu
      escreval ("")
      repita
         escreval ("Deseja calcular mais um fatorial? sim/não ")
         leia (Repetir)
         se (Repetir <> "sim") e (Repetir <> "não") entao
            limpatela
            escreval ("Entrada inválida!")
         fimse
      até (Repetir="sim") ou (Repetir="não")
      limpatela
      escreval ("Resultado anterior: =", Resultado)
      escreval ("")

   até (Repetir = "não")

   escreval ("Poxa, você saiu da sequência! :( ")

Fimalgoritmo