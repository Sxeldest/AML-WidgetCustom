; =========================================================
; Game Engine Function: sub_150DB0
; Address            : 0x150DB0 - 0x150DFA
; =========================================================

150DB0:  PUSH            {R4,R5,R7,LR}
150DB2:  ADD             R7, SP, #8
150DB4:  SUB             SP, SP, #0x30
150DB6:  VLDR            D16, [R0,#0x6C]
150DBA:  MOV             R5, R0
150DBC:  LDR             R0, [R0,#0x74]
150DBE:  MOV             R4, R1
150DC0:  VSTR            D16, [SP,#0x38+var_18]
150DC4:  ADD             R1, SP, #0x38+var_18
150DC6:  VLDR            D16, [R5,#0x78]
150DCA:  ADD             R2, SP, #0x38+var_28
150DCC:  STR             R0, [SP,#0x38+var_10]
150DCE:  MOV             R3, SP
150DD0:  LDR.W           R0, [R5,#0x80]
150DD4:  STR             R0, [SP,#0x38+var_20]
150DD6:  VSTR            D16, [SP,#0x38+var_28]
150DDA:  VLDR            D16, [R5,#0x84]
150DDE:  LDR.W           R0, [R5,#0x8C]
150DE2:  STR             R0, [SP,#0x38+var_30]
150DE4:  MOV             R0, R4
150DE6:  VSTR            D16, [SP,#0x38+var_38]
150DEA:  BL              sub_158DE4
150DEE:  MOV             R0, R5
150DF0:  MOV             R1, R4
150DF2:  BL              sub_150C8C
150DF6:  ADD             SP, SP, #0x30 ; '0'
150DF8:  POP             {R4,R5,R7,PC}
