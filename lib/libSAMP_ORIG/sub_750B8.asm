; =========================================================
; Game Engine Function: sub_750B8
; Address            : 0x750B8 - 0x75110
; =========================================================

750B8:  PUSH            {R7,LR}
750BA:  MOV             R7, SP
750BC:  LDR             R3, [R0,#0x18]
750BE:  MOV             R12, R1
750C0:  LDR             R2, [R0,#0x2C]
750C2:  CMP             R2, R3
750C4:  ITT CC
750C6:  STRCC           R3, [R0,#0x2C]
750C8:  MOVCC           R2, R3
750CA:  LDRD.W          R1, R3, [R0,#8]
750CE:  CMP             R1, R3
750D0:  ITT CS
750D2:  MOVCS.W         R0, #0xFFFFFFFF
750D6:  POPCS           {R7,PC}
750D8:  ADDS.W          R1, R12, #1
750DC:  BEQ             loc_75106
750DE:  LDRB.W          R1, [R0,#0x30]
750E2:  LSLS            R1, R1, #0x1B
750E4:  BMI             loc_750F8
750E6:  LDRB.W          R1, [R3,#-1]
750EA:  UXTB.W          LR, R12
750EE:  CMP             R1, LR
750F0:  ITT NE
750F2:  MOVNE.W         R0, #0xFFFFFFFF
750F6:  POPNE           {R7,PC}
750F8:  SUBS            R1, R3, #1
750FA:  STRD.W          R1, R2, [R0,#0xC]
750FE:  MOV             R0, R12
75100:  STRB.W          R12, [R3,#-1]
75104:  POP             {R7,PC}
75106:  SUBS            R1, R3, #1
75108:  STRD.W          R1, R2, [R0,#0xC]
7510C:  MOVS            R0, #0
7510E:  POP             {R7,PC}
