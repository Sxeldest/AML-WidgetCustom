; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn20FinishAnimCarGetInCBEP21CAnimBlendAssociationPv
; Address            : 0x501EF2 - 0x501F0A
; =========================================================

501EF2:  LDR             R0, [R1,#0xC]
501EF4:  MOVS            R2, #1
501EF6:  STRB            R2, [R1,#8]
501EF8:  CMP             R0, #0
501EFA:  ITTT NE
501EFC:  MOVNE           R2, #0
501EFE:  MOVTNE          R2, #0xC47A
501F02:  STRNE           R2, [R0,#0x1C]
501F04:  MOVS            R0, #0
501F06:  STR             R0, [R1,#0xC]
501F08:  BX              LR
