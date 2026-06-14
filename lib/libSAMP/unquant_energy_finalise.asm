; =========================================================
; Game Engine Function: unquant_energy_finalise
; Address            : 0x19A5D8 - 0x19A6E0
; =========================================================

19A5D8:  PUSH            {R4-R7,LR}
19A5DA:  ADD             R7, SP, #0xC
19A5DC:  PUSH.W          {R8-R11}
19A5E0:  SUB             SP, SP, #0xC
19A5E2:  MOV             R9, R1
19A5E4:  MOV             R4, R3
19A5E6:  MOV             R10, R0
19A5E8:  CMP             R9, R2
19A5EA:  BGE             loc_19A6D8
19A5EC:  LDRD.W          R3, R0, [R7,#arg_8]
19A5F0:  LDR             R1, [R7,#arg_10]
19A5F2:  LDRD.W          R8, R12, [R7,#arg_0]
19A5F6:  CMP             R3, R1
19A5F8:  STR             R2, [SP,#0x28+var_28]
19A5FA:  BLT             loc_19A672
19A5FC:  MOVW            R5, #0xFE00
19A600:  MOV             R6, R9
19A602:  MOVT            R5, #0xFFFF
19A606:  STR.W           R10, [SP,#0x28+var_20]
19A60A:  LDR.W           R1, [R8,R6,LSL#2]
19A60E:  CMP             R1, #7
19A610:  BGT             loc_19A666
19A612:  LDR.W           R1, [R12,R6,LSL#2]
19A616:  CBNZ            R1, loc_19A666
19A618:  MOV             R10, R8
19A61A:  LDR.W           R8, [R7,#arg_10]
19A61E:  MOV.W           R11, #0
19A622:  STR             R3, [SP,#0x28+var_24]
19A624:  MOVS            R1, #1
19A626:  BLX             j_ec_dec_bits
19A62A:  LDR             R1, [SP,#0x28+var_20]
19A62C:  LSLS            R0, R0, #0x1A
19A62E:  LDR.W           R2, [R10,R6,LSL#2]
19A632:  ADD.W           R0, R5, R0,ASR#16
19A636:  LDR             R1, [R1,#8]
19A638:  ADDS            R2, #1
19A63A:  ASRS            R0, R2
19A63C:  MLA.W           R1, R1, R11, R6
19A640:  ADD.W           R11, R11, #1
19A644:  CMP             R11, R8
19A646:  LDRH.W          R3, [R4,R1,LSL#1]
19A64A:  ADD             R0, R3
19A64C:  STRH.W          R0, [R4,R1,LSL#1]
19A650:  LDR             R0, [R7,#arg_C]
19A652:  BLT             loc_19A624
19A654:  LDR             R3, [SP,#0x28+var_24]
19A656:  MOV             R8, R10
19A658:  LDR             R2, [SP,#0x28+var_28]
19A65A:  LDR.W           R12, [R7,#arg_4]
19A65E:  SUB.W           R3, R3, R11
19A662:  LDR.W           R10, [SP,#0x28+var_20]
19A666:  ADDS            R6, #1
19A668:  CMP             R6, R2
19A66A:  BGE             loc_19A672
19A66C:  LDR             R1, [R7,#arg_10]
19A66E:  CMP             R3, R1
19A670:  BGE             loc_19A60A
19A672:  LDR             R5, [R7,#arg_10]
19A674:  CMP             R3, R5
19A676:  BLT             loc_19A6D8
19A678:  MOV             R11, #0xFFFFFE00
19A680:  LDR.W           R1, [R8,R9,LSL#2]
19A684:  CMP             R1, #7
19A686:  BGT             loc_19A6CC
19A688:  LDR.W           R1, [R12,R9,LSL#2]
19A68C:  CMP             R1, #1
19A68E:  BNE             loc_19A6CC
19A690:  MOVS            R6, #0
19A692:  STR             R3, [SP,#0x28+var_24]
19A694:  MOVS            R1, #1
19A696:  BLX             j_ec_dec_bits
19A69A:  LDR.W           R1, [R10,#8]
19A69E:  LSLS            R0, R0, #0x1A
19A6A0:  LDR.W           R2, [R8,R9,LSL#2]
19A6A4:  ADD.W           R0, R11, R0,ASR#16
19A6A8:  MLA.W           R1, R1, R6, R9
19A6AC:  ADDS            R2, #1
19A6AE:  ADDS            R6, #1
19A6B0:  ASRS            R0, R2
19A6B2:  CMP             R6, R5
19A6B4:  LDRH.W          R3, [R4,R1,LSL#1]
19A6B8:  ADD             R0, R3
19A6BA:  STRH.W          R0, [R4,R1,LSL#1]
19A6BE:  LDR             R0, [R7,#arg_C]
19A6C0:  BLT             loc_19A694
19A6C2:  LDR             R3, [SP,#0x28+var_24]
19A6C4:  LDR             R2, [SP,#0x28+var_28]
19A6C6:  LDR.W           R12, [R7,#arg_4]
19A6CA:  SUBS            R3, R3, R6
19A6CC:  ADD.W           R9, R9, #1
19A6D0:  CMP             R9, R2
19A6D2:  BGE             loc_19A6D8
19A6D4:  CMP             R3, R5
19A6D6:  BGE             loc_19A680
19A6D8:  ADD             SP, SP, #0xC
19A6DA:  POP.W           {R8-R11}
19A6DE:  POP             {R4-R7,PC}
