Algoritmo "soma_subtracao_alternada"
Var
   i, qtd_termos, termo_adicao, termo_subtracao, termo: inteiro
Inicio
   Escreval("Digite a quantidade de termos: ")
   Leia(qtd_termos)

   Escreval("Digite o termo de adição (+): ")
   Leia(termo_adicao)

   Escreval("Digite o termo de subtração (-): ")
   Leia(termo_subtracao)

   // Primeiro termo começa com o valor de adição
   termo <- 0
   Escreval("Termo 1: ", termo)

   Para i de 2 ate qtd_termos faca
      Se (i mod 2 = 0) entao
         Escreva("Termo", i, ": ", termo, " + ", termo_adicao)
         termo <- termo + termo_adicao
      Senao
         Escreva("Termo", i, ": ", termo, " - ", termo_subtracao)
         termo <- termo - termo_subtracao
      FimSe

      Escreval(" = ", termo)
   FimPara

   Escreval("Fim da execução do programa!")
Fimalgoritmo