; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStep23FinishAnimEvasiveStepCBEP21CAnimBlendAssociationPv
; Address            : 0x50AEC4 - 0x50AEF0
; =========================================================

50AEC4:  LDR             R0, [R1,#0x10]
50AEC6:  LDRH            R2, [R0,#0x2E]
50AEC8:  ORR.W           R2, R2, #4
50AECC:  STRH            R2, [R0,#0x2E]
50AECE:  LDR             R0, [R1,#0x10]
50AED0:  VLDR            S0, [R0,#0x1C]
50AED4:  VCMPE.F32       S0, #0.0
50AED8:  VMRS            APSR_nzcv, FPSCR
50AEDC:  ITTT GE
50AEDE:  MOVGE           R2, #0
50AEE0:  MOVTGE          R2, #0xC080
50AEE4:  STRGE           R2, [R0,#0x1C]
50AEE6:  MOVS            R0, #0
50AEE8:  STR             R0, [R1,#0x10]
50AEEA:  MOVS            R0, #1
50AEEC:  STRB            R0, [R1,#0xC]
50AEEE:  BX              LR
