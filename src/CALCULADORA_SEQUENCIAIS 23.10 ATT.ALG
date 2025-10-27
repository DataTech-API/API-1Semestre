Algoritmo "calculadora_sequenciais"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor  : Antonio Carlos Nicolodi
// Disciplina   : API
// Professor  : Sabha
// Descrição  : Calculadora de Sequencia Logicas
// Autor(a)   : DataTECH
// Data atual : 25/09/2025

Var
   // --- Variáveis de Controle Principal (Menu e Loop) ---
   opcao: inteiro
   saida: caractere
   // --- Variável de Loop Genérica ---
   i: inteiro
   // --- Variáveis por Função (Caso) ---
   // caso 1 (Primos)
   PrimoEntrada, ContadorPrimo, numPrimo, divPrimo, primoAnterior, primoAtual, difePrimo : inteiro
   // caso 2 (Fatorial)
   numFatorial: inteiro
   resultadoFatorial, resultadoAnterior: real
   // caso 3 (Fibonacci)
   n, termo1, termo2, proximo: inteiro
   // caso 4 (Tribonacci)
   resposta_tri, i_tri, soma_tri, v1_tri, v2_tri, v3_tri, anterior_tri, diferenca, soma_total: inteiro
   // caso 5 (Quadrado Perfeito)
   limiteQuadrados, quadradoAtual, somaAcumulada: inteiro
   // caso 6 (Sequência Geométrica)
   ordemPG,termoInicial, razaoPG,qtdeTermos : inteiro
   resultadoPG, termoDecrescente: real
   // caso 7 (Sequência de Cubos)
   inicioCubo, fimCubo: inteiro


Inicio
   opcao <- 101010 // Valor inicial para entrar no loop
   enquanto opcao <> 0 faca
      escreval("=======================================")
      escreval("|       MENU CALCULADORA         |")
      escreval("=======================================")
      escreval("")
      escreval("   01 - Números primos ")
      escreval("   02 - Fatorial ")
      escreval("   03 - Fibonacci ")
      escreval("   04 - Tribonacci ")
      escreval("   05 - Quadrado perfeito")
      escreval("   06 - Sequência geométrica")
      escreval("   07 - Sequência de cubos")
      escreval("   08 - Sequência alternada *EM BREVE*")
      escreval("   09 - Números triangulares *EM BREVE*")
      escreval("   00 - Sair")
      escreval("")
      escreval("=======================================")
      escreval ("Digite a opção desejada: ")
      leia (opcao)
      limpatela

      escolha (opcao)
         //Numeros Primos//
      caso 1
         escreval("--------------------------------------------------------------")
         escreval("|                    NÚMEROS PRIMOS                          |")
         escreval("--------------------------------------------------------------")
         escreval("| Lista os 'n' primeiros números primos                      |")
         escreval("| e mostra a distância entre eles.                           |")
         escreval("--------------------------------------------------------------")
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

            para i de 1 ate numPrimo faca
               se (numPrimo mod i = 0) entao
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
         //Fatorial//
      caso 2
         escreval("--------------------------------------------------------------")
         escreval("|                         FATORIAL                           |")
         escreval("--------------------------------------------------------------")
         escreval("| Calcula o fatorial de um número positivo                   |")
         escreval("| e exibe o processo de multiplicação passo a passo.         |")
         escreval("--------------------------------------------------------------")

         escreva ("Informe um número de 0 até 170 para calcular o fatorial: ")
         leia (numFatorial)
         limpatela

         //Tratamento de excecao
         enquanto (numFatorial < 0) ou (numFatorial > 170) faca
            escreval ("Entrada inválida!")
            escreval ("Digite um número de 0 até 170 para calcular o fatorial.")
            leia (numFatorial)
            limpatela
         fimenquanto

         resultadoFatorial <- 1
         para i <- 1 ate numFatorial faca
            resultadoAnterior <- resultadoFatorial
            resultadoFatorial <- resultadoFatorial * i
            escreval((resultadoAnterior), " X", i, " =", resultadoFatorial)
         fimpara

         //Fibonacci//
      caso 3
         escreval("=======================================")
         escreval("|        MENU - SEQUÊNCIA FIBONACCI   |")
         escreval("=======================================")
         escreval("")
         escreval("   01 - Redigir N termos (formato: Nº|valor)")
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
         fimse
         // Quando o termo2 for N, significa que pertence. No caso isso serve para validar, ele pega o número anterior e o próximo faz essa comparação
         //Tribonacci//
      caso 4
         escreval("--------------------------------------------------------------")
         escreval("|                SEQUÊNCIA DE TRIBONACCI                     |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera 'n' termos de uma seq. de Tribonacci                  |")
         escreval("| e exibe a soma e as diferenças.                            |")
         escreval("--------------------------------------------------------------")
         escreval("A sucessão de Tribonacci é uma sequência de números inteiros,")
         escreval("na qual cada termo subsequente corresponde à soma dos três")
         escreval("anteriores.")
         escreval("")
         escreval("Informe até qual posição deseja ver a sequência:")
         leia(resposta_tri)
         limpatela

         //loop caso a entrada do usuario seja um numero negativo
         enquanto resposta_tri <= 0 faca
            escreval("Resposta inválida, informe um número inteiro positivo.")
            escreval("Informe até qual posição deseja ver a sequência:")
            leia(resposta_tri)
            limpatela
         fimenquanto

         //inicializa a variavel com 1 para ter com oq somar no começo pois as outras
         //variaveis valem zero inicialmente
         v1_tri <- 0
         v2_tri <- 0
         v3_tri <- 1

         escreval("Sequência de Tribonacci e a diferença entre termos:")
         escreval("--------------------------------------------------")

         anterior_tri <- 0
         soma_total <- 0

         //inicio do loop, contas com a soma das 3 variaveis e exibição do resultado
         para i_tri de 1 ate resposta_tri faca
            soma_tri <- v1_tri + v2_tri + v3_tri

            // exibição da sequência e cálculo da diferença
            se i_tri = 1 entao
               escreval("Termo ", i_tri, ": ", soma_tri)
            senao
               diferenca <- soma_tri - anterior_tri
               escreval("Termo ", i_tri, ": ", soma_tri, " | Diferença: ", diferenca)
            fimse

            // acumula a soma total
            soma_total <- soma_total + soma_tri

            //atualiza as variaveis com os resultados anteriores para o proximo calculo
            anterior_tri <- soma_tri
            v1_tri <- v2_tri
            v2_tri <- v3_tri
            v3_tri <- soma_tri
         fimpara

         escreval("--------------------------------------------------")
         escreval("Soma acumulada até o ", resposta_tri, "º termo: ", soma_total)

         //Quadrados Perfeitos//
      caso 5
         escreval("--------------------------------------------------------------")
         escreval("|                  QUADRADOS PERFEITOS                       |")
         escreval("--------------------------------------------------------------")
         escreval("| Mostra os quadrados perfeitos em ordem crescente           |")
         escreval("| e exibe a soma acumulada da sequência.                     |")
         escreval("--------------------------------------------------------------")
         escreval("Digite um número para obter os quadrados perfeitos crescentes")
         leia (limiteQuadrados)
         limpatela

         somaAcumulada <- 0
         escreval("N²   SA")
         para i de 1 até limiteQuadrados faca
            quadradoAtual <- i*i
            somaAcumulada <- somaAcumulada + quadradoAtual
            escreval(quadradoAtual, "   ", somaAcumulada)
         fimpara
         escreval("***(SA)- Soma Acumulada")

         //Sequencia Geometrica
      caso 6
         Limpatela
         escreval("--------------------------------------------------------------")
         escreval("|                  SEQUÊNCIA GEOMÉTRICA                      |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera 'n' termos de uma sequência geométrica                |")
         escreval("| e os exibe na ordem normal e inversa.                      |")
         escreval("--------------------------------------------------------------")
         Escreval("DIGITE [0] CRESCENTE / [1] DECRESCENTE")
         escreval("")
         leia(ordemPG)

         //Tratamento de excecao
         enquanto (ordemPG <> 0) e (ordemPG <> 1) faca
            limpatela
            escreval("Entrada inválida!")
            Escreval("Digite [0] Crescente / [1] Decrescente")
            escreval("")
            leia(ordemPG)
         fimenquanto

         //Sequencia Geometrica Crescente
         se ordemPG = 0 entao
            limpatela
            escreval("Sequência Geométria Crescente")
            escreval("---------------------------------------")
            escreva("Digite o primeiro termo: ")
            leia(termoInicial)
            escreva("Digite a razão: ")
            leia(razaoPG)
            escreva("Digite a quantidade de termos: ")
            leia(qtdeTermos)
            limpatela

            //Cálculo - Crescente
            resultadoPG <- termoInicial
            escreval("A sequencia geometrica crescente é: ")
            Para i de 1 ate qtdeTermos faca
               Escreval(i, "|", resultadoPG)
               resultadoPG <- resultadoPG * razaoPG
            fimpara

            //Sequencia Geometrica Decrescente
         senao
            limpatela
            escreval("Sequência Geométria Decrescente")
            escreval("---------------------------------------")
            escreva("Digite o primeiro termo: ")
            leia(termoInicial)
            escreva("Digite a razão: ")
            leia(razaoPG)
            escreva("Digite a quantidade de termos: ")
            leia(qtdeTermos)
            limpatela

            //Cálculo - Decrescente
            resultadoPG <- termoInicial
            Para i de 1 ate qtdeTermos faca
               resultadoPG <- resultadoPG * razaoPG
            fimpara

            termoDecrescente <- resultadoPG

            para i de 1 ate qtdeTermos faca
               termoDecrescente <- termoDecrescente / razaoPG
               escreval(i,"|", termoDecrescente)
            fimpara
         fimse

         //Sequencia de cubos
      caso 7
         limpatela
         escreval("--------------------------------------------------------------")
         escreval("|                    CUBOS VS. QUADRADOS                     |")
         escreval("--------------------------------------------------------------")
         escreval("| Compara visualmente os números ao cubo                     |")
         escreval("| com os seus respectivos quadrados.                         |")
         escreval("--------------------------------------------------------------")
         escreval("Digite o número da posição em que deseja iniciar:")
         leia(inicioCubo)
         escreval("Digite até qual posição deseja visualizar:")
         leia(fimCubo)
         limpatela
         escreval("---------------------------------------------")
         escreval(" Quadrados   Cubos")
         escreval("---------------------------------------------")
         //Operação da sêquencia com o contador
         para i de inicioCubo ate fimCubo faca
            escreval(i, "² =", (i*i), ",", i, "³ =", (i*i*i))
         fimpara

         //Sequência Alternada
      caso 8
         escreval("--------------------------------------------------------------")
         escreval("|             ADIÇÃO/SUBTRAÇÃO ALTERNADA                     |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera uma sequência com adição e subtração alternadas       |")
         escreval("| (ex: +3, -2).                                              |")
         escreval("--------------------------------------------------------------")
         escreval("EM BREVE!")

         //Números Triangulares
      caso 9
         escreval("--------------------------------------------------------------")
         escreval("|                  NÚMEROS TRIANGULARES                      |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera 'k' números triangulares                              |")
         escreval("| consecutivos a partir da posição 'n'.                      |")
         escreval("--------------------------------------------------------------")
         escreval("EM BREVE!")

         //Sair
      caso 0
         escreval("Saindo da calculadora...")

         //Tratamento de opção inválida
      outrocaso
         escreval("---------------------------------------")
         escreval("         Opção inválida!         ")
         escreval("Por favor, digite um número do menu.")
         escreval("---------------------------------------")

      fimescolha // Fim da estrutura 'escolha'

      // Bloco de pausa centralizado
      // Só executa se a opção não for SAIR (0)
      se (opcao <> 0) entao
         escreval("")
         escreva("Aperte ENTER para voltar ao Menu.")
         leia(saida) // REVERTIDO DE 'pausa'
         limpatela
      fimse

   fimenquanto // Fim do loop principal
fimalgoritmo