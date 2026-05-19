# Alertas acionaveis e reducao de ruido

    Curso: SRE: observabilidade, confiabilidade e incidentes

    ## Objetivo

    Objetivo: criar alertas que levam a uma acao clara.
Conteudo: severidade, sintoma vs causa, runbook, agrupamento e fadiga de alertas.
Pratica: reescrever alertas tecnicos em alertas orientados a impacto.
Criterio de conclusao: cada alerta deve dizer impacto, provavel causa e primeira acao.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Alertas acionaveis e reducao de ruido".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: criar alertas que levam a uma acao clara.

Ferramentas/conceitos que devem aparecer na resolucao:
- dig: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- runbook: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d --build
        curl http://127.0.0.1:8088/metrics
        # Abra http://127.0.0.1:9090 e consulte demo_http_requests_total
        docker compose logs demo-app > workspace/evidencias/demo-app.log
        ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: cada alerta deve dizer impacto, provavel causa e primeira acao.

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
