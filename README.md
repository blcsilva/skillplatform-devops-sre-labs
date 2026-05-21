# BeginDev - Jornada Ops & Developer - Laboratorios DevOps e SRE

Repositorio de laboratorios praticos para a plataforma BeginDev. Os cenarios foram organizados para estudo de Linux, DevOps, SRE, containers, observabilidade, redes e infraestrutura como codigo.

Cada laboratorio privilegia pratica guiada, evidencias, decisao operacional e referencias oficiais. O objetivo nao e memorizar comandos soltos: e aprender a investigar, validar e explicar uma acao tecnica com seguranca.

## Como usar

```bash
git clone https://github.com/blcsilva/skillplatform-devops-sre-labs.git
cd skillplatform-devops-sre-labs/labs/<curso>/<laboratorio>
docker compose up -d --build
docker compose ps
./scripts/validate.sh
docker compose down -v
```

## Padrao dos laboratorios

- `README.md`: roteiro do aluno, objetivos, entrega esperada e referencias oficiais.
- `compose.yaml`: ambiente local reprodutivel.
- `Dockerfile`: imagem do laboratorio quando necessaria.
- `workspace/`: dados ficticios e area para evidencias.
- `scripts/validate.sh` e `scripts/validate.ps1`: verificacoes simples da entrega.
- `lab.yaml`: metadados usados pela plataforma BeginDev.

## Catalogo

| Laboratorio | Curso | Categoria |
| --- | --- | --- |
| [Docker: imagens, registries e runtime](labs/devops-entrega-automacao/docker-imagens-runtime/) | DevOps: automacao, entrega e plataforma | Containers e plataformas |
| [Git colaborativo e fluxo de mudancas](labs/devops-entrega-automacao/git-colaboracao-fluxo/) | DevOps: automacao, entrega e plataforma | Entrega continua |
| [GitOps com ArgoCD ou FluxCD](labs/devops-entrega-automacao/gitops-argocd-flux/) | DevOps: automacao, entrega e plataforma | Entrega continua |
| [IaC com Terraform e Ansible](labs/devops-entrega-automacao/iac-terraform-ansible/) | DevOps: automacao, entrega e plataforma | Infraestrutura como codigo |
| [Kubernetes para DevOps](labs/devops-entrega-automacao/kubernetes-fundamentos/) | DevOps: automacao, entrega e plataforma | Containers e plataformas |
| [Pipeline CI/CD com qualidade e rollback](labs/devops-entrega-automacao/pipeline-ci-cd/) | DevOps: automacao, entrega e plataforma | Entrega continua |
| [Base Linux operacional](labs/jornada-integrada-devops-sre/base-linux-operacional/) | Jornada integrada DevOps e SRE | Sistemas operacionais |
| [Containers na pratica](labs/jornada-integrada-devops-sre/containers-na-pratica/) | Jornada integrada DevOps e SRE | Containers e plataformas |
| [Git, CI/CD e entrega segura](labs/jornada-integrada-devops-sre/git-ci-cd-integrado/) | Jornada integrada DevOps e SRE | Entrega continua |
| [IaC para ambientes reprodutiveis](labs/jornada-integrada-devops-sre/iac-integrado/) | Jornada integrada DevOps e SRE | Infraestrutura como codigo |
| [Kubernetes operacional](labs/jornada-integrada-devops-sre/kubernetes-operacional-integrado/) | Jornada integrada DevOps e SRE | Containers e plataformas |
| [Observabilidade para diagnostico](labs/jornada-integrada-devops-sre/observabilidade-integrada/) | Jornada integrada DevOps e SRE | Observabilidade |
| [Redes para DevOps e SRE](labs/jornada-integrada-devops-sre/redes-para-devops-sre/) | Jornada integrada DevOps e SRE | Redes e protocolos |
| [SRE e resposta a incidentes](labs/jornada-integrada-devops-sre/sre-incidentes-integrado/) | Jornada integrada DevOps e SRE | Confiabilidade e SRE |
| [Logs e troubleshooting operacional](labs/linux-operacoes-essenciais/logs-troubleshooting/) | Linux para operacoes de tecnologia | Observabilidade |
| [Usuarios, grupos e permissoes](labs/linux-operacoes-essenciais/permissoes-usuarios/) | Linux para operacoes de tecnologia | Sistemas operacionais |
| [Processos, systemd e servicos](labs/linux-operacoes-essenciais/processos-systemd-servicos/) | Linux para operacoes de tecnologia | Sistemas operacionais |
| [Redes no Linux para troubleshooting](labs/linux-operacoes-essenciais/redes-linux-debug/) | Linux para operacoes de tecnologia | Redes e protocolos |
| [Terminal Linux e navegacao produtiva](labs/linux-operacoes-essenciais/terminal-linux/) | Linux para operacoes de tecnologia | Sistemas operacionais |
| [Alertas acionaveis e reducao de ruido](labs/sre-confiabilidade-incidentes/alertas-acionaveis/) | SRE: observabilidade, confiabilidade e incidentes | Observabilidade |
| [Resposta a incidentes](labs/sre-confiabilidade-incidentes/incidentes-comando-controle/) | SRE: observabilidade, confiabilidade e incidentes | Confiabilidade e SRE |
| [Metricas, logs e traces](labs/sre-confiabilidade-incidentes/observabilidade-metricas-logs-traces/) | SRE: observabilidade, confiabilidade e incidentes | Observabilidade |
| [Postmortem, toil e melhoria continua](labs/sre-confiabilidade-incidentes/postmortem-toil-melhoria/) | SRE: observabilidade, confiabilidade e incidentes | Confiabilidade e SRE |
| [SLI, SLO e erro orcamentado](labs/sre-confiabilidade-incidentes/sli-slo-error-budget/) | SRE: observabilidade, confiabilidade e incidentes | Confiabilidade e SRE |

## Seguranca

- Nao ha secrets reais neste repositorio.
- Nao adicione tokens pessoais, chaves privadas, arquivos `.env`, `.pem` ou `.key`.
- Todos os dados sao ficticios e destinados somente ao aprendizado.

## Referencias oficiais gerais

- [Docker documentation](https://docs.docker.com/)
- [Kubernetes documentation](https://kubernetes.io/docs/home/)
- [Git documentation](https://git-scm.com/docs)
- [Linux man-pages](https://man7.org/linux/man-pages/)
- [Prometheus documentation](https://prometheus.io/docs/introduction/overview/)
- [Google SRE books](https://sre.google/books/)
- [Terraform documentation](https://developer.hashicorp.com/terraform/docs)
- [Ansible documentation](https://docs.ansible.com/)
