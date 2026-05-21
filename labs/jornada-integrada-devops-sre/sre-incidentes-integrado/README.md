# SRE e resposta a incidentes

Curso: **Jornada integrada DevOps e SRE**
Categoria: **Confiabilidade e SRE**

## Proposta de ensino

Praticar decisoes de confiabilidade: impacto, SLI/SLO, resposta a incidente, postmortem e melhoria continua.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- SLI
- SLO
- error budget
- burn rate
- incidente
- postmortem
- toil

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
cd skillplatform-devops-sre-labs/labs/jornada-integrada-devops-sre/sre-incidentes-integrado
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
date -Iseconds > evidencias/inicio.txt
printf "impacto=\nhipotese=\nacao=\n" > evidencias/analise-incidente.txt
```

Durante a pratica:

- Defina o impacto do ponto de vista do usuario antes de propor correcao.
- Relacione cada acao a uma evidencia observavel.
- Registre o que e mitigacao imediata e o que e prevencao futura.

## Entrega esperada

- analise de impacto
- acao de mitigacao com criterio de sucesso
- item de melhoria para reduzir recorrencia
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Google SRE Book](https://sre.google/sre-book/table-of-contents/)
- [Google SRE Workbook](https://sre.google/workbook/table-of-contents/)
- [Alerting on SLOs](https://sre.google/workbook/alerting-on-slos/)
- [Incident Response from Google SRE](https://sre.google/sre-book/managing-incidents/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
