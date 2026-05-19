# Pipeline CI/CD com qualidade e rollback

    Curso: DevOps: automacao, entrega e plataforma

    ## Objetivo

    Objetivo: estruturar uma esteira confiavel.
Conteudo: stages, testes, artefatos, variaveis, secrets, gates, deploy e rollback.
Pratica: desenhar um pipeline para aplicacao web com build, teste e deploy.
Criterio de conclusao: identificar pontos de falha e controles de rollback.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Pipeline CI/CD com qualidade e rollback".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: estruturar uma esteira confiavel.

Ferramentas/conceitos que devem aparecer na resolucao:
- tag: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- stages: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- secrets: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- deploy: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- rollback: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d --build
        docker compose exec runner bash
        git init demo-repo
        cd demo-repo
        git config user.email aluno@example.local
        git config user.name Aluno
        echo "versao inicial" > app.txt
        git add app.txt && git commit -m "base da aplicacao"
        cp /workspace/ci/pipeline.yml ./pipeline.yml
        git add pipeline.yml && git commit -m "adiciona pipeline"
        git log --oneline
        ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: identificar pontos de falha e controles de rollback.

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
