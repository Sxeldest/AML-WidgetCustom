; =========================================================
; Game Engine Function: sub_146BF0
; Address            : 0x146BF0 - 0x146C38
; =========================================================

146BF0:  PUSH            {R7,LR}
146BF2:  MOV             R7, SP
146BF4:  SUB             SP, SP, #0x118
146BF6:  LDRD.W          R1, R0, [R0]; src
146BFA:  MOVS            R3, #0
146BFC:  ASRS            R2, R0, #0x1F
146BFE:  ADD.W           R0, R0, R2,LSR#29
146C02:  MOVS            R2, #1
146C04:  ADD.W           R2, R2, R0,ASR#3; size
146C08:  MOV             R0, SP; int
146C0A:  BL              sub_17D4F2
146C0E:  ADD             R1, SP, #0x120+var_C; int
146C10:  MOVS            R2, #0x20 ; ' '
146C12:  MOVS            R3, #1
146C14:  BL              sub_17D786
146C18:  LDR             R0, =(off_23496C - 0x146C1E)
146C1A:  ADD             R0, PC; off_23496C
146C1C:  LDR             R0, [R0]; dword_23DEF4
146C1E:  LDR             R0, [R0]
146C20:  LDR.W           R0, [R0,#0x3B0]
146C24:  LDR             R0, [R0,#0xC]
146C26:  CBZ             R0, loc_146C2E
146C28:  LDR             R1, [SP,#0x120+var_C]
146C2A:  BL              sub_148B60
146C2E:  MOV             R0, SP
146C30:  BL              sub_17D542
146C34:  ADD             SP, SP, #0x118
146C36:  POP             {R7,PC}
