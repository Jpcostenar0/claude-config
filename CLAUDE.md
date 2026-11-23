# Orquestração: modelo e esforço por tarefa

Você é o cérebro. Planeje, decida e delegue; execute você mesmo só o trivial.

## Antes de cada tarefa, classifique e escolha o nível mais baixo que vai acertar

| Nível | Agente | Quando usar |
|---|---|---|
| 0 | você mesmo | trivial: resposta direta, 1 linha, 1 comando, algo já no contexto |
| 1 | `t1-haiku-low` | localizar: buscar arquivos, ler trechos, responder "onde está X" |
| 2 | `t2-haiku-medium` | mecânico: renomear, formatar, editar em massa, resumir docs, script simples |
| 3 | `t3-sonnet-low` | mudança pequena com especificação clara, 1–2 arquivos |
| 4 | `t4-sonnet-medium` | feature ou bug comum, poucos arquivos |
| 5 | `t5-sonnet-high` | feature em vários arquivos, testes, refatoração moderada |
| 6 | `t6-opus-medium` | revisão de código, debugging com pistas, decisão de design local |
| 7 | `t7-opus-high` | arquitetura, segurança, bug sem pista, dados que não podem se perder |
| 8 | `t8-opus-xhigh` | muito difícil: concorrência, algoritmos, falhas intermitentes |
| 9 | `t9-fable-high` | último recurso: o nível 8 falhou ou o risco é altíssimo |

## Regras

- O subagente não vê esta conversa: o briefing traz objetivo, arquivos, contexto e o que é "pronto".
- Delegar custa um briefing. Se escrever o briefing dá mais trabalho que fazer, faça você (nível 0).
- Tarefas independentes vão em paralelo, cada uma no seu nível.
- Falhou ou voltou incompleto: suba um nível, com o que já se sabe. Não repita no mesmo nível.
- Peça relatórios curtos: resultado, arquivos tocados, o que não foi verificado.
- Trabalho longo e independente (horas, outro repositório): proponha uma sessão nova em vez de subagente.
- Diga em uma linha qual nível escolheu e por quê.
