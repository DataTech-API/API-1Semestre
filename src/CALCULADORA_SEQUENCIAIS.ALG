Algoritmo "calculadora_sequenciais"
// Disciplina : API
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
   j:inteiro

   // --- Variáveis por Função (Caso) ---
   // (Primos, Fatorial, Fibonacci, Tribonnaci, Geometrica, Alternada e Triangulares)
   qtdSolicitada : inteiro

   // (Primos)
   contador, divPrimo, anterior, difePrimo : inteiro

   // (Fatorial)
   resultadoAnterior: real

   // (Fibonacci, Geometrica e Alternada)
   termo1: inteiro

   // (Fibonacci e Alternada)
   termo2: inteiro

   // (Fibonacci e Tribonacci)
   proximo: inteiro

   // (Tribonacci, Quadrado Perfeito)
   soma: inteiro

   // (Tribonacci)
   somaTotal, totalTermos:inteiro
   respostaTri: vetor[1..3] de inteiro

   // (Quadrado Perfeito)
   quadradoAtual: inteiro

   // (Sequência Geométrica)
   ordemPG, razaoPG : inteiro
   termoDecrescente : real

   // (Fatorial, Sequência Geométrica)
   resultado: real

   // (Sequência de Cubos, Triangulares)
   iniSeq: inteiro

   // (Sequência de Cubos, Quadrado Perfeito)
   fim:inteiro

   // (Primo, Fibonacci,Sequencia alternada)
   termo: inteiro

   // (Numeros Triangulares)
   triangular:real

Inicio
   opcao <- 101010 // Valor inicial para entrar no loop
   enquanto opcao <> 0 faca
      escreval("=================================================================")
      escreval("|                       MENU CALCULADORA                        |")
      escreval("=================================================================")
      escreval("")
      escreval("   01 - Números Primos ")
      escreval("   02 - Fatorial ")
      escreval("   03 - Fibonacci ")
      escreval("   04 - Tribonacci ")
      escreval("   05 - Quadrado Perfeito")
      escreval("   06 - Sequência Geométrica")
      escreval("   07 - Sequência de Cubos")
      escreval("   08 - Sequência Alternada")
      escreval("   09 - Números Triangulares")
      escreval("   00 - Sair")
      escreval("")
      escreval("=================================================================")
      escreval ("Digite a opção desejada: ")
      leia (opcao)
      limpatela

      escolha (opcao)
         //Números Primos//
      caso 1
         escreval("--------------------------------------------------------------")
         escreval("|                    NÚMEROS PRIMOS                          |")
         escreval("--------------------------------------------------------------")
         escreval("| Exibe os 'n' primeiros números primos                      |")
         escreval("| e mostra a diferença entre eles.                           |")
         escreval("--------------------------------------------------------------")
         escreva("Digite quantos números primos você deseja ver: ")
         leia(qtdSolicitada)
         //Validador
         se (qtdSolicitada <=0) entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval ("Entrada",qtdSolicitada," inválida!")
            escreval ("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")

         senao
            contador <- 0
            termo <- 2
            anterior <-2
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("                 Sequência de Números Primos:                 ")
            escreval("--------------------------------------------------------------")
            escreval("")

            enquanto (contador < qtdSolicitada) faca
               divPrimo <- 0

               para i de 1 ate termo faca
                  se (termo mod i = 0) entao
                     divPrimo <- divPrimo + 1
                  fimse
               fimpara

               se (divPrimo = 2) entao
                  contador <- contador + 1
                  escreva(" Primo:", termo:5)
                  difePrimo <- termo - anterior
                  escreval(" | Diferença:", difePrimo)
                  anterior <- termo
               fimse

               termo <- termo + 1
            fimenquanto

            escreval("")
            escreval("--------------------------------------------------------------")
         fimse

         //Fatorial//
      caso 2
         escreval("--------------------------------------------------------------")
         escreval("|                         FATORIAL                           |")
         escreval("--------------------------------------------------------------")
         escreval("| Calcula o fatorial de um número positivo                   |")
         escreval("| e exibe o processo de multiplicação passo a passo.         |")
         escreval("--------------------------------------------------------------")

         escreva("Digite um número inteiro positivo para calcular o fatorial: ")
         leia (qtdSolicitada)
         limpatela

         //Tratamento de excecao
         se (qtdSolicitada < 0) entao
            escreval("--------------------------------------------------------------")
            escreval ("Entrada",qtdSolicitada," inválida!")
            Escreval("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")

         senao
            escreval("--------------------------------------------------------------")
            escreval("                     Sequência Fatorial                       ")
            escreval("--------------------------------------------------------------")
            escreval("")

            se qtdSolicitada = 0 então
               escreval("O Fatorial de 0 é 1.")
            fimse

            resultado <- 1
            para i <- 1 ate qtdSolicitada faca
               resultadoAnterior <- resultado
               resultado <- resultado * i
               escreval((resultadoAnterior), " X", i, " =", resultado)
            fimpara
            escreval("")
            escreval("--------------------------------------------------------------")
         fimse

         //Fibonacci//
      caso 3
         escreval("--------------------------------------------------------------")
         escreval("|                        FIBONACCI                           |")
         escreval("--------------------------------------------------------------")
         escreval("01 - Exibe os N termos de Fibonacci(formato: Posição|valor)")
         escreval("02 - Calculo de termo direto")
         escreval("--------------------------------------------------------------")
         escreva ("Digite a opção desejada: ")
         leia (termo1)
         limpatela

         se (termo1 <>1) e (termo1<>2) entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("Entrada inválida!")
            escreval("--------------------------------------------------------------")
            escreval("01 - Apresenta os N termos de Fibonacci (formato: Nº|valor)")
            escreval("02 - Calculo de termo direto")
            escreval("--------------------------------------------------------------")
         senao

            // ===== Opção 1: Redigir N termos =====
            se termo1 = 1 entao
               escreval("--------------------------------------------------------------")
               escreval("|                  Sequência de Fibonacci                    |")
               escreval("--------------------------------------------------------------")
               escreval("| Gera uma sequência onde cada número é a soma dos dois      |")
               escreval("| anteriores.                                                |")
               escreval("--------------------------------------------------------------")
               escreva("Digite a quantidade de termos da sequência: ")
               leia(qtdSolicitada)
               limpatela

               // Validações
               se qtdSolicitada <=0 entao
                  escreval("--------------------------------------------------------------")
                  escreval("Entrada",qtdSolicitada," inválida!")
                  Escreval("O número deve ser inteiro positivo.")
                  escreval("--------------------------------------------------------------")
               senao
                  //se qtdSolicitada > 47 entao
                  //   escreval("--------------------------------------------------------------")
                  //   escreval("Entrada",qtdSolicitada," inválida!")
                  //   escreval("Não é possível redigir tantos termos. Digite um número até 47.")
                  //   escreval("--------------------------------------------------------------")
                  //senao
                  // Base da sequência
                  escreval("--------------------------------------------------------------")
                  escreval("                      Sequência Fibonacci                     ")
                  escreval("--------------------------------------------------------------")
                  termo1 <- 0
                  termo2 <- 1

                  // 1º termo(fixo) se não for >= não aparece na tela
                  // 1º termo
                  se qtdSolicitada >= 1 entao
                     escreval("Posição:",1:3, " | Valor:", termo1)
                  fimse

                  // 2º termo
                  se qtdSolicitada >= 2 entao
                     escreval("Posição:",2:3, " | Valor:", termo2)
                  fimse

                  // Demais termos
                  para i de 3 ate qtdSolicitada faca
                     proximo <- termo1 + termo2
                     escreval("Posição:",i:3, " | Valor:", proximo)
                     termo1 <- termo2
                     termo2 <- proximo
                  fimpara
                  escreval("--------------------------------------------------------------")
                  //fimse
               fimse
            fimse

            // ===== Opção 2: Validador de pertencimento =====
            se termo1 = 2 entao
               escreval("--------------------------------------------------------------")
               escreval("|                 Calculo de termo direto                    |")
               escreval("--------------------------------------------------------------")
               escreval("| Informa o número que ocupa a posição desejada.             |")
               escreval("--------------------------------------------------------------")
               escreva("Digite um número inteiro: ")
               leia(termo)
               limpatela


               se termo < 0 entao
                  escreval("--------------------------------------------------------------")
                  escreval("Entrada",termo," inválida!")
                  escreval("O número deve ser inteiro positivo.")
                  escreval("--------------------------------------------------------------")
               senao
                  //se termo > 47 entao
                  //   escreval("--------------------------------------------------------------")
                  //   escreval("Entrada",termo," inválida!")
                  //   escreval("Não é possível redigir tantos termos. Digite um número até 47")
                  //   escreval("--------------------------------------------------------------")
                  //senao
                  // Base da sequência
                  termo1 <- 0
                  termo2 <- 1

                  se termo = 0 entao
                     proximo <- 1
                  senao

                     // Demais termos
                     para i de 2 ate termo - 1 faca
                        proximo <- termo1 + termo2
                        termo1 <- termo2
                        termo2 <- proximo
                     fimpara
                  fimse
                  escreval("--------------------------------------------------------------")
                  escreval("O número que ocupa a ",termo,"º posição é o",proximo)
                  escreval("--------------------------------------------------------------")
                  //fimse
               fimse
            fimse
         fimse

         //Tribonacci//
      caso 4
         escreval("--------------------------------------------------------------")
         escreval("|                 SEQUÊNCIA DE TRIBONACCI                    |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera 'n' termos de uma sequência de Tribonacci e exibe     |")
         escreval("| a soma e as diferenças.                                    |")
         escreval("--------------------------------------------------------------")
         escreval("| Tribonacci é uma sequência de números inteiros, na qual    |")
         escreval("| cada termo subsequente corresponde à soma dos três         |")
         escreval("| anteriores.                                                |")
         escreval("--------------------------------------------------------------")
         escreval("")

         //Enunciado e entrada das tres primeiras posiçôes
         para i de 1 ate 3 faca
            escreva("Digite o ",i,"° termo da sequência: ")
            leia(respostaTri[i])
         fimpara

         se (respostaTri[3] < 0) ou (respostaTri[2] < 0) ou (respostaTri[1] < 0) entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("Entrada inválida!")
            Escreval("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")
         senao
            //entrada de ate qual posição deseja
            escreva("Digite quantos termos adicionais deseja ver: ")
            leia(qtdSolicitada)
            limpatela

            //loop caso a entrada do usuario seja um numero negativo
            enquanto qtdSolicitada < 0 faça
               escreval("--------------------------------------------------------------")
               escreval("Entrada inválida!")
               Escreva("Digite um número inteiro: ")
               leia(qtdSolicitada)
               escreval("--------------------------------------------------------------")
               limpatela
            fimenquanto
            escreval("--------------------------------------------------------------")
            escreval("      Sequência de Tribonacci e a diferença entre termos      ")
            escreval("--------------------------------------------------------------")

            //iniSeq do loop para exibição dos tres primeiros termos
            totalTermos <- 3 + qtdSolicitada
            somaTotal <- 0
            i <- 1
            enquanto i < 4 faca
               somaTotal <- somaTotal + respostaTri[i]
               escreva(i:3,"° ","Termo:",respostaTri[i]:7)
               se i = 1 então
                  escreva(" | Diferença: 0")
               senão
                  escreva(" | Diferença:", respostaTri[i] - respostaTri[i - 1])
               fimse
               escreval("")

               se i = totalTermos entao
                  i <- 4
               fimse
               i <- i + 1
            fimenquanto

            //iniSeq do loop, contas com a soma das 3 variaveis e exibição do resultado
            para i de 4 ate totalTermos faca
               soma <- (respostaTri[1]+respostaTri[2]+respostaTri[3])
               somaTotal <- somaTotal + soma
               escreva(i:3,"° ","Termo:",soma:7)

               //atualiza as variaveis com os resultados anteriores para o proximo calculo
               escreva(" | Diferença:", soma - respostaTri[3])
               respostaTri[1]<-respostaTri[2]
               respostaTri[2]<-respostaTri[3]
               respostaTri[3]<-soma
               escreval("")
            fimpara
            escreval("--------------------------------------------------------------")
            escreval("A Soma até o", totalTermos, "º termo é:", somaTotal)
            escreval("--------------------------------------------------------------")

         fimse


         //Quadrados Perfeitos//
      caso 5
         escreval("--------------------------------------------------------------")
         escreval("|                   QUADRADOS PERFEITOS                      |")
         escreval("--------------------------------------------------------------")
         escreval("| Mostra os Quadrados Perfeitos em ordem Crescente           |")
         escreval("| e exibe a soma acumulada da sequência.                     |")
         escreval("--------------------------------------------------------------")
         escreva("Digite um número para obter os Quadrados Perfeitos: ")
         leia (fim)
         limpatela

         se fim <=0 entao
            escreval("--------------------------------------------------------------")
            escreval("Entrada",fim," inválida!")
            escreval("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")
         senao
            escreval("--------------------------------------------------------------")
            escreval("     Sequência de Quadrados Perfeitos e a Soma Acumulada     ")
            escreval("--------------------------------------------------------------")

            soma <- 0
            para i de 1 até fim faca
               quadradoAtual <- i*i
               soma <- soma + quadradoAtual
               escreval("Quadrado:",quadradoAtual:5, " | Soma:", soma)
            fimpara
            escreval("--------------------------------------------------------------")
         fimse

         //Sequencia Geometrica
      caso 6
         Limpatela
         escreval("--------------------------------------------------------------")
         escreval("|                  SEQUÊNCIA GEOMÉTRICA                      |")
         escreval("--------------------------------------------------------------")
         escreval("01 - Gera uma sequência na ordem Crescente                    ")
         escreval("02 - Gera uma sequência na ordem Decrescente                  ")
         escreval("--------------------------------------------------------------")
         escreva("Digite a opção desejada: ")
         leia(ordemPG)

         //Tratamento de excecao
         se (ordemPG <> 2) e (ordemPG <> 1) entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("Entrada inválida!")
            escreval("--------------------------------------------------------------")
            escreval("01 - Gera uma sequência na ordem Crescente                    ")
            escreval("02 - Gera uma sequência na ordem Decrescente                  ")
            escreval("--------------------------------------------------------------")
         senao

            //Sequencia Geometrica Crescente
            se ordemPG = 1 entao
               limpatela
               escreval("--------------------------------------------------------------")
               escreval("                Sequência Geométria Crescente                 ")
               escreval("--------------------------------------------------------------")
               escreval("| Gera 'n' termos de uma Sequência Geometrica e os exibe na  |")
               escreval("| ordem do menor para o maior.                               |")
               escreval("--------------------------------------------------------------")
               escreva("Digite o primeiro termo: ")
               leia(termo1)
               escreva("Digite a razão: ")
               leia(razaoPG)
               escreva("Digite a quantidade de termos: ")
               leia(qtdSolicitada)
               limpatela

               se qtdSolicitada <=0 entao
                  escreval("--------------------------------------------------------------")
                  escreval("Entrada",qtdSolicitada," inválida!")
                  escreval("O número deve ser inteiro positivo.")
                  escreval("--------------------------------------------------------------")
               senao

                  //Cálculo - Crescente
                  resultado <- termo1
                  escreval("--------------------------------------------------------------")
                  escreval("A Sequência Geometrica Crescente é: ")
                  escreval("--------------------------------------------------------------")
                  Para i de 1 ate qtdSolicitada faca
                     Escreval("Posição:",i:4, " | Valor:",resultado)
                     resultado <- resultado * razaoPG
                  fimpara
                  escreval("--------------------------------------------------------------")
               fimse

               //Sequencia Geometrica Decrescente
            senao
               limpatela
               escreval("--------------------------------------------------------------")
               escreval("                Sequência Geométria Decrescente               ")
               escreval("--------------------------------------------------------------")
               escreval("| Gera 'n' termos de uma Sequência Geometrica e os exibe na  |")
               escreval("| ordem do maior para o menor.                               |")
               escreval("--------------------------------------------------------------")
               escreva("Digite o primeiro termo: ")
               leia(termo1)
               escreva("Digite a razão: ")
               leia(razaoPG)
               escreva("Digite a quantidade de termos: ")
               leia(qtdSolicitada)
               limpatela

               se qtdSolicitada <=0 entao
                  escreval("--------------------------------------------------------------")
                  escreval("Entrada",qtdSolicitada," inválida!")
                  escreval("O número deve ser inteiro positivo.")
                  escreval("--------------------------------------------------------------")
               senao

                  //Cálculo - Decrescente
                  resultado <- termo1
                  escreval("--------------------------------------------------------------")
                  escreval("A Sequência Geometrica Decrescente é: ")
                  escreval("--------------------------------------------------------------")
                  Para i de 1 ate qtdSolicitada faca
                     resultado <- resultado * razaoPG
                  fimpara

                  termoDecrescente <- resultado

                  para i de 1 ate qtdSolicitada faca
                     se razaoPG >0 entao
                        termoDecrescente <- termoDecrescente / razaoPG
                     fimse
                     escreval("Posição:",i:4," | Valor:",termoDecrescente)
                  fimpara
                  escreval("--------------------------------------------------------------")
               fimse
            fimse
         fimse

         //Sequencia de cubos
      caso 7
         limpatela
         escreval("--------------------------------------------------------------")
         escreval("|                    CUBOS VS. QUADRADOS                     |")
         escreval("--------------------------------------------------------------")
         escreval("| Compara visualmente os números ao cubo com os seus         |")
         escreval("| respectivos quadrados.                                     |")
         escreval("--------------------------------------------------------------")
         escreva("Digite a posição em que deseja iniciar: ")
         leia(iniSeq)
         escreva("Digite até qual posição deseja visualizar: ")
         leia(fim)
         limpatela
         se iniSeq > fim entao
            escreval("--------------------------------------------------------------")
            escreval("Entrada inválida!")
            escreval("A posição final deve ser maior ou igual a posição inicial.")
            escreval("--------------------------------------------------------------")
         senao

            escreval("--------------------------------------------------------------")
            escreval("              Sequência de Quadrados e Cubos                  ")
            escreval("--------------------------------------------------------------")
            //Operação da sêquencia com o contador
            para i de iniSeq ate fim faca
               escreval("Quadrado:",i:3, "²":3,"=", (i*i):5, " | Cubo:":8, i:3, "³ =", (i*i*i))
            fimpara
            escreval("--------------------------------------------------------------")
         fimse

         //Sequência Alternada
      caso 8
         escreval("--------------------------------------------------------------")
         escreval("|                 ADIÇÃO/SUBTRAÇÃO ALTERNADA                 |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera uma sequência com adição e subtração alternadas       |")
         escreval("| (ex: +3, -2).                                              |")
         escreval("--------------------------------------------------------------")
         Escreva("Digite a quantidade de termos: ")
         Leia(qtdSolicitada)

         se qtdSolicitada <= 0 entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("Entrada",qtdSolicitada," inválida!")
            escreval("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")

         senao
            Escreva("Digite o termo de adição (+): ")
            Leia(termo1)

            Escreva("Digite o termo de subtração (-): ")
            Leia(termo2)
            limpatela

            escreval("--------------------------------------------------------------")
            escreval("                    Sequência Alternada"                       )
            escreval("--------------------------------------------------------------")

            // Primeiro termo começa com o valor de adição
            termo <- 0
            Escreval("Termo":8,"1:":4, termo)

            Para i de 2 ate qtdSolicitada faca
               Se (i mod 2 = 0) entao
                  Escreva("Termo", i:4, ":", termo:4, " +", termo1:3)
                  termo <- termo + termo1
               Senao
                  Escreva("Termo", i:4, ":", termo:4, " -", termo2:3)
                  termo <- termo - termo2
               FimSe

               Escreval(" = ":3, termo)
            FimPara
            escreval("--------------------------------------------------------------")

         fimse

         //Números Triangulares
      caso 9
         escreval("--------------------------------------------------------------")
         escreval("|                   NÚMEROS TRIANGULARES                     |")
         escreval("--------------------------------------------------------------")
         escreval("| Gera 'k' números triangulares consecutivos a partir da     |")
         escreval("| posição 'n'.                                               |")
         escreval("--------------------------------------------------------------")
         escreva("Digite a posição inicial da Sequência Triangular: ")
         leia(iniSeq)

         se (iniSeq <= 0) entao
            limpatela
            escreval("--------------------------------------------------------------")
            escreval("Entrada",iniSeq," inválida!")
            escreval("O número deve ser inteiro positivo.")
            escreval("--------------------------------------------------------------")
         senao
            escreva("Digite quantas outras posições deseja exibir: "                  )
            leia(qtdSolicitada)

            se qtdSolicitada <= 0 entao
               limpatela
               escreval("--------------------------------------------------------------")
               escreval("Entrada",qtdSolicitada," inválida!")
               escreval("O número deve ser inteiro positivo.")
               escreval("--------------------------------------------------------------")
            senao
               limpatela
               escreval("--------------------------------------------------------------")
               escreval("                   Sequência Triangulares"                     )
               escreval("--------------------------------------------------------------")

               para i de iniSeq ate iniSeq + qtdSolicitada - 1 faca
                  triangular <- (i * (i + 1)) / 2
                  escreval("Posição:",i:4," | Triangular:",triangular)
               fimpara
               escreval("--------------------------------------------------------------")
            fimse
         fimse

         //Sair
      caso 0
         escreval("Saindo da calculadora...")

         //Tratamento de opção inválida
      outrocaso
         escreval("=================================================================")
         escreval("         Entrada inválida!         ")
         escreval("Por favor, digite um número do menu.")
         escreval("=================================================================")

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