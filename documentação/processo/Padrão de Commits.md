# Padrão de Commits

Este projeto utiliza um padrão de commits para manter o repositório limpo, legível e automatizar geração de changelogs.

## Formato do commit
Cada mensagem de commit deve seguir o formato:
```
nome-task-tipo: descrição breve
```

### Tipos permitidos:
- **feat**: introduz uma nova funcionalidade  
- **fix**: correção de bug  
- **docs**: mudanças apenas na documentação  
- **refactor**: mudanças no código que não adicionam feature nem corrigem bug 
- **test**: inclusão ou alteração de testes  
- **chore**: tarefas de build, configs, dependências  

### Exemplos:
- **SCRUM-21-feat:** - adicionar endpoint de listagem de usuários.
- **SCRUM-21-fix:** - corrigir erro de validação no login.
- **SCRUM-21-docs:** - atualizar instruções de instalação.
