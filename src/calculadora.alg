Algoritmo "calculadora_sequenciais"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

// Disciplina   : API
// Professor   : Sabha
// Descrição   : Calculadora de Sequencia Logicas
// Autor(a)    : DataTECH
// Data atual  : 25/09/2025

Var
   // Secao de Declaracoes das variaveis
   opcao:inteiro
   i, n, quadrado,SomaAcumulada: inteiro
   numero1,numero2,razao:inteiro
   Resultado, ResultadoAnt: real
   ordem: inteiro
   Repetir, saida: caractere
   menos: real

Inicio
   //Opcao inicia com 101010 pois o padrão é iniciar com 0, o que fecharia
   //o programa
   opcao <- 101010
   enquanto opcao <> 0 faca
      escreval("=======================================")
      escreval("|       MENU CALCULADORA         |")
      escreval("=======================================")
      escreval("")
      escreval("   01 - Números primos *EM BREVE*")
      escreval("   02 - Fatorial ")
      escreval("   03 - Fibonacci *EM BREVE*")
      escreval("   04 - Tribonacci *EM BREVE*")
      escreval("   05 - Quadrado perfeito")
      escreval("   06 - Sequência geométrica")
      escreval("   07 - Sequência de cubos")
      escreval("   08 - Sequência alternada")
      escreval("   09 - Números triangulares")
      escreval("   00 - Sair")
      escreval("")
      escreval("=======================================")
      escreval ("Digite a opção desejada: ")
      leia (opcao)
      limpatela

      escolha (opcao)
         //Numeros Primos//
         caso 1
            escreval("---------------------------------------")
            escreval("|       Números Primos         |")
            escreval("---------------------------------------")
            escreval("Identifica números que são divisíveis")
            escreval("apenas por 1 e por eles próprios.")
            escreval("---------------------------------------")
            escreval("EM BREVE!")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Fatorial//
         caso 2
            escreval("----------------------------------------")
            escreval("|          Fatorial           |")
            escreval("----------------------------------------")
            escreval("Calcula o produto de um número por todos")
            escreval("os seus antecessores inteiros positivos.")
            escreval("----------------------------------------")

            escreva ("Informe um número de 0 até 170 para calcular o fatorial: ")
            leia (N)
            limpatela
            //Tratamento de excecao
            enquanto (N<0) ou (N>170) faca
               escreval ("Entrada inválida!")
               escreval ("Digite um número de 0 até 170 para calcular o fatorial.")
               limpatela
            fimenquanto

            //Fórmula Fatorial (N! = N * (N - 1) * ... * 1)
            //Variável Resultado recebe 1 pois qualquer número multiplicado por 0 = 0.
            Resultado <- 1
            para I <- 1 ate N faca
               ResultadoAnt <- Resultado
               Resultado <- Resultado * I
               escreval((ResultadoAnt), " X", I, " =", Resultado)
            fimpara
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Fibonacci//
         caso 3
            escreval("---------------------------------------")
            escreval("|     Sequência de Fibonacci     |")
            escreval("---------------------------------------")
            escreval("Gera uma sequência onde cada número é a")
            escreval("soma dos dois anteriores.")
            escreval("---------------------------------------")
            escreval("EM BREVE!")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Tribonacci//
         caso 4
            escreval("---------------------------------------")
            escreval("     Sequência de Tribonacci       ")
            escreval("---------------------------------------")
            escreval("Gera uma sequência onde cada número é a")
            escreval("soma dos três anteriores")
            escreval("---------------------------------------")
            escreval("EM BREVE!")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Quadrados Perfeitos//
         caso 5
            escreval("---------------------------------------")
            escreval("|      Quadrados Perfeitos       |")
            escreval("---------------------------------------")
            escreval("Verifica se um número é o resultado de outro")
            escreval("número inteiro multiplicado por si mesmo.")
            escreval("---------------------------------------")
            escreval("Digite um número para obter os quadrados perfeitos crescentes")
            leia (n)
            limpatela
            //Formula Quadrados Perfeito (I * I) = x; N é até quando
            //você deseja um número multiplicado.
            SomaAcumulada <- 0
            escreval("N²   SA")
            para i de 1 até N faca
               quadrado <- i*i
               SomaAcumulada <-somaAcumulada + quadrado
               escreval(quadrado, "   ", SomaAcumulada)
            fimpara
            escreval("***(SA)- Soma Acumulada")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Sequencia Geometrica
         caso 6
            Limpatela
            escreval("---------------------------------------")
            escreval("|     Sequencia geométrica       |")
            escreval("---------------------------------------")
            Escreval("Digite [0] Crescente / [1] Decrescente")
            escreval("")
            leia(ordem)

            //Tratamento de excecao
            enquanto (ordem <> 0) e (ordem <> 1) faca // Corrigido para aceitar 0 ou 1
               limpatela
               escreval("Entrada inválida!")
               Escreval("Digite [0] Crescente / [1] Decrescente")
               escreval("")
               leia(ordem)
            fimenquanto

            //Sequencia Geometrica Crescente
            se ordem = 0 entao
               limpatela
               escreval("Sequência Geométria Crescente")
               escreval("---------------------------------------")
               escreva("Digite o primeiro termo: ")
               leia(numero1)
               escreva("Digite a razão: ")
               leia(razao)
               escreva("Digite a quantidade de termos: ")
               leia(numero2)
               limpatela

               //Cálculo - Crescente
               resultado <- numero1
               escreval("A sequencia geometrica crescente é: ")
               Para i de 1 ate numero2 faca
                  Escreval(i, "|", resultado)
                  resultado<-resultado*razao
               fimpara

               //Interacao para voltar ao Menu
               escreval("")
               escreva("Aperte ENTER para voltar ao Menu.")
               leia(saida)
               limpatela

            //Sequencia Geometrica Decrescente
            senao
               limpatela
               // Corrigido o título que estava "Crescente" no seu original
               escreval("Sequência Geométria Decrescente")
               escreval("---------------------------------------")
               escreva("Digite o primeiro termo: ")
               leia(numero1)
               escreva("Digite a razão: ")
               leia(razao)
               escreva("Digite a quantidade de termos: ")
               leia(numero2)
               limpatela

               //Cálculo - Decrescente
               resultado <- numero1
               Para i de 1 ate numero2 faca
                  resultado<-resultado*razao
               fimpara

               menos<-resultado

               para i de 1 ate numero2 faca
                  menos <- menos/razao
                  escreval(i,"|", menos)
               fimpara

               //Interacao para voltar ao Menu
               escreval("")
               escreva("Aperte ENTER para voltar ao Menu.")
               leia(saida)
               limpatela
            fimse

         //Sequencia de cubos
         caso 7
            limpatela
            escreval("---------------------------------------")
            escreval("|     Sequencia de cubos         |")
            escreval("---------------------------------------")
            escreval("Gera uma sequência de números que são o resultado")
            escreval("de um inteiro elevado à terceira potência")
            escreval("---------------------------------------")
            escreval("Digite o número da posição em que deseja iniciar:")
            leia(numero1)
            escreval("Digite até qual posição deseja visualizar:")
            leia(numero2)
            limpatela
            escreval("---------------------------------------------")
            escreval(" Quadrados   Cubos")
            escreval("---------------------------------------------")
            //Operação da sêquencia com o contador
            para i de numero1 ate numero2 faca
               escreval(i, "² =", (i*i), ",", i, "³ =", (i*i*i))
            fimpara
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Sequência Alternada
         caso 8
            escreval("---------------------------------------")
            escreval("|     Sequência Alternada      |")
            escreval("---------------------------------------")
            escreval("Cria uma sequência somando e subtraindo")
            escreval("termos de forma alternada.")
            escreval("---------------------------------------")
            escreval("EM BREVE!")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Números Triangulares
         caso 9
            escreval("---------------------------------------")
            escreval("|     Números Triangulares     |")
            escreval("---------------------------------------")
            escreval("Calcula o número que pode ser representado pela")
            escreval("soma dos inteiros consecutivos a partir de 1.")
            escreval("---------------------------------------")
            escreval("EM BREVE!")
            //Interacao para voltar ao Menu
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

         //Sair
         caso 0
            escreval("Saindo da calculadora...")
            // Nenhuma ação é necessária aqui, o loop 'enquanto'
            // vai detectar que 'opcao' é 0 e vai parar.

         //Tratamento de opção inválida
         outrocaso
            escreval("---------------------------------------")
            escreval("         Opção inválida!         ")
            escreval("Por favor, digite um número do menu.")
            escreval("---------------------------------------")
            escreval("")
            escreva("Aperte ENTER para voltar ao Menu.")
            leia(saida)
            limpatela

      fimescolha // Fim da estrutura 'escolha'

   fimenquanto // Fim do loop principal
fimalgoritmo