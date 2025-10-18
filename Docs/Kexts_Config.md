# Kexts & Drivers — Por que usamos cada uma

| Componente | Nome | Por que usar | Fonte |
|---|---|---|---|
| Núcleo | **Lilu.kext** | Framework de patches para AppleALC/WhateverGreen | Acidanthera |
| Áudio | **AppleALC.kext** | Habilita codecs HDA (HDEF) sem mods de AppleHDA | Acidanthera |
| GPU | **WhateverGreen.kext** | Injeções/patches gráficos, suporte AMD Polaris | Acidanthera |
| SMC | **VirtualSMC.kext** (+SMCProcess/SMCSuperIO) | Emula SMC, sensores e telemetria | Acidanthera |
| Rede | **IntelMausi.kext** (se aplicável) | Driver Intel GbE | Acidanthera |
| USB | **USBMap.kext** (ou USBToolBox) | Mapeamento de portas estável | USBToolBox |
| NVMe/SATA | Nativo | H61 opera bem sem patches adicionais | — |

> **Dica:** mantenha as versões sempre em sincronia (Lilu ↔ WhateverGreen ↔ AppleALC).
