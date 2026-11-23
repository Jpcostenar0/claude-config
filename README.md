# claude-config

Configuração base do Claude Code para economizar tokens: o agente principal (Sonnet) classifica cada tarefa e delega para o subagente com o modelo e o esforço certos.

| Nível | Agente | Modelo | Esforço |
|---|---|---|---|
| 1 | `t1-haiku-low` | Haiku | low (somente leitura) |
| 2 | `t2-haiku-medium` | Haiku | medium |
| 3 | `t3-sonnet-low` | Sonnet | low |
| 4 | `t4-sonnet-medium` | Sonnet | medium |
| 5 | `t5-sonnet-high` | Sonnet | high |
| 6 | `t6-opus-medium` | Opus | medium |
| 7 | `t7-opus-high` | Opus | high |
| 8 | `t8-opus-xhigh` | Opus | xhigh |
| 9 | `t9-fable-high` | Fable | high |

As regras de quando usar cada nível estão em [`CLAUDE.md`](CLAUDE.md).

## Instalar

```bash
git clone --depth 1 https://github.com/Jpcostenar0/claude-config /tmp/claude-config && bash /tmp/claude-config/install.sh
```

O script copia `CLAUDE.md` e `agents/` para `~/.claude`, guarda um `CLAUDE.md` antigo diferente em `CLAUDE.md.bak` e põe `"model": "sonnet"` no `settings.json` sem mexer no resto. Precisa de `jq`.

Nas sessões na nuvem, o mesmo comando fica no setup script do ambiente e roda sozinho a cada sessão nova.

## Mudar

Edite aqui, faça push, e a próxima sessão já usa a versão nova. Mantenha o `CLAUDE.md` curto: ele é lido em toda mensagem.
