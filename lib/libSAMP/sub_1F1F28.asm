; =========================================================
; Game Engine Function: sub_1F1F28
; Address            : 0x1F1F28 - 0x1F1F3E
; =========================================================

1F1F28:  PUSH            {R7,LR}
1F1F2A:  MOV             R7, SP
1F1F2C:  MOVS            R3, #1
1F1F2E:  STRB            R3, [R0,#0x10]
1F1F30:  MOVS            R3, #0
1F1F32:  STM.W           R0, {R1-R3}
1F1F36:  STR             R3, [R0,#0xC]
1F1F38:  BL              sub_1F2F78
1F1F3C:  POP             {R7,PC}
