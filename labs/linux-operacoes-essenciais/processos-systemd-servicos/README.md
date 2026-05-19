# Processos, systemd e servicos

    Curso: Linux para operacoes de tecnologia

    ## Objetivo

    Objetivo: entender ciclo de vida de processos e servicos Linux.
Conteudo: ps, top, htop, kill, journalctl, systemctl, units e timers.
Pratica: investigar um servico com falha e registrar hipoteses a partir do journal.
Criterio de conclusao: reiniciar, habilitar e diagnosticar um servico com seguranca.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Processos, systemd e servicos".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: entender ciclo de vida de processos e servicos Linux.

Ferramentas/conceitos que devem aparecer na resolucao:
- ps: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- top: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- htop: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- kill: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- journalctl: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- systemctl: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: reiniciar, habilitar e diagnosticar um servico com seguranca.

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
