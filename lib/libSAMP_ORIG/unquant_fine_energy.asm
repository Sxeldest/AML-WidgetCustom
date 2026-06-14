; =========================================================
; Game Engine Function: unquant_fine_energy
; Address            : 0xBC7A4 - 0xBC818
; =========================================================

BC7A4:  PUSH            {R4-R7,LR}
BC7A6:  ADD             R7, SP, #0xC
BC7A8:  PUSH.W          {R8-R11}
BC7AC:  SUB             SP, SP, #4
BC7AE:  MOV             R11, R1
BC7B0:  MOV             R6, R0
BC7B2:  CMP             R11, R2
BC7B4:  STR             R2, [SP,#0x20+var_20]
BC7B6:  BGE             loc_BC810
BC7B8:  LDR.W           R8, [R7,#arg_8]
BC7BC:  LDRD.W          R4, R10, [R7,#arg_0]
BC7C0:  LDR.W           R1, [R4,R11,LSL#2]
BC7C4:  CMP             R1, #1
BC7C6:  BLT             loc_BC806
BC7C8:  MOV.W           R9, #0
BC7CC:  MOV             R0, R10
BC7CE:  MOV             R5, R3
BC7D0:  BLX             j_ec_dec_bits
BC7D4:  LDR             R1, [R6,#8]
BC7D6:  MOV.W           R12, #0x200
BC7DA:  ORR.W           R0, R12, R0,LSL#10
BC7DE:  MOV             R3, R5
BC7E0:  MOV.W           R12, #0xFE000000
BC7E4:  MLA.W           R2, R1, R9, R11
BC7E8:  LDR.W           R1, [R4,R11,LSL#2]
BC7EC:  ADD.W           R9, R9, #1
BC7F0:  ASRS            R0, R1
BC7F2:  CMP             R9, R8
BC7F4:  ADD.W           R0, R12, R0,LSL#16
BC7F8:  LDRH.W          R5, [R3,R2,LSL#1]
BC7FC:  ADD.W           R0, R5, R0,LSR#16
BC800:  STRH.W          R0, [R3,R2,LSL#1]
BC804:  BLT             loc_BC7CC
BC806:  LDR             R0, [SP,#0x20+var_20]
BC808:  ADD.W           R11, R11, #1
BC80C:  CMP             R11, R0
BC80E:  BNE             loc_BC7C0
BC810:  ADD             SP, SP, #4
BC812:  POP.W           {R8-R11}
BC816:  POP             {R4-R7,PC}
