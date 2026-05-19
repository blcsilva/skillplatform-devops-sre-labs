# Containers na pratica

    Curso: Jornada integrada DevOps e SRE

    ## Objetivo

    Objetivo: empacotar aplicacao e entender limites entre imagem e runtime.
Conteudo: Dockerfile, registry, variaveis, rede, volumes e logs de container.
Pratica: revisar uma imagem e propor tres melhorias de seguranca ou tamanho.
Criterio de conclusao: explicar build, push, run e troubleshoot de container.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Containers na pratica".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: empacotar aplicacao e entender limites entre imagem e runtime.

Ferramentas/conceitos que devem aparecer na resolucao:
- Dockerfile: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- docker: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- registry: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- volumes: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: explicar build, push, run e troubleshoot de container.

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
