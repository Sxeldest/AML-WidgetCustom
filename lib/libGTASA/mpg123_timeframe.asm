; =========================================================
; Game Engine Function: mpg123_timeframe
; Address            : 0x230FC8 - 0x23104A
; =========================================================

230FC8:  PUSH            {R4-R7,LR}
230FCA:  ADD             R7, SP, #0xC
230FCC:  PUSH.W          {R11}
230FD0:  MOV             R4, R0
230FD2:  MOV             R5, R3
230FD4:  MOV             R6, R2
230FD6:  CBZ             R4, loc_23102E
230FD8:  MOVW            R0, #0xB2C8
230FDC:  LDR             R0, [R4,R0]
230FDE:  CBZ             R0, loc_231038
230FE0:  LDR             R0, =(unk_5F11C0 - 0x230FF0)
230FE2:  MOVW            R1, #0x92E8
230FE6:  LDR             R1, [R4,R1]
230FE8:  MOVW            R3, #0x92D8
230FEC:  ADD             R0, PC; unk_5F11C0
230FEE:  LDR             R2, =(unk_5F58EC - 0x231004)
230FF0:  VMOV            D16, R6, R5
230FF4:  MOVW            R6, #0x92C8
230FF8:  LDR             R3, [R4,R3]
230FFA:  LDR             R6, [R4,R6]
230FFC:  LDR.W           R0, [R0,R1,LSL#2]
231000:  ADD             R2, PC; unk_5F58EC
231002:  ADD.W           R1, R2, R3,LSL#2
231006:  LSLS            R0, R6
231008:  VMOV            S2, R0
23100C:  VLDR            S0, [R1]
231010:  VCVT.F64.S32    D17, S2
231014:  VCVT.F64.S32    D18, S0
231018:  VDIV.F64        D17, D18, D17
23101C:  VDIV.F64        D16, D16, D17
231020:  VCVT.S32.F64    S0, D16
231024:  VMOV            R0, S0
231028:  POP.W           {R11}
23102C:  POP             {R4-R7,PC}
23102E:  MOV.W           R0, #0xFFFFFFFF
231032:  POP.W           {R11}
231036:  POP             {R4-R7,PC}
231038:  LDR             R0, [R4]
23103A:  CMP             R0, #0
23103C:  BEQ             loc_230FE0
23103E:  MOV             R0, R4
231040:  BL              sub_2309D2
231044:  CMP             R0, #0
231046:  BGE             loc_230FE0
231048:  B               loc_231028
