; =========================================================
; Game Engine Function: sub_105FDC
; Address            : 0x105FDC - 0x10602E
; =========================================================

105FDC:  PUSH            {R4,R5,R7,LR}
105FDE:  ADD             R7, SP, #8
105FE0:  MOV             R5, R0
105FE2:  LDR             R0, [R0,#0xC]
105FE4:  MOV             R4, R1
105FE6:  LDR             R1, [R0]
105FE8:  LDR             R2, [R1,#0x10]
105FEA:  MOV             R1, R4
105FEC:  BLX             R2
105FEE:  LDR             R0, [R5,#8]
105FF0:  LSLS            R1, R0, #0x1F
105FF2:  BEQ             loc_106002
105FF4:  LDR             R1, =(aConst - 0x105FFC); " const" ...
105FF6:  MOV             R0, R4
105FF8:  ADD             R1, PC; " const"
105FFA:  ADDS            R2, R1, #6
105FFC:  BL              sub_FFB40
106000:  LDR             R0, [R5,#8]
106002:  LSLS            R1, R0, #0x1E
106004:  BPL             loc_106016
106006:  LDR             R1, =(aVolatile - 0x10600E); " volatile" ...
106008:  MOV             R0, R4
10600A:  ADD             R1, PC; " volatile"
10600C:  ADD.W           R2, R1, #9
106010:  BL              sub_FFB40
106014:  LDR             R0, [R5,#8]
106016:  LSLS            R0, R0, #0x1D
106018:  IT PL
10601A:  POPPL           {R4,R5,R7,PC}
10601C:  LDR             R1, =(aRestrict - 0x106024); " restrict" ...
10601E:  MOV             R0, R4
106020:  ADD             R1, PC; " restrict"
106022:  ADD.W           R2, R1, #9
106026:  POP.W           {R4,R5,R7,LR}
10602A:  B.W             sub_FFB40
