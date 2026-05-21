# Area de trabalho do laboratorio

Lab: **Redes no Linux para troubleshooting**

Use esta pasta para executar comandos, registrar evidencias e montar sua resposta final.

Estrutura sugerida:

- `evidencias/`: saidas de comandos, prints textuais, relatorios e arquivos gerados.
- `README.md`: orientacao desta area de trabalho.

Inicio recomendado:

```bash
mkdir -p evidencias
date -Iseconds > evidencias/inicio.txt
pwd | tee evidencias/diretorio.txt
find . -maxdepth 3 -type f | sort | tee evidencias/arquivos.txt
```

Ao final, registre uma conclusao curta com: contexto, evidencias, hipotese, risco e proxima acao segura.
