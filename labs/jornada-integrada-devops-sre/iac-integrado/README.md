# IaC para ambientes reprodutiveis

    Curso: Jornada integrada DevOps e SRE

    ## Objetivo

    Objetivo: organizar infraestrutura e configuracao como mudanca revisavel.
Conteudo: Terraform, Ansible, estado, plano, inventario, roles e idempotencia.
Pratica: separar responsabilidades entre provisionamento e configuracao.
Criterio de conclusao: explicar risco, plano de mudanca e criterio de rollback.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "IaC para ambientes reprodutiveis".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: organizar infraestrutura e configuracao como mudanca revisavel.

Ferramentas/conceitos que devem aparecer na resolucao:
- terraform: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- ansible: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- roles: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d --build
        docker compose exec iac bash
        cd /workspace/terraform && terraform init -backend=false && terraform validate
        cd /workspace/ansible && ansible-playbook playbook.yml
        ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: explicar risco, plano de mudanca e criterio de rollback.

    ## Validacao

    Execute no Linux, macOS, Git Bash ou WSL:

    ```bash
    ./scripts/validate.sh
    ```

    No PowerShell:

    ```powershell
    .\scriptsalidate.ps1
    ```

    ## Cuidados

    - Nao use senhas reais.
    - Nao coloque tokens pessoais nos arquivos.
    - Use apenas dados ficticios do laboratorio.
    - Remova containers ao terminar: `docker compose down -v`.
