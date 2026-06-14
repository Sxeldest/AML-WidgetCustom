; =========================================================
; Game Engine Function: opus_decoder_create
; Address            : 0xB0B7C - 0xB0C48
; =========================================================

B0B7C:  PUSH            {R4-R7,LR}
B0B7E:  ADD             R7, SP, #0xC
B0B80:  PUSH.W          {R8}
B0B84:  SUB             SP, SP, #8
B0B86:  MOV             R6, R0
B0B88:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0B92)
B0B8A:  MOV             R8, R2
B0B8C:  MOV             R5, R1
B0B8E:  ADD             R0, PC; __stack_chk_guard_ptr
B0B90:  CMP.W           R6, #0x3E80
B0B94:  LDR             R0, [R0]; __stack_chk_guard
B0B96:  LDR             R0, [R0]
B0B98:  STR             R0, [SP,#0x18+var_14]
B0B9A:  BLT             loc_B0BB0
B0B9C:  ITT NE
B0B9E:  MOVWNE          R0, #0xBB80
B0BA2:  CMPNE           R6, R0
B0BA4:  BEQ             loc_B0BBE
B0BA6:  MOVW            R0, #0x5DC0
B0BAA:  CMP             R6, R0
B0BAC:  BEQ             loc_B0BBE
B0BAE:  B               loc_B0BC4
B0BB0:  CMP.W           R6, #0x1F40
B0BB4:  BEQ             loc_B0BBE
B0BB6:  MOVW            R0, #0x2EE0
B0BBA:  CMP             R6, R0
B0BBC:  BNE             loc_B0BC4
B0BBE:  SUBS            R0, R5, #1
B0BC0:  CMP             R0, #2
B0BC2:  BCC             loc_B0BD4
B0BC4:  CMP.W           R8, #0
B0BC8:  ITT NE
B0BCA:  MOVNE.W         R0, #0xFFFFFFFF
B0BCE:  STRNE.W         R0, [R8]
B0BD2:  B               loc_B0C2A
B0BD4:  MOV             R0, SP
B0BD6:  BLX             j_silk_Get_Decoder_Size
B0BDA:  CBZ             R0, loc_B0BE0
B0BDC:  MOVS            R0, #0
B0BDE:  B               loc_B0BF6
B0BE0:  LDR             R0, [SP,#0x18+var_18]
B0BE2:  ADDS            R0, #3
B0BE4:  BIC.W           R0, R0, #3
B0BE8:  STR             R0, [SP,#0x18+var_18]
B0BEA:  MOV             R0, R5
B0BEC:  BLX             j_celt_decoder_get_size
B0BF0:  LDR             R1, [SP,#0x18+var_18]
B0BF2:  ADD             R0, R1
B0BF4:  ADDS            R0, #0x50 ; 'P'; size
B0BF6:  BLX             malloc
B0BFA:  MOV             R4, R0
B0BFC:  CBZ             R4, loc_B0C1C
B0BFE:  MOV             R0, R4
B0C00:  MOV             R1, R6
B0C02:  MOV             R2, R5
B0C04:  BLX             j_opus_decoder_init
B0C08:  CMP.W           R8, #0
B0C0C:  IT NE
B0C0E:  STRNE.W         R0, [R8]
B0C12:  CBZ             R0, loc_B0C2C
B0C14:  MOV             R0, R4; ptr
B0C16:  BLX             free
B0C1A:  B               loc_B0C2A
B0C1C:  CMP.W           R8, #0
B0C20:  ITT NE
B0C22:  MOVNE           R0, #0xFFFFFFF9
B0C26:  STRNE.W         R0, [R8]
B0C2A:  MOVS            R4, #0
B0C2C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0C34)
B0C2E:  LDR             R1, [SP,#0x18+var_14]
B0C30:  ADD             R0, PC; __stack_chk_guard_ptr
B0C32:  LDR             R0, [R0]; __stack_chk_guard
B0C34:  LDR             R0, [R0]
B0C36:  SUBS            R0, R0, R1
B0C38:  ITTTT EQ
B0C3A:  MOVEQ           R0, R4
B0C3C:  ADDEQ           SP, SP, #8
B0C3E:  POPEQ.W         {R8}
B0C42:  POPEQ           {R4-R7,PC}
B0C44:  BLX             __stack_chk_fail
