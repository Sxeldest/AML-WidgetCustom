; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDie15FinishAnimDieCBEP21CAnimBlendAssociationPv
; Address            : 0x4EAF8C - 0x4EAF9E
; =========================================================

4EAF8C:  LDRB.W          R0, [R1,#0x20]
4EAF90:  MOVS            R2, #0
4EAF92:  STR             R2, [R1,#0x24]
4EAF94:  ORR.W           R0, R0, #1
4EAF98:  STRB.W          R0, [R1,#0x20]
4EAF9C:  BX              LR
