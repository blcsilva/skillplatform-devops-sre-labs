# Git, CI/CD e entrega segura

Curso: **Jornada integrada DevOps e SRE**
Categoria: **Entrega continua**

## Proposta de ensino

Construir uma visao pratica de versionamento, pipeline, qualidade, entrega controlada e rollback.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- Git
- branch
- tag
- stage
- artefato
- deploy
- rollback
- evidencia de release

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `runner`.
- Dados e logs sao ficticios; nao use credenciais reais.
- Evidencias devem ser salvas em `workspace/evidencias/` ou `/workspace/evidencias/`, conforme o container usado.

Artefatos disponiveis:

- `Dockerfile`
- `compose.yaml`
- `lab.yaml`
- `ci/`
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
cd skillplatform-devops-sre-labs/labs/jornada-integrada-devops-sre/git-ci-cd-integrado
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose exec runner bash
cd /workspace
mkdir -p evidencias
git --version | tee evidencias/git-version.txt
find . -maxdepth 3 -type f | sort | tee evidencias/arquivos.txt
```

Durante a pratica:

- Crie uma linha do tempo de mudancas com commits, tags ou arquivos de pipeline.
- Identifique onde ficam build, teste, validacao, deploy e rollback.
- Explique como proteger secrets e variaveis sensiveis sem grava-las no repositorio.

## Entrega esperada

- historico ou desenho do fluxo
- evidencia de validacao
- plano de rollback simples
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Git documentation](https://git-scm.com/docs)
- [GitHub Actions documentation](https://docs.github.com/actions)
- [GitLab CI/CD documentation](https://docs.gitlab.com/ci/)
- [Argo CD documentation](https://argo-cd.readthedocs.io/en/stable/)
- [Flux documentation](https://fluxcd.io/flux/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
