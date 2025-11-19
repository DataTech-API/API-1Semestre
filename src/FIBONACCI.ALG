Algoritmo "Sequência de Fibonacci"

Var
n, termo1, termo2, proximo, opcao, i: inteiro
inicio
//Fibonacci//
caso 3
   escreval("=======================================")
   escreval("|        MENU - SEQUÊNCIA FIBONACCI   |")
   escreval("=======================================")
   escreval("")
   escreval("   01 - Apresenta os N termos de Fibonacci (formato: Nº|valor)")
   escreval("   02 - Validador de pertencimento")
   escreval("=======================================")
   escreva ("Digite a opção desejada: ")
   leia (opcao)
   limpatela

   // ===== Opção 1: Redigir N termos =====
   se opcao = 1 entao
      escreval("---------------------------------------")
      escreval("|      Sequência de Fibonacci         |")
      escreval("---------------------------------------")
      escreval("Gera uma sequência onde cada número é a")
      escreval("soma dos dois anteriores.")
      escreval("---------------------------------------")
      escreva("Digite o número de termos da sequência: ")
      leia(n)
      limpatela

      // Validações
      se n < 0 entao
         escreval("Entrada inválida! O número de termos não pode ser negativo.")
      senao
         se n > 47 entao
            escreval("Não é possível redigir tantos termos. Digite um número até 47")
         senao
            // Base da sequência
            escreval("Posição | Valor")
            escreval("----------------------")
            termo1 <- 0
            termo2 <- 1

            // 1º termo(fixo) se não for >= não aparece na tela
            // 1º termo
            se n >= 1 entao
               escreval(1:3, " | ", termo1)
            fimse

            // 2º termo
            se n >= 2 entao
               escreval(2:3, " | ", termo2)
            fimse

            // Demais termos
            para i de 3 ate n faca
               proximo <- termo1 + termo2
               escreval(i:3, " | ", proximo)
               termo1 <- termo2
               termo2 <- proximo
            fimpara
         fimse
      fimse
   fimse



   // ===== Opção 2: Validador de pertencimento =====
   se opcao = 2 entao
      escreval("---------------------------------------")
      escreval("|      Validador de Pertencimento     |")
      escreval("---------------------------------------")
      escreval("Verifica se um número informado está na")
      escreval("Sequência de Fibonacci.")
      escreval("---------------------------------------")
      escreva("Digite um número inteiro: ")
      leia(n)
      limpatela

      se n < 0 entao
         escreval("Entrada inválida! O número não pode ser negativo.")
      senao
         se (n = 0) ou (n = 1) entao
            escreval(n, " pertence à sequência de Fibonacci.")
            // Esses dois são fixos e precisam de tratamentos travados e específicos
         senao
            termo1 <- 0
            termo2 <- 1
            enquanto n > termo2 faca
               proximo <- termo1 + termo2
               termo1  <- termo2
               termo2  <- proximo
            fimenquanto
            // pega o termo dois do anterior e soma ao próximo que seria a soma anterior

            se termo2 = n entao
               escreval(n, " pertence à sequência de Fibonacci.")
            senao
               escreval(n, " não pertence à sequência de Fibonacci.")
            fimse
         fimse
      fimse
   fimse
   // Quando o termo2 for N, significa que pertence. No caso isso serve para validar, ele pega o número anterior e o próximo faz essa comparação
   fimalgoritmo