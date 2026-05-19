# GitOps com ArgoCD ou FluxCD

    Curso: DevOps: automacao, entrega e plataforma

    ## Objetivo

    Objetivo: entender reconciliacao declarativa de ambientes.
Conteudo: desired state, sync, drift, rollback, ambientes e promocao por Git.
Pratica: desenhar um fluxo GitOps para dev, homologacao e producao.
Criterio de conclusao: explicar por que Git vira a fonte de verdade da plataforma.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "GitOps com ArgoCD ou FluxCD".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: entender reconciliacao declarativa de ambientes.

Ferramentas/conceitos que devem aparecer na resolucao:
- git: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- rollback: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- sync: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- drift: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: explicar por que Git vira a fonte de verdade da plataforma.

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
