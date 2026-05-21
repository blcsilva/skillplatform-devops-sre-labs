# Processos, systemd e servicos

Curso: **Linux para operacoes de tecnologia**
Categoria: **Sistemas operacionais**

## Proposta de ensino

Praticar rotinas Linux usadas em suporte, operacao, troubleshooting e automacao inicial.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- navegacao no filesystem
- leitura e filtragem de arquivos
- permissoes
- processos
- servicos
- evidencias operacionais

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `linux`.
- Dados e logs sao ficticios; nao use credenciais reais.
- Evidencias devem ser salvas em `workspace/evidencias/` ou `/workspace/evidencias/`, conforme o container usado.

Artefatos disponiveis:

- `Dockerfile`
- `compose.yaml`
- `lab.yaml`
- `workspace/`
- `scripts/`

## Como executar

Requisitos locais:

- Docker Engine ou Docker Desktop.
- Docker Compose v2.
- Git para clonar o repositorio e registrar alteracoes locais quando necessario.

Passos iniciais:

```bash
git clone https://github.com/blcsilva/skillplatform-devops-sre-labs.git
cd skillplatform-devops-sre-labs/labs/linux-operacoes-essenciais/processos-systemd-servicos
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose exec linux bash
cd /workspace
mkdir -p evidencias
pwd && ls -lah
find . -maxdepth 3 -type f | sort
date -Iseconds > evidencias/inicio.txt
```

Durante a pratica:

- Mapeie arquivos, diretorios e dados disponiveis antes de executar alteracoes.
- Use comandos pequenos e encadeados com pipe para chegar a uma conclusao reproduzivel.
- Salve evidencias em workspace/evidencias com nome claro e data quando fizer sentido.

## Entrega esperada

- evidencias/inicio.txt
- um arquivo com comandos executados
- uma conclusao tecnica curta com hipotese e proxima acao segura
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Linux man-pages](https://man7.org/linux/man-pages/)
- [GNU Coreutils manual](https://www.gnu.org/software/coreutils/manual/coreutils.html)
- [GNU grep manual](https://www.gnu.org/software/grep/manual/grep.html)
- [GNU sed manual](https://www.gnu.org/software/sed/manual/sed.html)
- [GNU awk manual](https://www.gnu.org/software/gawk/manual/gawk.html)
- [systemd documentation](https://systemd.io/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
