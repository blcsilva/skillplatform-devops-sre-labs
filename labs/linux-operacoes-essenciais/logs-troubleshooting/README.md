# Logs e troubleshooting operacional

Curso: **Linux para operacoes de tecnologia**
Categoria: **Observabilidade**

## Proposta de ensino

Coletar sinais de observabilidade e transformar metricas, logs e sintomas em uma hipotese operacional.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- logs
- metricas
- Prometheus
- labels
- alertas
- sintomas
- evidencias

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `lab`, `demo-app`, `prometheus`.
- Dados e logs sao ficticios; nao use credenciais reais.
- Evidencias devem ser salvas em `workspace/evidencias/` ou `/workspace/evidencias/`, conforme o container usado.

Artefatos disponiveis:

- `Dockerfile`
- `compose.yaml`
- `lab.yaml`
- `app/`
- `prometheus/`
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
cd skillplatform-devops-sre-labs/labs/linux-operacoes-essenciais/logs-troubleshooting
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose ps
docker compose logs --tail=80
mkdir -p workspace/evidencias
curl -s http://localhost:9090/-/ready | tee workspace/evidencias/prometheus-ready.txt
curl -s http://localhost:8000/metrics | head -40 | tee workspace/evidencias/metrics-sample.txt
```

Durante a pratica:

- Identifique qual sinal mostra o sintoma primeiro: log, metrica ou resposta HTTP.
- Diferencie erro pontual de tendencia recorrente.
- Proponha um alerta acionavel com causa provavel, impacto e acao esperada.

## Entrega esperada

- amostra de metrica ou log
- hipotese operacional
- proposta de alerta ou dashboard minimo
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Prometheus documentation](https://prometheus.io/docs/introduction/overview/)
- [Prometheus querying basics](https://prometheus.io/docs/prometheus/latest/querying/basics/)
- [OpenTelemetry documentation](https://opentelemetry.io/docs/)
- [Grafana documentation](https://grafana.com/docs/grafana/latest/)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
