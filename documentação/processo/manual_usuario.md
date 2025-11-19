# 🖥️ Manual do Usuário

## 📌 Como utilizar

1. Execute o programa no VisualG (`F9`).
2. O menu principal será exibido com 9 opções.
3. Digite o número da opção desejada e pressione Enter.
4. Siga as instruções da tela.

---

## ⚙️ Funcionalidades disponíveis

### 01 - Números Primos

* Gera os **n primeiros números primos**.
* Exibe também a **diferença entre cada primo e o anterior**, ajudando a visualizar o espaçamento entre eles.

📌 **Exemplo (entrada: 6):**

```
2
3  | diferença: 1
5  | diferença: 2
7  | diferença: 2
11 | diferença: 4
13 | diferença: 2
```

---

### 02 - Fatorial

* Calcula o fatorial de um número inteiro positivo.
* Mostra todos os passos da multiplicação até o resultado final.

📌 **Exemplo:**

```
Informe o número: 5

1 = 1
1 x 2 = 2
2 x 3 = 6
6 x 4 = 24
24 x 5 = 120

Resultado: 5! = 120
```

---

### 03 - Fibonacci

* Gera a sequência de Fibonacci do termo **0 até n**.
* Também mostra o **valor do termo n**, útil para estudos matemáticos.

📌 **Exemplo (entrada: 8):**

```
Termo 1 = 0
Termo 2 = 1
Termo 3 = 1
Termo 4 = 2
Termo 5 = 3
Termo 6 = 5
Termo 7 = 8
Termo 8 = 13

O termo 8 é igual a 21
```

---

### 04 - Tribonacci

* Usuário informa os **três primeiros termos da sequência**.
* O programa gera os demais termos até n.
* Exibe:

  * Sequência completa
  * Diferenças entre termos consecutivos
  * Soma acumulada após cada termo

📌 **Exemplo (primeiros termos: 1, 1, 2 | total: 7):**

```
Termo 1 = 1  | Soma = 1
Termo 2 = 1  | Soma = 2
Termo 3 = 2  | Soma = 4
Termo 4 = 4  | Diferença = 2 | Soma = 8
Termo 5 = 7  | Diferença = 3 | Soma = 15
Termo 6 = 13 | Diferença = 6 | Soma = 28
Termo 7 = 24 | Diferença = 11 | Soma = 52
```

---

### 05 - Quadrado Perfeito

* Exibe os quadrados perfeitos de 1 até o número informado.
* Mostra a **soma acumulada** ao longo da sequência.

📌 **Exemplo (entrada: 5):**

```
1  | 1
4  | 5
9  | 14
16 | 30
25 | 55
```

---

### 06 - Sequência Geométrica

* Gera uma sequência geométrica crescente ou decrescente.
* O programa solicita:

  * Primeiro termo
  * Razão
  * Quantidade de termos
* Mostra:

  * Sequência na ordem normal
  * Sequência na ordem inversa

📌 **Exemplo (a1=2, razão=2, termos=5):**

```
Ordem normal:
2, 4, 8, 16, 32

Ordem inversa:
32, 16, 8, 4, 2
```

---

### 07 - Sequência de Cubos

* Compara dois valores para cada número:

  * Quadrado
  * Cubo
* Ideal para visualizar a diferença de crescimento entre elevar à segunda e à terceira potência.

📌 **Exemplo (início: 2, fim: 4):**

```
2² = 4  | 2³ = 8
3² = 9  | 3³ = 27
4² = 16 | 4³ = 64
```

---

### 08 - Números Triangulares

* Usuário informa:

  * Um ponto inicial n
  * Quantos termos deseja exibir
* O programa gera os próximos números triangulares a partir daquela posição.
* Ajuda a estudar segmentos intermediários ou avançados da sequência.

📌 **Exemplo (início: 4, quantidade: 5):**

```
T4  = 10
T5  = 15
T6  = 21
T7  = 28
T8  = 36
```

---

### 09 - Sequência com Padrão Alternado (+a, –b...)

* Usuário informa:

  * Valor de adição
  * Valor de subtração
  * Quantidade de termos
* A sequência começa em **zero** e alterna conforme o padrão definido.

📌 **Exemplo (+3, –2, termos=6):**

```
0
+3 = 3
-2 = 1
+3 = 4
-2 = 2
+3 = 5
```

---

### 10 - Sair

* Encerra o programa e finaliza a calculadora.

---

## 🔁 Repetição

Após executar uma opção, o programa perguntará:

* Digite `sim` → repetir a mesma operação
* Digite `não` → voltar ao menu principal ou encerrar
