; =========================================================
; Game Engine Function: sub_479E80
; Address            : 0x479E80 - 0x479EA6
; =========================================================

479E80:  PUSH            {R4,R6,R7,LR}
479E82:  ADD             R7, SP, #8
479E84:  MOV             R4, R0
479E86:  MOVS            R1, #0
479E88:  LDR.W           R0, [R4,#0x13C]
479E8C:  STRB            R1, [R0,#0xC]
479E8E:  LDR.W           R0, [R4,#0x14C]
479E92:  LDR             R1, [R0,#4]
479E94:  MOV             R0, R4
479E96:  BLX             R1
479E98:  LDR.W           R0, [R4,#0x14C]
479E9C:  LDR             R1, [R0,#8]
479E9E:  MOV             R0, R4
479EA0:  POP.W           {R4,R6,R7,LR}
479EA4:  BX              R1
