; =========================================================
; Game Engine Function: sub_F1F4C
; Address            : 0xF1F4C - 0xF1FB8
; =========================================================

F1F4C:  PUSH            {R4-R7,LR}
F1F4E:  ADD             R7, SP, #0xC
F1F50:  PUSH.W          {R8,R9,R11}
F1F54:  SUB             SP, SP, #0x10
F1F56:  LDRB            R0, [R0]
F1F58:  CBZ             R0, loc_F1FB0
F1F5A:  LDR             R0, =(off_23496C - 0xF1F60)
F1F5C:  ADD             R0, PC; off_23496C
F1F5E:  LDR             R0, [R0]; dword_23DEF4
F1F60:  LDR             R0, [R0]
F1F62:  CBZ             R0, loc_F1FB0
F1F64:  LDR.W           R0, [R0,#0x3B0]
F1F68:  LDR.W           R9, [R0,#4]
F1F6C:  CMP.W           R9, #0
F1F70:  BEQ             loc_F1FB0
F1F72:  MOV             R8, R1
F1F74:  MOVS            R4, #0
F1F76:  MOV.W           R5, #0x3E80
F1F7A:  UXTH            R6, R4
F1F7C:  MOV             R0, R9
F1F7E:  MOV             R1, R6
F1F80:  BL              sub_F2396
F1F84:  CBZ             R0, loc_F1FA6
F1F86:  LDR.W           R3, [R9,R4,LSL#2]; int
F1F8A:  CBZ             R3, loc_F1FA6
F1F8C:  ADD.W           R1, R9, R5
F1F90:  LDR.W           R0, [R9,R5]; int
F1F94:  LDRD.W          R2, R1, [R1,#4]
F1F98:  STR             R1, [SP,#0x28+var_20]; float
F1F9A:  MOV             R1, R8; int
F1F9C:  STRD.W          R0, R2, [SP,#0x28+var_28]; float
F1FA0:  MOV             R2, R6; int
F1FA2:  BL              sub_F1FC0
F1FA6:  ADDS            R4, #1
F1FA8:  ADDS            R5, #0xC
F1FAA:  CMP.W           R4, #0x7D0
F1FAE:  BNE             loc_F1F7A
F1FB0:  ADD             SP, SP, #0x10
F1FB2:  POP.W           {R8,R9,R11}
F1FB6:  POP             {R4-R7,PC}
