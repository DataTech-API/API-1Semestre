Algoritmo "Sequencia de cubos e quadrados"
Var
   i, numero2, numero1: inteiro
   resposta:caractere

Inicio
   repita
      escreval("Digite o número da posição em que deseja iniciar:")
      leia(numero1)
      escreval("Digite até qual posição deseja vizualizar:")
      leia(numero2)
      limpatela

      //operação da sêquencia com o contador
      para i de numero1 ate numero faca
         escrevaL(i, "² =", (i*i), ",",  i, "³ =", (i*i*i))
      fimpara

      // Pergunta para repetir ou parar o programa
      escreval("")
      escreval("Deseja retornar ao menu? s/n")
      leia(resposta)
      limpatela

      // Validação da resposta para repetir ou parar o programa
      se(resposta <> "s") e (resposta <> "n") entao
         limpatela
         escreval("Resposta inválida")
         escreval("")
      fimse
   ate(resposta = "s")
Fimalgoritmo