Algoritmo "Sequencia geometrica crescente"
Var
   primeiro, razao: inteiro
   ntermos, i : inteiro
   resultado: real

Inicio
   Escreval("Me fale o primeiro termo")
   Leia(primeiro)
   Escreval("Me fale a razão")
   leia(razao)
   Escreval("Qual o numeo de termos")
   leia(ntermos)
   limpatela
   resultado <- primeiro
   escreval("A sequencia geometrica crescente é")
   Para i de 1 ate ntermos faca
        Escreval(i, "|", resultado)
        resultado<-resultado*razao
   fimpara

Fimalgoritmo