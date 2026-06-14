; =========================================================
; Game Engine Function: sub_11DED2
; Address            : 0x11DED2 - 0x11DF04
; =========================================================

11DED2:  PUSH            {R4,R5,R7,LR}
11DED4:  ADD             R7, SP, #8
11DED6:  SUB             SP, SP, #8
11DED8:  LDR.W           LR, [R7,#arg_0]
11DEDC:  LDR             R5, [R0,#0xC]
11DEDE:  LDRD.W          R4, R12, [R0,#4]
11DEE2:  LDR             R3, [R3]
11DEE4:  LDR             R2, [R2]
11DEE6:  ADD.W           R0, R4, R5,ASR#1
11DEEA:  LDR             R1, [R1]
11DEEC:  LSLS            R4, R5, #0x1F
11DEEE:  LDR.W           LR, [LR]
11DEF2:  ITT NE
11DEF4:  LDRNE           R4, [R0]
11DEF6:  LDRNE.W         R12, [R4,R12]
11DEFA:  STR.W           LR, [SP,#0x10+var_10]
11DEFE:  BLX             R12
11DF00:  ADD             SP, SP, #8
11DF02:  POP             {R4,R5,R7,PC}
