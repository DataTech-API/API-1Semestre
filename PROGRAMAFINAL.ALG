Algoritmo "semnome"
// Disciplina   : algoritmos/api
// Professor   : sabah
// Descrição   : menu da calculadora
// Autor(a)    : andre s junqueira
// Data atual  : 25/09/2025
Var
   // Seção de Declarações das variáveis
   opcao:inteiro
   i, n, quadrado,SomaAcumulada: inteiro
   numero1,numero2,razao:inteiro
   Resultado,ordem, ResultadoAnt: inteiro
   Repetir: caractere
   menos: real

Inicio
   enquanto opcao <> 8 faca
      escreval ("=======================================")
      escreval ("         MENU CALCULADORA             ")
      escreval ("=======================================")
      escreval ("")
      escreval ("   01 - Numeros Primos ")
      escreval ("   02 - Fatorial ")
      escreval ("   03 - Fibonacci")
      escreval ("   04 - Tribonacci")
      escreval ("   05 - Quadrado Perfeito")
      escreval ("   06 - Sequencia geométrica")
      escreval ("   07 - Sequencia de cubos")
      escreval ("   08 - Sair")
      escreval ("")
      escreval ("=======================================")
      escreval ("Digite a opção desejada: ")
      leia (opcao)
      limpatela

      se opcao = 1 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 01 - Numeros Primos")
         Escreval ("Em manutenção")
         escreval ("---------------------------------------")
      fimse

      se opcao = 2 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 02 - Fatorial")
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
               escreval ("Deseja calcular mais uma vez? sim/não ")
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

         escreval ("---------------------------------------")
      fimse

      se opcao = 3 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 03 - Sequencia de Fibonacci")
         Escreval ("Em manutenção")
         escreval ("---------------------------------------")
      fimse

      se opcao = 4 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 04 - Sequencia de Tribonacci")
         Escreval ("Em manutenção")
         escreval ("---------------------------------------")
      fimse

      se opcao = 5 entao

         repita
            escreval ("---------------------------------------")
            escreval (" Você escolheu a opção 05 - Quadrados Perfeitos")
            // Função quadrados perfeitos
            escreval ("Digite um número para obter os quadrados perfeitos em ordem crescente")
            leia (n)
            limpatela
            SomaAcumulada <- 0
            para i de 1 até N faça
               quadrado <- i*i
               SomaAcumulada <-somaAcumulada + quadrado
               escreval(quadrado, "|", SomaAcumulada)
            fimpara
            // Pergunta para repetir ou parar o programa
            escreval ("")
            repita
               escreval ("Deseja calcular mais uma vez? sim/não ")
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

         escreval ("---------------------------------------")

      fimse

      se opcao = 6 entao
         Repita
            escreval ("---------------------------------------")
            escreval (" Você escolheu a opção 06 - Sequencia geométrica")
            escreval ("---------------------------------------")
            Limpatela
            Escreval("Você quer uma sequencia crescente ou decrescente?")
            Escreval("(1) para crescente")
            Escreval("(2) para decrescente")
            leia(ordem)
            se ordem <= 1 entao
               escreval("escolheu crescente")
               limpatela
               Escreval("Me fale o primeiro termo")
               Leia(numero1)
               Escreval("Me fale a razão")
               leia(razao)
               Escreval("Qual o numeo de termos")
               leia(numero2)
               limpatela
               resultado <- numero1
               escreval("A sequencia geometrica crescente é")
               Para i de 1 ate numero2 faca
                  Escreval(i, "|", resultado)
                  resultado<-resultado*razao
               fimpara
            senao ordem <= 2 entao
               escreval("escolheu decrescente")
               limpatela
               Escreval("Me fale o primeiro termo")
               Leia(numero1)
               Escreval("Me fale a razão")
               leia(razao)
               Escreval("Qual o numeo de termos")
               leia(numero2)
               limpatela
               resultado <- numero1
               Para i de 1 ate numero2 faca
                  resultado<-resultado*razao
               fimpara

               menos<-resultado

               para i de 1 ate numero2 faca
                  menos <- menos/razao
                  escreval(i,"|", menos)
               fimpara


            fimse
            // Pergunta para repetir ou parar o programa
            escreval ("")
            repita
               escreval ("Deseja calcular mais uma vez? sim/não ")
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

         escreval ("---------------------------------------")

      fimse

      se opcao = 7 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 07 - Sequencia de cubos")
         escreval ("---------------------------------------")
         repita
            escreval("Digite o número da posição em que deseja iniciar:")
            leia(numero1)
            escreval("Digite até qual posição deseja vizualizar:")
            leia(numero2)
            limpatela

            //operação da sêquencia com o contador
            para i de numero1 ate numero2 faca
               escrevaL(i, "² =", (i*i), ",",  i, "³ =", (i*i*i))
            fimpara

            // Pergunta para repetir ou parar o programa
            escreval ("")
            repita
               escreval ("Deseja calcular mais uma vez? sim/não ")
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

         escreval ("---------------------------------------")
      fimse

      // Validação da resposta para repetir ou parar o programa


      se opcao = 8 entao
         escreval ("---------------------------------------")
         escreval (" Você escolheu a opção 08 - SAIR")
         escreval ("---------------------------------------")
      fimse


fimenquanto
fimalgoritmo
