; =========================================================
; Game Engine Function: sub_107D98
; Address            : 0x107D98 - 0x107DDC
; =========================================================

107D98:  PUSH            {R4,R5,R7,LR}
107D9A:  ADD             R7, SP, #8
107D9C:  MOV             R5, R1
107D9E:  MOV.W           R1, #0x320; n
107DA2:  MOV             R4, R0
107DA4:  BLX             sub_22178C
107DA8:  MOV             R0, R4; dest
107DAA:  MOV             R1, R5; src
107DAC:  MOV.W           R2, #0x320; n
107DB0:  BLX             strncpy
107DB4:  LDR.W           R0, [R4,#0x98C]
107DB8:  MOVS            R1, #0
107DBA:  STRB.W          R1, [R4,#0x320]
107DBE:  CMP             R0, #4
107DC0:  IT NE
107DC2:  POPNE           {R4,R5,R7,PC}
107DC4:  LDR.W           R0, [R4,#0x9A8]
107DC8:  ADDS            R1, R0, #1
107DCA:  BEQ             locret_107DDA
107DCC:  BL              sub_108C68
107DD0:  MOV             R0, R4
107DD2:  POP.W           {R4,R5,R7,LR}
107DD6:  B.W             sub_107DDC
107DDA:  POP             {R4,R5,R7,PC}
