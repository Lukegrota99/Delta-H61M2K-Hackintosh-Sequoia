# OpenCore — Ajustes essenciais (resumo)

> Este guia explica **o que** foi ajustado e **por quê**. Para detalhes completos, anote suas versões e screenshots do ProperTree/Hackintool.

## PlatformInfo → Generic
- **SMBIOS:** `iMacPro1,1`
- **Serials:** gerados e **não públicos** (use seus próprios)
- **MLB / SystemUUID:** correspondentes ao serial
- **ROM:** MAC address ou valor fixo (consistência do iCloud)

## DeviceProperties
### Áudio (HDEF)
```
PciRoot(0x0)/Pci(0x1B,0x0)
  layout-id  | Data | <01000000>
  built-in   | Data | <01000000>
  model      | String | 6 Series/C200 HD Audio Controller
```
> Teste `layout-id`: 1, 7, 11, 13 conforme seu codec.

## Kernel → Add
- `Lilu.kext`
- `WhateverGreen.kext`
- `AppleALC.kext`
- `VirtualSMC.kext` (+plugins)
- `IntelMausi.kext` (se necessário)
- `USBMap.kext` (quando disponível)

## NVRAM (BootChime)
- `StartupMute=%00`
- `SystemAudioVolume=0x46`
- `AudioOutMask` (pode ser setado pelo utilitário; **resultado: sem chime pré-boot neste hardware**)

## Booter / UEFI
- `ResizeAppleGpuBars` **desativado** para Polaris
- Drivers comuns: `OpenRuntime.efi`, `OpenCanopy.efi` (se usar GUI)

---

**Notas:**  
- Limpe a NVRAM após trocar SMBIOS/seriais.  
- Para estabilidade, evite patches desnecessários.
