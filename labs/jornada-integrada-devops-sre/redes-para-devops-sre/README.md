# Redes para DevOps e SRE

    Curso: Jornada integrada DevOps e SRE

    ## Objetivo

    Objetivo: diagnosticar comunicacao entre cliente, proxy, servico e dependencia.
Conteudo: DNS, HTTP, TLS, SSH, portas, rotas, firewall e balanceamento.
Pratica: mapear uma requisicao ponta a ponta e identificar pontos de falha.
Criterio de conclusao: diferenciar falha de DNS, rede, TLS, aplicacao e dependencia.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Redes para DevOps e SRE".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: diagnosticar comunicacao entre cliente, proxy, servico e dependencia.

Ferramentas/conceitos que devem aparecer na resolucao:
- ls: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- ss: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d --build
        docker compose exec client bash
        curl -i http://web/health
        dig web
        ss -tulpn
        traceroute web || true
        tcpdump -c 5 -nn host web
        ```


    ## Entrega esperada

    Entrega esperada:

1. Sequencia de comandos, consultas ou configuracoes usadas.
2. Evidencias antes/depois.
3. Explicacao do motivo de cada acao.
4. Uma decisao segura para seguir, reverter ou escalar.

Criterio de conclusao: diferenciar falha de DNS, rede, TLS, aplicacao e dependencia.

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
