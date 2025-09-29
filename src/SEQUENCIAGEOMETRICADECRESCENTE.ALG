Algoritmo "Sequencia geometrica decrescente"
Var
   primeiro, razao: inteiro
   ntermos, i : inteiro
   resultado, menos: real

Inicio
   Escreval("Me fale o primeiro termo")
   Leia(primeiro)
   Escreval("Me fale a razão")
   leia(razao)
   Escreval("Qual o numeo de termos")
   leia(ntermos)
   limpatela
   Escreval("A sequencia geometrica decrescente é:")
   
   resultado <- primeiro
   Para i de 1 ate ntermos faca
        resultado<-resultado*razao
   fimpara
   menos<-resultado
   para i de 1 ate ntermos faca
        menos <- menos/razao
        escreval(i,"|", menos)
   fimpara

Fimalgoritmo