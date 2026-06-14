; =========================================================
; Game Engine Function: quant_fine_energy
; Address            : 0x19A1A8 - 0x19A278
; =========================================================

19A1A8:  PUSH            {R4-R7,LR}
19A1AA:  ADD             R7, SP, #0xC
19A1AC:  PUSH.W          {R8-R11}
19A1B0:  SUB             SP, SP, #0xC
19A1B2:  MOV             R9, R1
19A1B4:  MOV             LR, R0
19A1B6:  CMP             R9, R2
19A1B8:  STR             R2, [SP,#0x28+var_28]
19A1BA:  BGE             loc_19A270
19A1BC:  LDR.W           R12, [R7,#arg_8]
19A1C0:  MOV.W           R8, #0xFFFFFFFF
19A1C4:  LDRD.W          R11, R6, [R7,#arg_0]
19A1C8:  LDR.W           R2, [R6,R9,LSL#2]
19A1CC:  CMP             R2, #1
19A1CE:  BLT             loc_19A266
19A1D0:  MOV.W           R0, #0x10000
19A1D4:  MOV.W           R10, #0
19A1D8:  LSL.W           R1, R0, R2
19A1DC:  LDR.W           R0, [LR,#8]
19A1E0:  STR             R1, [SP,#0x28+var_20]
19A1E2:  ASRS            R1, R1, #0x10
19A1E4:  STR             R1, [SP,#0x28+var_24]
19A1E6:  MLA.W           R0, R0, R10, R9
19A1EA:  RSB.W           R1, R2, #0xA
19A1EE:  MOV             R4, LR
19A1F0:  LDRSH.W         R0, [R11,R0,LSL#1]
19A1F4:  ADD.W           R0, R0, #0x200
19A1F8:  ASR.W           R5, R0, R1
19A1FC:  LDR             R0, [SP,#0x28+var_24]
19A1FE:  CMP             R5, R0
19A200:  LDR             R0, [SP,#0x28+var_20]
19A202:  IT GE
19A204:  ADDGE.W         R5, R8, R0,ASR#16
19A208:  MOV             R0, R12
19A20A:  CMP             R5, #0
19A20C:  MOV             R8, R9
19A20E:  IT LE
19A210:  MOVLE           R5, #0
19A212:  MOV             R9, R3
19A214:  MOV             R1, R5
19A216:  BLX             j_ec_enc_bits
19A21A:  MOV             LR, R4
19A21C:  MOV             R3, R9
19A21E:  LDR.W           R0, [LR,#8]
19A222:  MOV             R9, R8
19A224:  LDR.W           R2, [R6,R9,LSL#2]
19A228:  MOV.W           R4, #0x200
19A22C:  ORR.W           R5, R4, R5,LSL#10
19A230:  MLA.W           R1, R0, R10, R9
19A234:  MOV.W           R4, #0xFE000000
19A238:  LSRS            R5, R2
19A23A:  ADD.W           R4, R4, R5,LSL#16
19A23E:  ADD.W           R10, R10, #1
19A242:  MOV.W           R8, #0xFFFFFFFF
19A246:  LDRH.W          R5, [R3,R1,LSL#1]
19A24A:  ADD.W           R5, R5, R4,ASR#16
19A24E:  STRH.W          R5, [R3,R1,LSL#1]
19A252:  LDRH.W          R5, [R11,R1,LSL#1]
19A256:  SUB.W           R5, R5, R4,ASR#16
19A25A:  STRH.W          R5, [R11,R1,LSL#1]
19A25E:  LDRD.W          R12, R1, [R7,#arg_8]
19A262:  CMP             R10, R1
19A264:  BLT             loc_19A1E6
19A266:  LDR             R0, [SP,#0x28+var_28]
19A268:  ADD.W           R9, R9, #1
19A26C:  CMP             R9, R0
19A26E:  BNE             loc_19A1C8
19A270:  ADD             SP, SP, #0xC
19A272:  POP.W           {R8-R11}
19A276:  POP             {R4-R7,PC}
