; =========================================================
; Game Engine Function: sub_145A40
; Address            : 0x145A40 - 0x145AE2
; =========================================================

145A40:  PUSH            {R4,R5,R7,LR}
145A42:  ADD             R7, SP, #8
145A44:  SUB             SP, SP, #0x118
145A46:  LDR             R1, =(off_23496C - 0x145A4C)
145A48:  ADD             R1, PC; off_23496C
145A4A:  LDR             R1, [R1]; dword_23DEF4
145A4C:  LDR             R1, [R1]
145A4E:  LDR.W           R1, [R1,#0x3B0]
145A52:  LDR             R4, [R1,#4]
145A54:  CBZ             R4, loc_145AD2
145A56:  LDRD.W          R1, R0, [R0]; src
145A5A:  MOVS            R3, #0
145A5C:  ASRS            R2, R0, #0x1F
145A5E:  ADD.W           R0, R0, R2,LSR#29
145A62:  MOVS            R2, #1
145A64:  ADD.W           R2, R2, R0,ASR#3; size
145A68:  MOV             R0, SP; int
145A6A:  BL              sub_17D4F2
145A6E:  SUB.W           R1, R7, #-var_A; int
145A72:  MOVS            R2, #0x10
145A74:  MOVS            R3, #1
145A76:  BL              sub_17D786
145A7A:  ADD             R1, SP, #0x120+var_C; int
145A7C:  MOV             R0, SP; int
145A7E:  MOVS            R2, #0x10
145A80:  MOVS            R3, #1
145A82:  BL              sub_17D786
145A86:  LDRH.W          R5, [R7,#var_A]
145A8A:  LSRS            R0, R5, #4
145A8C:  CMP             R0, #0x7C ; '|'
145A8E:  BHI             loc_145ACC
145A90:  MOV             R0, R4
145A92:  MOV             R1, R5
145A94:  BL              sub_F2396
145A98:  CBZ             R0, loc_145ACC
145A9A:  LDR.W           R4, [R4,R5,LSL#2]
145A9E:  CBZ             R4, loc_145ACC
145AA0:  BL              sub_F74A4
145AA4:  CBNZ            R0, loc_145AB2
145AA6:  BL              sub_F541C
145AAA:  CBNZ            R0, loc_145AB2
145AAC:  BL              sub_F4270
145AB0:  CBZ             R0, loc_145AD6
145AB2:  BL              sub_F61A4
145AB6:  LDR             R1, [R4,#0xC]
145AB8:  BL              sub_15E858
145ABC:  LDRH.W          R1, [SP,#0x120+var_C]
145AC0:  MOV             R0, R4
145AC2:  BL              sub_10A0D4
145AC6:  LDR             R0, [R4,#0xC]
145AC8:  BL              sub_F7290
145ACC:  MOV             R0, SP
145ACE:  BL              sub_17D542
145AD2:  ADD             SP, SP, #0x118
145AD4:  POP             {R4,R5,R7,PC}
145AD6:  LDRH.W          R1, [SP,#0x120+var_C]
145ADA:  MOV             R0, R4
145ADC:  BL              sub_10A0D4
145AE0:  B               loc_145ACC
