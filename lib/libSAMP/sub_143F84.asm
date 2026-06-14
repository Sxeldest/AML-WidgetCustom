; =========================================================
; Game Engine Function: sub_143F84
; Address            : 0x143F84 - 0x143FD4
; =========================================================

143F84:  PUSH            {R4,R6,R7,LR}
143F86:  ADD             R7, SP, #8
143F88:  SUB             SP, SP, #8
143F8A:  MOV             R2, R1
143F8C:  MOV             R4, R0
143F8E:  MOVS            R0, #0
143F90:  SUB.W           R1, R7, #-var_9; int
143F94:  STRB.W          R0, [R7,#var_9]
143F98:  MOV             R0, R2; int
143F9A:  MOVS            R2, #8
143F9C:  MOVS            R3, #1
143F9E:  BL              sub_17D786
143FA2:  LDRB.W          R0, [R7,#var_9]
143FA6:  SUBS            R1, R0, #3
143FA8:  CMN.W           R1, #2
143FAC:  BCC             loc_143FD0
143FAE:  LDR.W           R1, [R4,#0x20C]
143FB2:  LDRB.W          R2, [R1,#0x48]
143FB6:  CMP             R2, R0
143FB8:  BEQ             loc_143FD0
143FBA:  LDR             R2, =(off_23494C - 0x143FCC)
143FBC:  MOV             R3, #0x6E045C
143FC4:  STRB.W          R0, [R1,#0x48]
143FC8:  ADD             R2, PC; off_23494C
143FCA:  LDR             R2, [R2]; dword_23DF24
143FCC:  LDR             R2, [R2]
143FCE:  STR             R0, [R2,R3]
143FD0:  ADD             SP, SP, #8
143FD2:  POP             {R4,R6,R7,PC}
