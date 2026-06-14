; =========================================================
; Game Engine Function: silk_gains_dequant
; Address            : 0x19605E - 0x1960EE
; =========================================================

19605E:  PUSH            {R4-R7,LR}
196060:  ADD             R7, SP, #0xC
196062:  PUSH.W          {R8-R11}
196066:  SUB             SP, SP, #4
196068:  MOV             R4, R0
19606A:  LDR             R0, [R7,#arg_0]
19606C:  MOV             R8, R3
19606E:  MOV             R5, R2
196070:  MOV             R10, R1
196072:  CMP             R0, #1
196074:  BLT             loc_1960E6
196076:  MOVS            R6, #0
196078:  MOV.W           R9, #0x1D
19607C:  MOVW            R11, #0xF7F
196080:  LDRSB.W         R0, [R10,R6]
196084:  ORRS.W          R1, R6, R8
196088:  BEQ             loc_19609E
19608A:  LDRB            R1, [R5]
19608C:  SUBS            R0, #4
19608E:  SXTB            R2, R1
196090:  ADDS            R2, #8
196092:  CMP             R0, R2
196094:  IT GT
196096:  RSBGT.W         R0, R2, R0,LSL#1
19609A:  ADD             R1, R0
19609C:  B               loc_1960AA
19609E:  LDRSB.W         R1, [R5]
1960A2:  SUBS            R1, #0x10
1960A4:  CMP             R1, R0
1960A6:  IT LT
1960A8:  MOVLT           R1, R0
1960AA:  SXTB            R0, R1
1960AC:  LSLS            R1, R1, #0x18
1960AE:  CMP             R1, #0
1960B0:  IT LT
1960B2:  MOVLT           R0, #0
1960B4:  CMP.W           R1, #0x3F000000
1960B8:  IT GT
1960BA:  MOVGT           R0, #0x3F ; '?'
1960BC:  MOVW            R1, #0x1C71
1960C0:  MULS            R1, R0
1960C2:  STRB            R0, [R5]
1960C4:  MUL.W           R2, R0, R9
1960C8:  ADD.W           R0, R2, R1,ASR#16
1960CC:  ADDW            R0, R0, #0x82A
1960D0:  CMP             R0, R11
1960D2:  IT GE
1960D4:  MOVGE           R0, R11
1960D6:  BLX             j_silk_log2lin
1960DA:  STR.W           R0, [R4,R6,LSL#2]
1960DE:  ADDS            R6, #1
1960E0:  LDR             R0, [R7,#arg_0]
1960E2:  CMP             R0, R6
1960E4:  BNE             loc_196080
1960E6:  ADD             SP, SP, #4
1960E8:  POP.W           {R8-R11}
1960EC:  POP             {R4-R7,PC}
