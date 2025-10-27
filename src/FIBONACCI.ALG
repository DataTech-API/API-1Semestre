Algoritmo "fibonacci"
//
//
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
//
// Disciplina   : API
// Professor    : Sabha
// Descrição    : Sequência de Fibonacci (menu 1/2)
// Autor(a)     : DataTECH
// Data atual   : 16/10/2025

Var
   // Secao de Declaracoes das variaveis
   opcao: inteiro
   i, n, termo1, termo2, proximo: inteiro
   saida: caractere

Inicio
   // Opcao inicia com valor diferente de 0 para nao encerrar de inicio
   opcao <- 101010

   enquanto opcao <> 0 faca
      escreval("=======================================")
      escreval("|        MENU - SEQUÊNCIA FIBONACCI   |")
      escreval("=======================================")
      escreval("")
      escreval("   01 - Redigir N termos (formato: Nº|valor)")
      escreval("   02 - Validador de pertencimento")
      escreval("   00 - Voltar")
      escreval("")
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
               termo1 <- 0
               termo2 <- 1

               // 1º termo(fixo) se não for >= não aparece na tela
               se n >= 1 entao
                  escreval("1|", termo1)
               fimse

               // 2º termo(fixo)
               se n >= 2 entao
                  escreval("2|", termo2)
               fimse

               // Do 3º ao n-ésimo ou 47 (Segue fórmula)
               para i de 3 ate n faca
                  proximo <- termo1 + termo2
                  escreval(i,"|",proximo)
                  termo1 <- termo2
                  termo2 <- proximo
               fimpara
            fimse
         fimse

         // Interacao para voltar ao Menu
         escreval("")
         escreva("Aperte ENTER para voltar ao Menu.")
         leia(saida)
         limpatela
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
               escreval(n, " pertence.")
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
                  escreval(n, " pertence.")
               senao
                  escreval(n, " não pertence.")
               fimse
            fimse
         fimse
         // Quando o termo2 for N, significa que pertence. No caso isso serve para validar, ele pega o número anterior e o próximo faz essa comparação

         // Interacao para voltar ao Menu
         escreval("")
         escreva("Aperte ENTER para voltar ao Menu.")
         leia(saida)
         limpatela
      fimse

      // ===== Opção inválida (mantendo padrão visual) =====
      se (opcao <> 0) e (opcao <> 1) e (opcao <> 2) entao
         escreval("Opção inválida.")
         escreval("")
         escreva("Aperte ENTER para voltar ao Menu.")
         leia(saida)
         limpatela
      fimse
   fimenquanto

fimalgoritmo
