; =========================================================
; Game Engine Function: sub_143D34
; Address            : 0x143D34 - 0x143DB4
; =========================================================

143D34:  PUSH            {R4,R5,R7,LR}
143D36:  ADD             R7, SP, #8
143D38:  SUB             SP, SP, #0x10
143D3A:  SUB.W           R1, R7, #-var_9; int
143D3E:  MOVS            R5, #0
143D40:  MOVS            R2, #8
143D42:  MOVS            R3, #1
143D44:  MOV             R4, R0
143D46:  STRB.W          R5, [R7,#var_9]
143D4A:  BL              sub_17D786
143D4E:  LDRB.W          R0, [R7,#var_9]
143D52:  SUBS            R0, #0x1C
143D54:  CMN.W           R0, #0x1B
143D58:  BCC             loc_143DB0
143D5A:  SUB.W           R1, R7, #-var_A; int
143D5E:  MOV             R0, R4; int
143D60:  MOVS            R2, #8
143D62:  MOVS            R3, #1
143D64:  STRB.W          R5, [R7,#var_A]
143D68:  BL              sub_17D786
143D6C:  LDRB.W          R0, [R7,#var_A]
143D70:  SUBS            R0, #0xA
143D72:  CMN.W           R0, #9
143D76:  BCC             loc_143DB0
143D78:  MOVS            R0, #0
143D7A:  ADD             R1, SP, #0x18+var_10; int
143D7C:  STRD.W          R0, R0, [SP,#0x18+var_14]
143D80:  MOV             R0, R4; int
143D82:  MOVS            R2, #0x20 ; ' '
143D84:  MOVS            R3, #1
143D86:  BL              sub_17D786
143D8A:  ADD             R1, SP, #0x18+var_14; int
143D8C:  MOV             R0, R4; int
143D8E:  MOVS            R2, #0x20 ; ' '
143D90:  MOVS            R3, #1
143D92:  BL              sub_17D786
143D96:  LDR             R0, =(off_2349A8 - 0x143D9E)
143D98:  LDR             R3, [SP,#0x18+var_10]
143D9A:  ADD             R0, PC; off_2349A8
143D9C:  LDRB.W          R2, [R7,#var_A]
143DA0:  LDRB.W          R1, [R7,#var_9]
143DA4:  LDR             R0, [R0]; dword_381BF4
143DA6:  LDR             R5, [SP,#0x18+var_14]
143DA8:  STR             R5, [SP,#0x18+var_18]
143DAA:  LDR             R0, [R0]
143DAC:  BL              sub_17CBC4
143DB0:  ADD             SP, SP, #0x10
143DB2:  POP             {R4,R5,R7,PC}
