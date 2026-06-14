; =========================================================
; Game Engine Function: sub_120DB4
; Address            : 0x120DB4 - 0x120E10
; =========================================================

120DB4:  PUSH            {R4-R7,LR}
120DB6:  ADD             R7, SP, #0xC
120DB8:  PUSH.W          {R8-R11}
120DBC:  SUB             SP, SP, #0x1C
120DBE:  LDR             R4, [R7,#arg_14]
120DC0:  LDRD.W          R8, R6, [R7,#arg_C]
120DC4:  LDRD.W          R10, R5, [R7,#arg_4]
120DC8:  LDR.W           R12, [R4]
120DCC:  LDR             R4, [R7,#arg_0]
120DCE:  LDR.W           LR, [R6]
120DD2:  LDR             R6, [R0,#8]
120DD4:  LDR.W           R9, [R5]
120DD8:  LDR.W           R11, [R4]
120DDC:  LDRD.W          R5, R4, [R0]
120DE0:  LDR             R3, [R3]
120DE2:  LDR             R2, [R2]
120DE4:  ADD.W           R0, R5, R6,ASR#1
120DE8:  LDR             R1, [R1]
120DEA:  LSLS            R5, R6, #0x1F
120DEC:  LDR.W           R8, [R8]
120DF0:  LDR.W           R10, [R10]
120DF4:  ITT NE
120DF6:  LDRNE           R5, [R0]
120DF8:  LDRNE           R4, [R5,R4]
120DFA:  STRD.W          LR, R12, [SP,#0x38+var_28]
120DFE:  STRD.W          R9, R8, [SP,#0x38+var_30]
120E02:  STRD.W          R11, R10, [SP,#0x38+var_38]
120E06:  BLX             R4
120E08:  ADD             SP, SP, #0x1C
120E0A:  POP.W           {R8-R11}
120E0E:  POP             {R4-R7,PC}
