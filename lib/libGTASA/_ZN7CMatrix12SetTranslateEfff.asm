; =========================================================
; Game Engine Function: _ZN7CMatrix12SetTranslateEfff
; Address            : 0x44EF92 - 0x44EFBC
; =========================================================

44EF92:  PUSH            {R7,LR}
44EF94:  MOV             R7, SP
44EF96:  MOV.W           R12, #0
44EF9A:  MOV.W           LR, #0x3F800000
44EF9E:  STRD.W          LR, R12, [R0]
44EFA2:  STR.W           R12, [R0,#8]
44EFA6:  STRD.W          R12, LR, [R0,#0x10]
44EFAA:  STR.W           R12, [R0,#0x18]
44EFAE:  STRD.W          R12, R12, [R0,#0x20]
44EFB2:  STR.W           LR, [R0,#0x28]
44EFB6:  ADDS            R0, #0x30 ; '0'
44EFB8:  STM             R0!, {R1-R3}
44EFBA:  POP             {R7,PC}
