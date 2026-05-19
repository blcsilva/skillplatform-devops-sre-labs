# Redes no Linux para troubleshooting

    Curso: Linux para operacoes de tecnologia

    ## Objetivo

    Objetivo: diagnosticar conectividade de forma ordenada.
Conteudo: ip, ss, curl, dig, traceroute, tcpdump, DNS, portas e rotas.
Pratica: identificar se uma falha esta em DNS, rota, firewall ou servico.
Criterio de conclusao: produzir um checklist de debug de rede em cinco passos.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: aplicacao pratica de "Redes no Linux para troubleshooting".

Contexto: voce recebeu uma demanda de operacao em ambiente de homologacao. O objetivo nao e apenas explicar o conceito, mas executar uma sequencia segura de analise, registrar evidencias e propor uma acao tecnicamente defensavel.

Objetivo pratico: diagnosticar conectividade de forma ordenada.

Ferramentas/conceitos que devem aparecer na resolucao:
- ip: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- ss: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- curl: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- dig: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- traceroute: use no case para coletar evidencia, aplicar a pratica ou validar resultado.
- tcpdump: use no case para coletar evidencia, aplicar a pratica ou validar resultado.

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

Criterio de conclusao: produzir um checklist de debug de rede em cinco passos.

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
