Algoritmo "tribonacci_diferença_soma"

// Descrição   : Calcula a sequência de Tribonacci, mostra a diferença entre os termos

Var
   resposta_tri, i_tri, soma_tri, v1_tri, v2_tri, v3_tri, anterior_tri, diferenca, soma_total: inteiro

Inicio

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

Fimalgoritmo