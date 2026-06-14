; =========================================================
; Game Engine Function: sub_128FEC
; Address            : 0x128FEC - 0x12905E
; =========================================================

128FEC:  PUSH            {R4,R5,R7,LR}
128FEE:  ADD             R7, SP, #8
128FF0:  MOV             R4, R0
128FF2:  LDRH            R0, [R0,#0x26]
128FF4:  MOVW            R1, #0x12BB
128FF8:  MOVW            R2, #0x3E5D
128FFC:  SUBS            R1, R0, R1
128FFE:  SUBS            R2, R0, R2
129000:  CLZ.W           R1, R1
129004:  CLZ.W           R2, R2
129008:  LSRS            R1, R1, #5
12900A:  LSRS            R2, R2, #5
12900C:  ORRS            R1, R2
12900E:  BEQ             loc_12904E
129010:  LDR             R5, =(word_314134 - 0x129016)
129012:  ADD             R5, PC; word_314134
129014:  STRH            R0, [R5]
129016:  BL              sub_129074
12901A:  LDR             R1, =(unk_B3CB4 - 0x129024)
12901C:  EOR.W           R0, R0, #2
129020:  ADD             R1, PC; unk_B3CB4
129022:  LDRH.W          R0, [R1,R0,LSL#1]
129026:  STRH            R0, [R4,#0x26]
129028:  BL              sub_163768
12902C:  LDRH            R1, [R4,#0x26]
12902E:  LDR             R2, =(dword_314138 - 0x129034)
129030:  ADD             R2, PC; dword_314138
129032:  LDR.W           R0, [R0,R1,LSL#2]
129036:  STR             R0, [R2]
129038:  BL              sub_163768
12903C:  LDRH            R1, [R5]
12903E:  LDR.W           R5, [R0,R1,LSL#2]
129042:  BL              sub_163768
129046:  LDRH            R1, [R4,#0x26]
129048:  STR.W           R5, [R0,R1,LSL#2]
12904C:  POP             {R4,R5,R7,PC}
12904E:  LDR             R0, =(dword_314138 - 0x129058)
129050:  MOVS            R2, #0
129052:  LDR             R1, =(word_314134 - 0x12905A)
129054:  ADD             R0, PC; dword_314138
129056:  ADD             R1, PC; word_314134
129058:  STR             R2, [R0]
12905A:  STRH            R2, [R1]
12905C:  POP             {R4,R5,R7,PC}
