; =========================================================
; Game Engine Function: sub_150F9C
; Address            : 0x150F9C - 0x151042
; =========================================================

150F9C:  PUSH            {R4-R7,LR}
150F9E:  ADD             R7, SP, #0xC
150FA0:  PUSH.W          {R8-R10}
150FA4:  LDR             R4, [R0,#4]
150FA6:  CMP             R4, #0
150FA8:  BEQ             loc_151038
150FAA:  MOV             R6, R0
150FAC:  MOV.W           R0, #0x55555555
150FB0:  AND.W           R0, R0, R4,LSR#1
150FB4:  LDRH            R5, [R1]
150FB6:  SUBS            R0, R4, R0
150FB8:  MOV.W           R1, #0x33333333
150FBC:  AND.W           R1, R1, R0,LSR#2
150FC0:  BIC.W           R0, R0, #0xCCCCCCCC
150FC4:  ADD             R0, R1
150FC6:  MOV.W           R1, #0x1010101
150FCA:  ADD.W           R0, R0, R0,LSR#4
150FCE:  BIC.W           R0, R0, #0xF0F0F0F0
150FD2:  MULS            R0, R1
150FD4:  MOV.W           R9, R0,LSR#24
150FD8:  CMP.W           R9, #1
150FDC:  BHI             loc_150FE6
150FDE:  SUBS            R0, R4, #1
150FE0:  AND.W           R8, R0, R5
150FE4:  B               loc_150FF8
150FE6:  CMP             R4, R5
150FE8:  BLS             loc_150FEE
150FEA:  MOV             R8, R5
150FEC:  B               loc_150FF8
150FEE:  MOV             R0, R5
150FF0:  MOV             R1, R4
150FF2:  BLX             sub_221798
150FF6:  MOV             R8, R1
150FF8:  LDR             R0, [R6]
150FFA:  LDR.W           R0, [R0,R8,LSL#2]
150FFE:  CBZ             R0, loc_151038
151000:  LDR             R6, [R0]
151002:  CBZ             R6, loc_151038
151004:  SUB.W           R10, R4, #1
151008:  LDR             R0, [R6,#4]
15100A:  CMP             R0, R5
15100C:  BNE             loc_151016
15100E:  LDRH            R0, [R6,#8]
151010:  CMP             R0, R5
151012:  BNE             loc_151032
151014:  B               loc_15103A
151016:  CMP.W           R9, #1
15101A:  BHI             loc_151022
15101C:  AND.W           R0, R0, R10
151020:  B               loc_15102E
151022:  CMP             R0, R4
151024:  BCC             loc_15102E
151026:  MOV             R1, R4
151028:  BLX             sub_221798
15102C:  MOV             R0, R1
15102E:  CMP             R0, R8
151030:  BNE             loc_151038
151032:  LDR             R6, [R6]
151034:  CMP             R6, #0
151036:  BNE             loc_151008
151038:  MOVS            R6, #0
15103A:  MOV             R0, R6
15103C:  POP.W           {R8-R10}
151040:  POP             {R4-R7,PC}
