# Postmortem, toil e melhoria continua

    Curso: SRE: observabilidade, confiabilidade e incidentes

    ## Objetivo

    Objetivo: transformar incidente e trabalho repetitivo em aprendizado sistemico.
Conteudo: postmortem sem culpa, acoes corretivas, automacao, toil e priorizacao.
Pratica: escrever postmortem curto e classificar acoes por impacto.
Criterio de conclusao: propor uma melhoria que reduza recorrencia ou tempo de resposta.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Postmortem, toil e melhoria continua".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: transformar incidente e trabalho repetitivo em aprendizado sistemico.

Ferramentas/conceitos que devem aparecer na resolucao:
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

Criterio de conclusao: propor uma melhoria que reduza recorrencia ou tempo de resposta.

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
