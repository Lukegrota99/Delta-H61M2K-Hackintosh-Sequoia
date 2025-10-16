# Hardware Profile — DELTA H61M2K (IvyBridge Edition)

> Este arquivo resume os componentes principais, barramentos e periféricos do setup.
> Relatório completo pode ser anexado em `/Docs/AIDA64-Report` (HTML/TXT/CSV).

## CPU
- Intel Core i5 (Ivy Bridge)
- Gerenciamento de energia via `iMacPro1,1` (estável para RX 560)

## Placa-mãe
- **Modelo:** Delta H61M2K (UEFI mod)
- **Chipset:** Intel H61
- **BIOS/UEFI:** modo UEFI habilitado

## Memória
- DDR3 — capacidade total conforme slots disponíveis

## GPU
- **Radeon RX 560 4GB (Gigabyte)**  
  - Metal 2 ✅  
  - Dual display **VGA** via adaptadores USB→VGA e DP→VGA ✅

## Áudio
- Codec interno exposto como **HDEF** (PCI 0x1B,0x0)  
- **AppleALC.kext** habilitado com `layout-id` testável (1, 7, 11, 13)
- Placas USB externas (ex.: Scarlett) funcionam após o boot

## Armazenamento
- SSD 240GB (WD) — macOS Sequoia

## USB / Rede
- USB: portas mapeadas (ver `USBMap.kext` quando disponível)
- Rede: `IntelMausi.kext` (se aplicável)

## Monitores
- Dois monitores 22" (entrada VGA)  
- Conexões:
  - DP → VGA (adaptador)
  - USB → VGA (adaptador)

---

### Observações importantes
- *SMBIOS iMacPro1,1* escolhido pela estabilidade com GPUs AMD Polaris.
- O BootChime **não** toca antes do macOS neste hardware (ver `Audio_Config.md`).

> Atualize esta página com dados exatos do AIDA64/Hackintool assim que disponíveis.
