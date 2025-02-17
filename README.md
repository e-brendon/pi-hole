# Pi-hole Custom Blocklists

Este repositório contém listas personalizadas para o Pi-hole, focadas em bloquear:

- Conteúdo adulto
- Sites maliciosos (malware)
- Plataformas de apostas e bets

As listas são constantemente atualizadas e verificadas para garantir qualidade e desempenho.

## Estrutura das Listas
As listas estão divididas em categorias:

- `adulto.txt`: Bloqueio de conteúdo adulto.
- `malware.txt`: Bloqueio de domínios maliciosos.
- `bets.txt`: Bloqueio de sites de apostas e plataformas de bets.

## Como Usar
Copie o link bruto dos arquivos e adicione nas configurações do seu Pi-hole em "Group Management > Adlists".

Exemplo:

```
https://raw.githubusercontent.com/e-brendon/pi-hole/main/lists/adulto.txt
```

### Substitua `adulto.txt` por `malware.txt` ou `bets.txt` conforme a lista desejada.
