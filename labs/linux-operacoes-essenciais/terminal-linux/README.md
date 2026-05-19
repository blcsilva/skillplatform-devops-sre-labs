# Terminal Linux e navegacao produtiva

    Curso: Linux para operacoes de tecnologia

    ## Objetivo

    Objetivo: dominar navegacao, leitura de arquivos, pipes e redirecionamentos.
Conteudo: pwd, ls, cd, find, grep, awk, sed, less, head, tail e xargs.
Pratica: localizar logs recentes, filtrar erros e montar um comando reutilizavel.
Criterio de conclusao: explicar quando usar pipe, redirect e subshell em uma rotina operacional.

    ## Imagem e recursos

    Este laboratorio usa Docker Compose e imagens publicas sem senhas ou secrets.

    - Base Linux: `ubuntu:24.04`
    - Servicos auxiliares conforme o topico: Nginx, Python demo app, Prometheus ou arquivos de IaC.
    - Todos os dados sao ficticios e servem apenas para pratica.

    ## Case

    Case: triagem de logs de uma aplicacao Linux.

Contexto: o time de suporte informou que a aplicacao web apresentou erros intermitentes entre 10:00 e 10:20. Voce recebeu um diretorio de evidencias em /var/log/app ou, em laboratorio local, uma pasta ./logs com arquivos access.log, app.log e app.log.1.

Objetivo pratico: navegar pelo sistema de arquivos, localizar logs recentes, filtrar erros, extrair campos uteis e montar um comando reutilizavel sem alterar os arquivos originais.

Comandos que devem aparecer na resolucao:
- pwd para confirmar o diretorio atual.
- cd para entrar no diretorio de trabalho.
- ls -lah para inspecionar arquivos, tamanhos e datas.
- find para localizar logs alterados recentemente.
- head e tail para amostrar inicio/fim dos arquivos.
- less para leitura paginada sem carregar tudo de uma vez.
- grep para filtrar ERROR, WARN, timeout, 5xx ou request-id.
- awk para extrair colunas como timestamp, status code ou rota.
- sed para mascarar dados sensiveis ou normalizar trechos.
- xargs para aplicar uma acao sobre arquivos encontrados.
- pipes para encadear leitura, filtro e transformacao.
- redirects > e >> para salvar evidencias e relatorios.
- subshell $(...) para gerar nomes de arquivos com data ou reaproveitar resultados.

    ## Como executar

    Requisitos locais:

    - Docker
    - Docker Compose
    - Git, quando o laboratorio envolver versionamento

    Passos:

            ```bash
        docker compose up -d --build
        docker compose exec linux bash
        cd /workspace/logs
        pwd
        ls -lahtr
        mkdir -p ../evidencias
        find . -type f -name "*.log*" -mtime -1 -print
        head -n 20 app.log
        tail -n 50 app.log
        grep -Ein -e error -e warn -e timeout -e failed -e " 5[0-9]{2} " app.log
        awk '{print $1, $3, $4, $5}' app.log
        sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/x.x.x.x/g' app.log > ../evidencias/app-anon.log
        find . -type f -name "*.log*" -print0 | xargs -0 grep -Ein -e error -e timeout -e failed > ../evidencias/erros-$(date +%Y%m%d).txt
        ```


    ## Entrega esperada

    Entrega esperada:

1. Arquivo evidencias/erros-AAAAMMDD.txt com linhas relevantes de erro.
2. Um comando reutilizavel combinando find, grep, awk ou sed.
3. Uma conclusao curta contendo:
- periodo analisado;
- arquivos inspecionados;
- padroes encontrados;
- hipotese tecnica;
- proxima acao segura.

Exemplo de conclusao:
Entre 10:00 e 10:20, os erros se concentraram em app.log na rota /api/login com status 500 e mensagens timeout. A hipotese inicial e lentidao na dependencia de autenticacao. Proxima acao: comparar com metricas da dependencia e logs do servico de auth.

Criterio de conclusao: explicar quando usar pipe, redirect e subshell em uma rotina operacional.

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
