; =========================================================
; Game Engine Function: sub_16EE68
; Address            : 0x16EE68 - 0x16EEB8
; =========================================================

16EE68:  PUSH            {R7,LR}
16EE6A:  MOV             R7, SP
16EE6C:  CMP             R0, #1
16EE6E:  IT LT
16EE70:  POPLT           {R7,PC}
16EE72:  LDR             R1, =(dword_381B58 - 0x16EE82)
16EE74:  MOVW            R2, #0x1A78
16EE78:  ADDS            R0, #1
16EE7A:  MOVW            R12, #0x15C4
16EE7E:  ADD             R1, PC; dword_381B58
16EE80:  LDR.W           LR, [R1]
16EE84:  ADD             R2, LR
16EE86:  LDR             R3, [R2]
16EE88:  LDR             R1, [R2,#8]
16EE8A:  ADD.W           R3, R3, R3,LSL#2
16EE8E:  SUBS            R0, #1
16EE90:  ADD.W           R1, R1, R3,LSL#2
16EE94:  CMP             R0, #1
16EE96:  LDR.W           R3, [R1,#-0x14]
16EE9A:  SUB.W           R1, R1, #0x10
16EE9E:  VLD1.32         {D16-D17}, [R1]
16EEA2:  ADD.W           R1, LR, R3,LSL#4
16EEA6:  ADD             R1, R12
16EEA8:  VST1.32         {D16-D17}, [R1]
16EEAC:  LDR             R1, [R2]
16EEAE:  SUB.W           R3, R1, #1
16EEB2:  STR             R3, [R2]
16EEB4:  BHI             loc_16EE88
16EEB6:  POP             {R7,PC}
