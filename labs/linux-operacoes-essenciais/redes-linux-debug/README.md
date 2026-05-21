# Redes no Linux para troubleshooting

Curso: **Linux para operacoes de tecnologia**
Categoria: **Redes e protocolos**

## Proposta de ensino

Diagnosticar conectividade, DNS, HTTP e comportamento de servicos usando ferramentas simples e evidencias.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- DNS
- HTTP
- portas TCP
- rotas
- resolucao de nomes
- logs de acesso
- testes com curl

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `web`, `client`.
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
cd skillplatform-devops-sre-labs/labs/linux-operacoes-essenciais/redes-linux-debug
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose exec client sh
cd /workspace
mkdir -p evidencias
getent hosts web | tee evidencias/dns.txt
curl -I http://web | tee evidencias/http-head.txt
wget -qO- http://web | tee evidencias/http-body.txt
```

Durante a pratica:

- Separe falha de DNS, falha de rota, falha de porta e falha da aplicacao.
- Registre cada teste com comando e saida relevante.
- Explique qual camada voce validou antes de seguir para a proxima.

## Entrega esperada

- evidencias/dns.txt
- evidencias/http-head.txt
- diagnostico com camada afetada e justificativa
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [curl documentation](https://curl.se/docs/)
- [nginx documentation](https://nginx.org/en/docs/)
- [Docker Compose networking](https://docs.docker.com/compose/how-tos/networking/)
- [Kubernetes Services, Load Balancing, and Networking](https://kubernetes.io/docs/concepts/services-networking/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
