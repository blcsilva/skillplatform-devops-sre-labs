# Kubernetes operacional

    Curso: Jornada integrada DevOps e SRE

    ## Objetivo

    Objetivo: publicar e diagnosticar workloads em Kubernetes/OpenShift.
Conteudo: deployment, service, ingress/route, configmap, secret, probe e eventos.
Pratica: criar checklist para CrashLoopBackOff, falha de service e erro de probe.
Criterio de conclusao: apontar a camada da falha usando evidencias do cluster.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Kubernetes operacional".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: publicar e diagnosticar workloads em Kubernetes/OpenShift.

Ferramentas/conceitos que devem aparecer na resolucao:
- ss: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- deploy: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- ingress: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: apontar a camada da falha usando evidencias do cluster.

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
