## Estrutura de Branches

Este projeto utiliza uma estratégia simplificada de branches para organizar o desenvolvimento.

----

## Prazo para Último Commit e PR

- O padrão da equipe era de até no máximo, **sábado 23h59**, para que o QA consiga testar o código e sugerir mudanças. 
- **Domingo às 18h** o código final deve estar pronto para ser submetido à branch `main` (Produção).

## Processo de Code Review

- Todo código deve passar por revisão de pelo menos 1 (um) developer antes de ser aceito o Pull Request na branch `main`.
- O revisor deve fornecer feedback detalhado para o Dev responsável pela Task avaliada.
- **Responsabilidade:** O dono da task é responsável por testar e corrigir problemas no seu código. Pull Requests que “quebrarem” a API terão como responsáveis tanto o dono da task quanto quem aprovou.

## Branch principal

- **main**  
  - Contém o código estável em produção.  
  - **Não é permitido commitar diretamente nesta branch.**  
  - Alterações só chegam na `main` via **Pull Request (PR)** revisado.  

---

## Branches de Sprint

- Cada sprint possui a sua própria branch.  
- O nome deve seguir o padrão:

```
sprint1, sprint2, sprint3 ...
```
Após finalizadas, essas branches devem ser mergeadas de volta na branch da sprint correspondente (`sprint2` no exemplo).  

---

## Processo de Pull Request

- Os Pull Requests devem estar detalhados com as principais funcionalidades adicionadas, bem como problemas encontrados no código e como foram resolvidos/contornados.
- Fotos caso trabalhado no frontend.

### Checklist obrigatório antes de abrir um PR:

- [ ] Código foi revisado
- [ ] Testes foram executados
- [ ] Documentação foi atualizada

## Tempo Esperado para Aprovação

- O tempo esperado para aprovação de um PR é de **48 horas**.
- Qualquer Dev pode aprovar um PR, mas é necessário que siga as responsabilidades.

---

## Regras importantes

- **Nunca commitar diretamente na `main`.**  
- **Nunca criar branches paralelas fora do fluxo definido.**  
- Todo merge deve ser feito via **Pull Request** e revisado por outro membro do time.  
- Após o merge, **apague as branches temporárias** para manter o repositório limpo.  

---

## Exemplo de fluxo

1. Criar branch da sprint a partir da `main`:  
3. Para iniciar uma nova sprint:  
   - Criar uma nova branch a partir da `main`, nomeada como `SprintX`.  
   - Exemplo:  
     ```bash
     git checkout main
     git pull origin main
     git checkout -b Sprint3
     git push origin Sprint3
     ```
4. Após finalização da sprint:  
   - Abrir um **Pull Request** da branch da sprint para `main`.  
   - O merge só deve ser feito após revisão da equipe.  
   - Deletar a branch da sprint após merge para evitar acúmulo.  

---

## Boas práticas

- Use nomes de branch consistentes (`Sprint1`, `Sprint2` …).  
- Evite commits grandes: prefira commits pequenos e descritivos.  
- Sempre sincronize sua branch antes de abrir o Pull Request.  
- Se houver necessidade de hotfix em produção, criar branch a partir da `main` e aplicar o PR normalmente.  

---
