; =========================================================
; Game Engine Function: silk_decode_parameters
; Address            : 0xB7AFC - 0xB7CD8
; =========================================================

B7AFC:  PUSH            {R4-R7,LR}
B7AFE:  ADD             R7, SP, #0xC
B7B00:  PUSH.W          {R8-R11}
B7B04:  SUB             SP, SP, #0x4C
B7B06:  MOV             R8, R0
B7B08:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7B12)
B7B0A:  MOV             R9, R1
B7B0C:  CMP             R2, #2
B7B0E:  ADD             R0, PC; __stack_chk_guard_ptr
B7B10:  MOV.W           R3, #0
B7B14:  ADD.W           R1, R8, #0xAB0
B7B18:  ADDW            R2, R8, #0x908
B7B1C:  LDR             R0, [R0]; __stack_chk_guard
B7B1E:  LDR             R0, [R0]
B7B20:  STR             R0, [SP,#0x68+var_20]
B7B22:  LDR.W           R0, [R8,#0x914]
B7B26:  STR             R0, [SP,#0x68+var_68]
B7B28:  ADD.W           R0, R9, #0x10
B7B2C:  IT EQ
B7B2E:  MOVEQ           R3, #1
B7B30:  BLX             j_silk_gains_dequant
B7B34:  ADD.W           R10, SP, #0x68+src
B7B38:  LDR.W           R2, [R8,#0xAAC]
B7B3C:  ADDW            R1, R8, #0xAB8
B7B40:  MOV             R0, R10
B7B42:  BLX             j_silk_NLSF_decode
B7B46:  MOVW            R4, #0x1048
B7B4A:  ADD.W           R11, R9, #0x40 ; '@'
B7B4E:  LDR.W           R3, [R8,R4]
B7B52:  MOV             R1, R10
B7B54:  LDR.W           R2, [R8,#0x924]
B7B58:  MOV             R0, R11
B7B5A:  BLX             j_silk_NLSF2A
B7B5E:  LDR.W           R0, [R8,#0x948]
B7B62:  ADD.W           R5, R9, #0x20 ; ' '
B7B66:  CMP             R0, #1
B7B68:  BNE             loc_B7B72
B7B6A:  MOVS            R0, #4
B7B6C:  STRB.W          R0, [R8,#0xACF]
B7B70:  B               loc_B7BB8
B7B72:  LDRSB.W         R0, [R8,#0xACF]
B7B76:  CMP             R0, #3
B7B78:  BGT             loc_B7BB8
B7B7A:  LDR.W           R2, [R8,#0x924]
B7B7E:  ADD.W           R12, R8, R4
B7B82:  CMP             R2, #1
B7B84:  BLT             loc_B7BAA
B7B86:  ADDW            R3, R8, #0x928
B7B8A:  ADD.W           LR, SP, #0x68+var_60
B7B8E:  MOVS            R1, #0
B7B90:  LDRSH.W         R4, [R3,R1,LSL#1]
B7B94:  LDRSH.W         R6, [R10,R1,LSL#1]
B7B98:  SUBS            R6, R6, R4
B7B9A:  MULS            R6, R0
B7B9C:  ADD.W           R4, R4, R6,LSR#2
B7BA0:  STRH.W          R4, [LR,R1,LSL#1]
B7BA4:  ADDS            R1, #1
B7BA6:  CMP             R1, R2
B7BA8:  BLT             loc_B7B90
B7BAA:  LDR.W           R3, [R12]
B7BAE:  ADD             R1, SP, #0x68+var_60
B7BB0:  MOV             R0, R5
B7BB2:  BLX             j_silk_NLSF2A
B7BB6:  B               loc_B7BC6
B7BB8:  LDR.W           R0, [R8,#0x924]
B7BBC:  MOV             R1, R11; src
B7BBE:  LSLS            R2, R0, #1; n
B7BC0:  MOV             R0, R5; dest
B7BC2:  BLX             j_memcpy
B7BC6:  LDR.W           R4, [R8,#0x924]
B7BCA:  ADDW            R0, R8, #0x928; dest
B7BCE:  ADD             R1, SP, #0x68+src; src
B7BD0:  LSLS            R2, R4, #1; n
B7BD2:  BLX             j_memcpy
B7BD6:  MOV.W           R0, #0x1040
B7BDA:  LDR.W           R0, [R8,R0]
B7BDE:  CBZ             R0, loc_B7BFA
B7BE0:  MOV             R0, R5
B7BE2:  MOV             R1, R4
B7BE4:  MOVW            R2, #0xF852
B7BE8:  BLX             j_silk_bwexpander
B7BEC:  LDR.W           R1, [R8,#0x924]
B7BF0:  MOV             R0, R11
B7BF2:  MOVW            R2, #0xF852
B7BF6:  BLX             j_silk_bwexpander
B7BFA:  LDRB.W          R0, [R8,#0xACD]
B7BFE:  CMP             R0, #2
B7C00:  BNE             loc_B7C96
B7C02:  LDR.W           R3, [R8,#0x90C]
B7C06:  LDRSB.W         R1, [R8,#0xACC]
B7C0A:  LDRSH.W         R0, [R8,#0xACA]
B7C0E:  LDR.W           R2, [R8,#0x914]
B7C12:  STR             R2, [SP,#0x68+var_68]
B7C14:  MOV             R2, R9
B7C16:  BLX             j_silk_decode_pitch
B7C1A:  LDR.W           R0, [R8,#0x914]
B7C1E:  CMP             R0, #1
B7C20:  BLT             loc_B7C86
B7C22:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0xB7C32)
B7C24:  ADD.W           R3, R9, #0x68 ; 'h'
B7C28:  LDRSB.W         R2, [R8,#0xAD0]
B7C2C:  MOVS            R6, #0
B7C2E:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
B7C30:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
B7C32:  LDR.W           R1, [R1,R2,LSL#2]
B7C36:  ADDW            R2, R8, #0xAB4
B7C3A:  LDRSB           R4, [R2,R6]
B7C3C:  ADDS            R6, #1
B7C3E:  CMP             R6, R0
B7C40:  ADD.W           R4, R4, R4,LSL#2
B7C44:  LDRSB           R5, [R1,R4]
B7C46:  MOV.W           R5, R5,LSL#7
B7C4A:  STRH.W          R5, [R3,#-8]
B7C4E:  ADD.W           R5, R1, R4
B7C52:  LDRSB.W         R4, [R5,#1]
B7C56:  MOV.W           R4, R4,LSL#7
B7C5A:  STRH.W          R4, [R3,#-6]
B7C5E:  LDRSB.W         R4, [R5,#2]
B7C62:  MOV.W           R4, R4,LSL#7
B7C66:  STRH.W          R4, [R3,#-4]
B7C6A:  LDRSB.W         R4, [R5,#3]
B7C6E:  MOV.W           R4, R4,LSL#7
B7C72:  STRH.W          R4, [R3,#-2]
B7C76:  LDRSB.W         R5, [R5,#4]
B7C7A:  MOV.W           R5, R5,LSL#7
B7C7E:  STRH            R5, [R3]
B7C80:  ADD.W           R3, R3, #0xA
B7C84:  BLT             loc_B7C3A
B7C86:  LDR             R0, =(silk_LTPScales_table_Q14_ptr - 0xB7C90)
B7C88:  LDRSB.W         R1, [R8,#0xAD1]
B7C8C:  ADD             R0, PC; silk_LTPScales_table_Q14_ptr
B7C8E:  LDR             R0, [R0]; silk_LTPScales_table_Q14
B7C90:  LDRSH.W         R0, [R0,R1,LSL#1]
B7C94:  B               loc_B7CBA
B7C96:  LDR.W           R0, [R8,#0x914]
B7C9A:  LSLS            R1, R0, #2; n
B7C9C:  MOV             R0, R9; int
B7C9E:  BLX             sub_10967C
B7CA2:  LDR.W           R1, [R8,#0x914]
B7CA6:  ADD.W           R0, R9, #0x60 ; '`'; int
B7CAA:  ADD.W           R1, R1, R1,LSL#2
B7CAE:  LSLS            R1, R1, #1; n
B7CB0:  BLX             sub_10967C
B7CB4:  MOVS            R0, #0
B7CB6:  STRB.W          R0, [R8,#0xAD0]
B7CBA:  STR.W           R0, [R9,#0x88]
B7CBE:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7CC6)
B7CC0:  LDR             R1, [SP,#0x68+var_20]
B7CC2:  ADD             R0, PC; __stack_chk_guard_ptr
B7CC4:  LDR             R0, [R0]; __stack_chk_guard
B7CC6:  LDR             R0, [R0]
B7CC8:  SUBS            R0, R0, R1
B7CCA:  ITTT EQ
B7CCC:  ADDEQ           SP, SP, #0x4C ; 'L'
B7CCE:  POPEQ.W         {R8-R11}
B7CD2:  POPEQ           {R4-R7,PC}
B7CD4:  BLX             __stack_chk_fail
