; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectile27FinishAnimThrowProjectileCBEP21CAnimBlendAssociationPv
; Address            : 0x4DEE10 - 0x4DEE24
; =========================================================

4DEE10:  LDRB            R0, [R1,#9]
4DEE12:  CMP             R0, #0
4DEE14:  MOV.W           R0, #1
4DEE18:  ITE NE
4DEE1A:  STRBNE          R0, [R1,#8]
4DEE1C:  STRBEQ          R0, [R1,#9]
4DEE1E:  MOVS            R0, #0
4DEE20:  STR             R0, [R1,#0xC]
4DEE22:  BX              LR
