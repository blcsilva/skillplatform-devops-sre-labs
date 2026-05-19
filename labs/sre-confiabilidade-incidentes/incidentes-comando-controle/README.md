# Resposta a incidentes

    Curso: SRE: observabilidade, confiabilidade e incidentes

    ## Objetivo

    Objetivo: coordenar incidentes com rapidez e clareza.
Conteudo: papeis, comunicacao, timeline, mitigacao, escalonamento e handoff.
Pratica: conduzir um incidente simulado de indisponibilidade parcial.
Criterio de conclusao: registrar timeline, decisoes, impacto e acao de mitigacao.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Resposta a incidentes".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: coordenar incidentes com rapidez e clareza.

Ferramentas/conceitos que devem aparecer na resolucao:
- Liste recursos antes de alterar.
- Consulte estado atual.
- Filtre sinais relevantes.
- Salve evidencias.
- Valide resultado com uma segunda fonte.

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

Criterio de conclusao: registrar timeline, decisoes, impacto e acao de mitigacao.

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
