# SRE e resposta a incidentes

    Curso: Jornada integrada DevOps e SRE

    ## Objetivo

    Objetivo: coordenar incidente, reduzir impacto e transformar falha em melhoria.
Conteudo: SLI, SLO, error budget, runbook, comunicacao, postmortem e toil.
Pratica: preencher uma timeline de incidente e propor acoes corretivas.
Criterio de conclusao: registrar impacto, mitigacao, causa provavel e aprendizado.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "SRE e resposta a incidentes".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: coordenar incidente, reduzir impacto e transformar falha em melhoria.

Ferramentas/conceitos que devem aparecer na resolucao:
- SLI: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- SLO: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- runbook: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- postmortem: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- toil: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

        ```bash
    docker compose up -d --build
    docker compose exec linux bash
    cd /workspace
    mkdir -p evidencias
    date -Iseconds > evidencias/inicio.txt
    ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: registrar impacto, mitigacao, causa provavel e aprendizado.

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
