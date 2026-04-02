# Dining Philosophers Solution

Um projeto em C que implementa uma solução para o clássico problema de concorrência dos Filósofos em Repouso.

## O Problema dos Filósofos em Repouso

### Descrição

O Problema dos Filósofos em Repouso é um problema clássico de sincronização e concorrência em ciência da computação, primeiro apresentado pelo Edsger Dijkstra em 1965.

**Cenário:**
- `N` filósofos estão sentados em volta de uma mesa redonda
- Entre cada par de filósofos, há um garfo
- Cada filósofo alterna entre dois estados: **pensando** e **comendo**
- Para comer, um filósofo precisa de **dois garfos**: um da sua esquerda e outro da sua direita
- Um garfo só pode ser usado por um filósofo por vez

### O Desafio

Este problema ilustra os desafios fundamentais da computação concorrente:

1. **Deadlock**: Se cada filósofo pega o garfo da esquerda e espera indefinidamente pelo da direita, ninguém consegue comer
2. **Starvation**: Alguns filósofos podem ficar esperando indefinidamente enquanto outros comem
3. **Race Condition**: Acessos simultâneos aos mesmos recursos (garfos)

## Solução Implementada

Este projeto implementa uma solução thread-safe em C usando:
- **Threads (POSIX)**: Para simular cada filósofo
- **Mutex**: Para proteger o acesso aos garfos
- **Sincronização**: Para prevenir deadlock e starvation

## Estrutura do Projeto

```
dining-philosophers/
├── Makefile          # Script de compilação
├── philo.h          # Header principal com definições e estruturas
├── src/
│   └── main.c       # Implementação principal
└── README.md        # Este arquivo
```

## Compilação

```bash
make              # Compila o projeto
make clean        # Remove os arquivos objeto
make fclean       # Remove binário e objetos
make re           # Recompila do zero
```

## Uso

```bash
./philo [número_filósofos] [tempo_morte_ms] [tempo_comendo_ms] [tempo_pensando_ms] [opcional: vezes_comer]
```

### Parâmetros

- `número_filósofos`: Quantidade de filósofos na mesa
- `tempo_morte_ms`: Tempo máximo (em ms) que um filósofo pode ficar sem comer antes de morrer
- `tempo_comendo_ms`: Tempo (em ms) gasto comendo
- `tempo_pensando_ms`: Tempo (em ms) gasto pensando
- `vezes_comer` (opcional): Número de vezes que cada filósofo deve comer antes de parar

## Requisitos

- Compilador C (gcc, clang)
- POSIX threads (pthreads)
- Sistema Linux/Unix ou WSL
