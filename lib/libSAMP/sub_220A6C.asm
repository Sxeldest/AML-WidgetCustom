; =========================================================
; Game Engine Function: sub_220A6C
; Address            : 0x220A6C - 0x220AB4
; =========================================================

220A6C:  CMP             R1, #1
220A70:  BCC             loc_220AA4
220A74:  BXEQ            LR
220A78:  CMP             R0, R1
220A7C:  MOVCC           R0, #0
220A80:  BXCC            LR
220A84:  CLZ             R12, R0
220A88:  CLZ             R3, R1
220A8C:  SUB             R3, R3, R12
220A90:  ADR             R12, sub_220C28
220A94:  SUB             R12, R12, R3,LSL#2
220A98:  SUB             R12, R12, R3,LSL#3
220A9C:  MOV             R3, #0
220AA0:  BX              R12
220AA4:  MOVS            R0, #0
220AA8:  PUSH            {R7,LR}
220AAC:  BL              nullsub_1
220AB0:  POP             {R7,PC}
