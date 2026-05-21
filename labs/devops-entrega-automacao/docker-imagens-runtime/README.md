# Docker: imagens, registries e runtime

Curso: **DevOps: automacao, entrega e plataforma**
Categoria: **Containers e plataformas**

## Proposta de ensino

Entender imagens, containers, runtime e manifestos Kubernetes como base de operacao de plataformas modernas.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- Dockerfile
- image build
- container runtime
- compose
- deployment
- service
- health check

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `app`, `lab`.
- Dados e logs sao ficticios; nao use credenciais reais.
- Evidencias devem ser salvas em `workspace/evidencias/` ou `/workspace/evidencias/`, conforme o container usado.

Artefatos disponiveis:

- `Dockerfile`
- `compose.yaml`
- `lab.yaml`
- `app/`
- `k8s/`
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
cd skillplatform-devops-sre-labs/labs/devops-entrega-automacao/docker-imagens-runtime
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose ps
mkdir -p workspace/evidencias
docker compose logs --tail=60 | tee workspace/evidencias/compose-logs.txt
find . -maxdepth 3 -type f \( -name "Dockerfile" -o -name "*.yaml" \) | sort | tee workspace/evidencias/manifests.txt
```

Durante a pratica:

- Leia o Dockerfile e identifique base image, pacotes instalados e comando principal.
- Relacione porta exposta, health check e dependencias entre servicos.
- Compare o compose local com o manifesto Kubernetes quando existir.

## Entrega esperada

- resumo da imagem/container
- evidencia de execucao
- risco operacional e melhoria proposta
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Dockerfile reference](https://docs.docker.com/reference/dockerfile/)
- [Docker Compose documentation](https://docs.docker.com/compose/)
- [Kubernetes documentation](https://kubernetes.io/docs/home/)
- [kubectl reference](https://kubernetes.io/docs/reference/kubectl/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
