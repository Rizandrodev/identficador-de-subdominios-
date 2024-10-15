# Script de Resolução de Subdomínios

Este script Bash resolve subdomínios de um domínio usando um arquivo de texto com uma lista de subdomínios.

## Pré-requisitos

- Sistema operacional com suporte a Bash (Linux, macOS ou Windows com WSL).
- O utilitário `host` instalado.
- Um arquivo `Subdomain.txt` com subdomínios no formato `subdominio^outra_info`.

## Como Funciona

1. **Definir o Domínio**: O primeiro argumento (`$1`) é o domínio principal.
2. **Ler o Arquivo**: O script lê `Subdomain.txt` e extrai subdomínios.
3. **Resolver o Subdomínio**: Usa o comando `host` para resolver o subdomínio e retorna informações de IP.

## Uso

1. **Crie o arquivo `Subdomain.txt`**:
   ```
   subdominio1^outra_info
   subdominio2^outra_info
   ```

2. **Execute o script**:
   - **Linux/macOS**:
     ```bash
     chmod +x bfdomain.sh
     ./bfdomain.sh dominio.com
     ```

   - **Windows (usando WSL)**:
     1. Abra o WSL.
     2. Navegue até o diretório do script.
     3. Execute os mesmos comandos que em Linux/macOS.

## Exemplo

Com `Subdomain.txt` contendo:

```
www^info
mail^info
ftp^info
```

Executando `./bfdomain.sh exemplo.com`, resolve:

- `www.exemplo.com`
- `mail.exemplo.com`
- `ftp.exemplo.com`

## Observações

- Remova caracteres indesejados no `Subdomain.txt` com:
  ```bash
  sed -i 's/\r//' Subdomain.txt
  ```
