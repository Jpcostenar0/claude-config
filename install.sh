#!/usr/bin/env bash
# Copia esta configuração para ~/.claude. Pode rodar várias vezes.
set -euo pipefail
src="$(cd "$(dirname "$0")" && pwd)"
dst="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
mkdir -p "$dst/agents"

# guarda o CLAUDE.md antigo se for diferente, para não perder instruções suas
if [ -f "$dst/CLAUDE.md" ] && ! cmp -s "$src/CLAUDE.md" "$dst/CLAUDE.md"; then
  cp "$dst/CLAUDE.md" "$dst/CLAUDE.md.bak"
fi
cp "$src/CLAUDE.md" "$dst/CLAUDE.md"
cp "$src"/agents/*.md "$dst/agents/"

# cérebro em Sonnet, mantendo o resto do settings.json
settings="$dst/settings.json"
[ -s "$settings" ] || echo '{}' > "$settings"
tmp="$(mktemp)"
jq '.model = "sonnet"' "$settings" > "$tmp" && mv "$tmp" "$settings"

echo "claude-config instalado em $dst ($(ls "$src"/agents/*.md | wc -l) agentes)"
