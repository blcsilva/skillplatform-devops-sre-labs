# Docker: imagens, registries e runtime

    Curso: DevOps: automacao, entrega e plataforma

    ## Objetivo

    Objetivo: empacotar aplicacoes de forma reprodutivel.
Conteudo: Dockerfile, layers, multi-stage build, volumes, networks e registry.
Pratica: criar imagem enxuta, executar container e publicar artefato.
Criterio de conclusao: diferenciar problema de build, imagem e runtime.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Docker: imagens, registries e runtime".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: empacotar aplicacoes de forma reprodutivel.

Ferramentas/conceitos que devem aparecer na resolucao:
- tag: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- Dockerfile: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- docker: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- registry: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- volumes: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- networks: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d
        curl http://127.0.0.1:8080/health
        docker compose logs app
        docker compose exec lab bash -lc 'ls -lah /workspace/k8s && cat /workspace/k8s/deployment.yaml'
        ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: diferenciar problema de build, imagem e runtime.

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
