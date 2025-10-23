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
// caso 2 (Fatorial)
numFatorial: inteiro
resultadoFatorial, resultadoAnterior: real
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

         //Fatorial//
      caso 2
         escreval("----------------------------------------")
         escreval("|          Fatorial           |")
         escreval("----------------------------------------")
         escreval("Calcula o produto de um número por todos")
         escreval("os seus antecessores inteiros positivos.")
         escreval("----------------------------------------")

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
         escreval("---------------------------------------")
         escreval("|     Sequência de Fibonacci     |")
         escreval("---------------------------------------")
         escreval("Gera uma sequência onde cada número é a")
         escreval("soma dos dois anteriores.")
         escreval("---------------------------------------")
         escreval("EM BREVE!")

         //Tribonacci//
      caso 4
         escreval("---------------------------------------")
         escreval("     Sequência de Tribonacci       ")
         escreval("---------------------------------------")
         escreval("Gera uma sequência onde cada número é a")
         escreval("soma dos três anteriores")
         escreval("---------------------------------------")
         escreval("EM BREVE!")

         //Quadrados Perfeitos//
      caso 5
         escreval("---------------------------------------")
         escreval("|      Quadrados Perfeitos       |")
         escreval("---------------------------------------")
         escreval("Verifica se um número é o resultado de outro")
         escreval("número inteiro multiplicado por si mesmo.")
         escreval("---------------------------------------")
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
         escreval("---------------------------------------")
         escreval("|     Sequencia geométrica       |")
         escreval("---------------------------------------")
         Escreval("Digite [0] Crescente / [1] Decrescente")
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
         escreval("---------------------------------------")
         escreval("|     Sequencia de cubos         |")
         escreval("---------------------------------------")
         escreval("Gera uma sequência de números que são o resultado")
         escreval("de um inteiro elevado à terceira potência")
         escreval("---------------------------------------")
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
         escreval("---------------------------------------")
         escreval("|     Sequência Alternada      |")
         escreval("---------------------------------------")
         escreval("Cria uma sequência somando e subtraindo")
         escreval("termos de forma alternada.")
         escreval("---------------------------------------")
         escreval("EM BREVE!")

         //Números Triangulares
      caso 9
         escreval("---------------------------------------")
         escreval("|     Números Triangulares     |")
         escreval("---------------------------------------")
         escreval("Calcula o número que pode ser representado pela")
         escreval("soma dos inteiros consecutivos a partir de 1.")
         escreval("---------------------------------------")
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