; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUp17FinishAnimGetUpCBEP21CAnimBlendAssociationPv
; Address            : 0x52B444 - 0x52B45A
; =========================================================

52B444:  LDR             R0, [R1,#0xC]
52B446:  MOVS            R3, #0
52B448:  MOVS            R2, #1
52B44A:  MOVT            R3, #0xC47A
52B44E:  STRB            R2, [R1,#9]
52B450:  STR             R3, [R0,#0x1C]
52B452:  MOVS            R0, #0
52B454:  STRB            R2, [R1,#8]
52B456:  STR             R0, [R1,#0xC]
52B458:  BX              LR
