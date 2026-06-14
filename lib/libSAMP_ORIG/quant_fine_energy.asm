; =========================================================
; Game Engine Function: quant_fine_energy
; Address            : 0xBC3E8 - 0xBC4B8
; =========================================================

BC3E8:  PUSH            {R4-R7,LR}
BC3EA:  ADD             R7, SP, #0xC
BC3EC:  PUSH.W          {R8-R11}
BC3F0:  SUB             SP, SP, #0xC
BC3F2:  MOV             R9, R1
BC3F4:  MOV             LR, R0
BC3F6:  CMP             R9, R2
BC3F8:  STR             R2, [SP,#0x28+var_28]
BC3FA:  BGE             loc_BC4B0
BC3FC:  LDR.W           R12, [R7,#arg_8]
BC400:  MOV.W           R8, #0xFFFFFFFF
BC404:  LDRD.W          R11, R6, [R7,#arg_0]
BC408:  LDR.W           R2, [R6,R9,LSL#2]
BC40C:  CMP             R2, #1
BC40E:  BLT             loc_BC4A6
BC410:  MOV.W           R0, #0x10000
BC414:  MOV.W           R10, #0
BC418:  LSL.W           R1, R0, R2
BC41C:  LDR.W           R0, [LR,#8]
BC420:  STR             R1, [SP,#0x28+var_20]
BC422:  ASRS            R1, R1, #0x10
BC424:  STR             R1, [SP,#0x28+var_24]
BC426:  MLA.W           R0, R0, R10, R9
BC42A:  RSB.W           R1, R2, #0xA
BC42E:  MOV             R4, LR
BC430:  LDRSH.W         R0, [R11,R0,LSL#1]
BC434:  ADD.W           R0, R0, #0x200
BC438:  ASR.W           R5, R0, R1
BC43C:  LDR             R0, [SP,#0x28+var_24]
BC43E:  CMP             R5, R0
BC440:  LDR             R0, [SP,#0x28+var_20]
BC442:  IT GE
BC444:  ADDGE.W         R5, R8, R0,ASR#16
BC448:  MOV             R0, R12
BC44A:  CMP             R5, #0
BC44C:  MOV             R8, R9
BC44E:  IT LE
BC450:  MOVLE           R5, #0
BC452:  MOV             R9, R3
BC454:  MOV             R1, R5
BC456:  BLX             j_ec_enc_bits
BC45A:  MOV             LR, R4
BC45C:  MOV             R3, R9
BC45E:  LDR.W           R0, [LR,#8]
BC462:  MOV             R9, R8
BC464:  LDR.W           R2, [R6,R9,LSL#2]
BC468:  MOV.W           R4, #0x200
BC46C:  ORR.W           R5, R4, R5,LSL#10
BC470:  MLA.W           R1, R0, R10, R9
BC474:  MOV.W           R4, #0xFE000000
BC478:  LSRS            R5, R2
BC47A:  ADD.W           R4, R4, R5,LSL#16
BC47E:  ADD.W           R10, R10, #1
BC482:  MOV.W           R8, #0xFFFFFFFF
BC486:  LDRH.W          R5, [R3,R1,LSL#1]
BC48A:  ADD.W           R5, R5, R4,ASR#16
BC48E:  STRH.W          R5, [R3,R1,LSL#1]
BC492:  LDRH.W          R5, [R11,R1,LSL#1]
BC496:  SUB.W           R5, R5, R4,ASR#16
BC49A:  STRH.W          R5, [R11,R1,LSL#1]
BC49E:  LDRD.W          R12, R1, [R7,#arg_8]
BC4A2:  CMP             R10, R1
BC4A4:  BLT             loc_BC426
BC4A6:  LDR             R0, [SP,#0x28+var_28]
BC4A8:  ADD.W           R9, R9, #1
BC4AC:  CMP             R9, R0
BC4AE:  BNE             loc_BC408
BC4B0:  ADD             SP, SP, #0xC
BC4B2:  POP.W           {R8-R11}
BC4B6:  POP             {R4-R7,PC}
