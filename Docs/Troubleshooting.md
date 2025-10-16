# Troubleshooting — Erros & Soluções

## Instalação para ecrã branco após atualização
- Verifique se a EFI foi atualizada junto com o macOS
- Limpe a NVRAM no menu do OpenCore
- Cheque `WhateverGreen.kext` e boot-args gráficos

## GPU sem clocks / tela preta
- Confirme VBIOS correta (RX 560)
- Use `WhateverGreen.kext` atualizado
- Evite parâmetros de boot desnecessários

## Áudio ausente
- Confirme `AppleALC.kext` e `layout-id`
- Teste layouts 1, 7, 11, 13
- Cheque se HDEF está em `DeviceProperties`

## BootChime não toca
- Esperado neste hardware (veja `Docs/Audio_Config.md`)
