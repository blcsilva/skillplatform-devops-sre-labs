# Logs e troubleshooting operacional

    Curso: Linux para operacoes de tecnologia

    ## Objetivo

    Objetivo: transformar logs em evidencia tecnica.
Conteudo: journalctl, /var/log, rotacao de logs, timestamps, correlacao e severidade.
Pratica: reconstruir a linha do tempo de uma indisponibilidade simples.
Criterio de conclusao: escrever uma analise curta com causa provavel, impacto e proxima verificacao.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Logs e troubleshooting operacional".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: transformar logs em evidencia tecnica.

Ferramentas/conceitos que devem aparecer na resolucao:
- ps: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- journalctl: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: escrever uma analise curta com causa provavel, impacto e proxima verificacao.

    ## Validacao

    Execute:

    ```bash
    ./scripts/validate.sh
    ```

    ## Cuidados

    - Nao use senhas reais.
    - Nao coloque tokens pessoais nos arquivos.
    - Use apenas dados ficticios do laboratorio.
    - Remova containers ao terminar: `docker compose down -v`.
