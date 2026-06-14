; =========================================================
; Game Engine Function: unquant_energy_finalise
; Address            : 0xBC818 - 0xBC920
; =========================================================

BC818:  PUSH            {R4-R7,LR}
BC81A:  ADD             R7, SP, #0xC
BC81C:  PUSH.W          {R8-R11}
BC820:  SUB             SP, SP, #0xC
BC822:  MOV             R9, R1
BC824:  MOV             R4, R3
BC826:  MOV             R10, R0
BC828:  CMP             R9, R2
BC82A:  BGE             loc_BC918
BC82C:  LDRD.W          R3, R0, [R7,#arg_8]
BC830:  LDR             R1, [R7,#arg_10]
BC832:  LDRD.W          R8, R12, [R7,#arg_0]
BC836:  CMP             R3, R1
BC838:  STR             R2, [SP,#0x28+var_28]
BC83A:  BLT             loc_BC8B2
BC83C:  MOVW            R5, #0xFE00
BC840:  MOV             R6, R9
BC842:  MOVT            R5, #0xFFFF
BC846:  STR.W           R10, [SP,#0x28+var_20]
BC84A:  LDR.W           R1, [R8,R6,LSL#2]
BC84E:  CMP             R1, #7
BC850:  BGT             loc_BC8A6
BC852:  LDR.W           R1, [R12,R6,LSL#2]
BC856:  CBNZ            R1, loc_BC8A6
BC858:  MOV             R10, R8
BC85A:  LDR.W           R8, [R7,#arg_10]
BC85E:  MOV.W           R11, #0
BC862:  STR             R3, [SP,#0x28+var_24]
BC864:  MOVS            R1, #1
BC866:  BLX             j_ec_dec_bits
BC86A:  LDR             R1, [SP,#0x28+var_20]
BC86C:  LSLS            R0, R0, #0x1A
BC86E:  LDR.W           R2, [R10,R6,LSL#2]
BC872:  ADD.W           R0, R5, R0,ASR#16
BC876:  LDR             R1, [R1,#8]
BC878:  ADDS            R2, #1
BC87A:  ASRS            R0, R2
BC87C:  MLA.W           R1, R1, R11, R6
BC880:  ADD.W           R11, R11, #1
BC884:  CMP             R11, R8
BC886:  LDRH.W          R3, [R4,R1,LSL#1]
BC88A:  ADD             R0, R3
BC88C:  STRH.W          R0, [R4,R1,LSL#1]
BC890:  LDR             R0, [R7,#arg_C]
BC892:  BLT             loc_BC864
BC894:  LDR             R3, [SP,#0x28+var_24]
BC896:  MOV             R8, R10
BC898:  LDR             R2, [SP,#0x28+var_28]
BC89A:  LDR.W           R12, [R7,#arg_4]
BC89E:  SUB.W           R3, R3, R11
BC8A2:  LDR.W           R10, [SP,#0x28+var_20]
BC8A6:  ADDS            R6, #1
BC8A8:  CMP             R6, R2
BC8AA:  BGE             loc_BC8B2
BC8AC:  LDR             R1, [R7,#arg_10]
BC8AE:  CMP             R3, R1
BC8B0:  BGE             loc_BC84A
BC8B2:  LDR             R5, [R7,#arg_10]
BC8B4:  CMP             R3, R5
BC8B6:  BLT             loc_BC918
BC8B8:  MOV             R11, #0xFFFFFE00
BC8C0:  LDR.W           R1, [R8,R9,LSL#2]
BC8C4:  CMP             R1, #7
BC8C6:  BGT             loc_BC90C
BC8C8:  LDR.W           R1, [R12,R9,LSL#2]
BC8CC:  CMP             R1, #1
BC8CE:  BNE             loc_BC90C
BC8D0:  MOVS            R6, #0
BC8D2:  STR             R3, [SP,#0x28+var_24]
BC8D4:  MOVS            R1, #1
BC8D6:  BLX             j_ec_dec_bits
BC8DA:  LDR.W           R1, [R10,#8]
BC8DE:  LSLS            R0, R0, #0x1A
BC8E0:  LDR.W           R2, [R8,R9,LSL#2]
BC8E4:  ADD.W           R0, R11, R0,ASR#16
BC8E8:  MLA.W           R1, R1, R6, R9
BC8EC:  ADDS            R2, #1
BC8EE:  ADDS            R6, #1
BC8F0:  ASRS            R0, R2
BC8F2:  CMP             R6, R5
BC8F4:  LDRH.W          R3, [R4,R1,LSL#1]
BC8F8:  ADD             R0, R3
BC8FA:  STRH.W          R0, [R4,R1,LSL#1]
BC8FE:  LDR             R0, [R7,#arg_C]
BC900:  BLT             loc_BC8D4
BC902:  LDR             R3, [SP,#0x28+var_24]
BC904:  LDR             R2, [SP,#0x28+var_28]
BC906:  LDR.W           R12, [R7,#arg_4]
BC90A:  SUBS            R3, R3, R6
BC90C:  ADD.W           R9, R9, #1
BC910:  CMP             R9, R2
BC912:  BGE             loc_BC918
BC914:  CMP             R3, R5
BC916:  BGE             loc_BC8C0
BC918:  ADD             SP, SP, #0xC
BC91A:  POP.W           {R8-R11}
BC91E:  POP             {R4-R7,PC}
