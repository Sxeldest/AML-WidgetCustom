; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffle22FinishAnimCarShuffleCBEP21CAnimBlendAssociationPv
; Address            : 0x502128 - 0x502140
; =========================================================

502128:  LDR             R0, [R1,#0xC]
50212A:  CMP             R0, #0
50212C:  ITTT NE
50212E:  MOVNE           R2, #0
502130:  MOVTNE          R2, #0xC47A
502134:  STRNE           R2, [R0,#0x1C]
502136:  MOVS            R0, #1
502138:  STRB            R0, [R1,#8]
50213A:  MOVS            R0, #0
50213C:  STR             R0, [R1,#0xC]
50213E:  BX              LR
