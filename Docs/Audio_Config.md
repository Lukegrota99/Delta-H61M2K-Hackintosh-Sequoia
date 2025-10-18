# Áudio — AppleALC, HDEF e BootChime

## Objetivo
Habilitar áudio interno via **AppleALC** e, se possível, o **som de inicialização** (BootChime).

## Configuração
```
PciRoot(0x0)/Pci(0x1B,0x0)
  layout-id  | Data | <01000000>  # testar 1, 7, 11, 13
  built-in   | Data | <01000000>
```
- `AppleALC.kext` + `Lilu.kext` carregados
- Placas USB (Scarlett, etc.) só ficam disponíveis **após** o boot

## Resultado — BootChime
Mesmo com HDEF mapeado, **o chime não toca no pré-boot** neste hardware.  
A controladora que efetivamente entrega áudio prático está disponível apenas após o macOS carregar.

### Alternativa
Simular som pós-login:
```bash
afplay /System/Library/Sounds/Glass.aiff
```
via LaunchAgent/Automator.
