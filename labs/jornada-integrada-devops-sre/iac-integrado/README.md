# IaC para ambientes reprodutiveis

Curso: **Jornada integrada DevOps e SRE**
Categoria: **Infraestrutura como codigo**

## Proposta de ensino

Praticar leitura, validacao e revisao de IaC com foco em repetibilidade, drift e seguranca operacional.

Ao concluir, o aluno deve conseguir explicar o que verificou, quais evidencias coletou e qual acao operacional seria segura em um ambiente real.

## Conceitos trabalhados

- Terraform
- Ansible
- estado desejado
- plan
- playbook
- idempotencia
- drift

## Ambiente do laboratorio

- Execucao local com Docker Compose.
- Servicos principais: `iac`.
- Dados e logs sao ficticios; nao use credenciais reais.
- Evidencias devem ser salvas em `workspace/evidencias/` ou `/workspace/evidencias/`, conforme o container usado.

Artefatos disponiveis:

- `Dockerfile`
- `compose.yaml`
- `lab.yaml`
- `terraform/`
- `ansible/`
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
cd skillplatform-devops-sre-labs/labs/jornada-integrada-devops-sre/iac-integrado
docker compose up -d --build
docker compose ps
```

## Roteiro pratico

Execute o roteiro abaixo e registre a saida relevante. Ajuste comandos somente quando o sistema operacional do host exigir.

```bash
docker compose up -d --build
docker compose exec iac sh
cd /workspace
mkdir -p evidencias
terraform -chdir=terraform fmt -check | tee evidencias/terraform-fmt.txt || true
terraform -chdir=terraform validate | tee evidencias/terraform-validate.txt || true
ansible-playbook --syntax-check ansible/playbook.yml | tee evidencias/ansible-syntax.txt || true
```

Durante a pratica:

- Explique o que seria aplicado antes de qualquer mudanca real.
- Separe validacao sintatica de validacao de impacto.
- Registre como detectar e tratar drift sem edicao manual em producao.

## Entrega esperada

- resultado de validacao Terraform
- resultado de syntax-check Ansible
- plano de revisao antes de apply
- Uma explicacao curta, em linguagem operacional, respondendo: o que aconteceu, como foi comprovado e qual seria a proxima acao segura.

## Validacao

No Linux, macOS, Git Bash ou WSL:

```bash
./scripts/validate.sh
```


Se a validacao falhar, leia a mensagem de erro, revise os arquivos em `workspace/evidencias/` e repita apenas a etapa necessaria.

## Referencias oficiais

- [Terraform language documentation](https://developer.hashicorp.com/terraform/language)
- [Terraform CLI documentation](https://developer.hashicorp.com/terraform/cli)
- [Ansible documentation](https://docs.ansible.com/)
- [Ansible playbook guide](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html)

## Limpeza do ambiente

```bash
docker compose down -v
```

## Cuidados

- Nao use senhas, tokens ou chaves reais.
- Nao publique arquivos `.env`, `.pem`, `.key` ou credenciais pessoais.
- Trate este laboratorio como simulacao educacional, nao como ambiente de producao.
