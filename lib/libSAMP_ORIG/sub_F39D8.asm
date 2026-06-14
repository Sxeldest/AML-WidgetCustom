; =========================================================
; Game Engine Function: sub_F39D8
; Address            : 0xF39D8 - 0xF3BB6
; =========================================================

F39D8:  PUSH            {R4-R7,LR}
F39DA:  ADD             R7, SP, #0xC
F39DC:  PUSH.W          {R8-R11}
F39E0:  SUB             SP, SP, #0x8C
F39E2:  STRD.W          R1, R0, [SP,#0xA8+var_A0]
F39E6:  MOVS            R1, #0xC
F39E8:  LDR             R0, =(__stack_chk_guard_ptr - 0xF39F2)
F39EA:  MOV             R10, R3
F39EC:  MOV             R6, R2
F39EE:  ADD             R0, PC; __stack_chk_guard_ptr
F39F0:  LDR             R0, [R0]; __stack_chk_guard
F39F2:  LDR             R0, [R0]
F39F4:  STR             R0, [SP,#0xA8+var_20]
F39F6:  LDR             R0, =(free_ptr - 0xF39FC)
F39F8:  ADD             R0, PC; free_ptr
F39FA:  LDR             R0, [R0]; __imp_free
F39FC:  STR             R0, [SP,#0xA8+var_88]
F39FE:  MOVS            R0, #0
F3A00:  STR             R0, [SP,#0xA8+var_8C]
F3A02:  SUBS            R0, R3, R2
F3A04:  BLX             sub_108848
F3A08:  MOV             R4, R0
F3A0A:  CMP             R0, #0x65 ; 'e'
F3A0C:  STR             R6, [SP,#0xA8+var_98]
F3A0E:  BCC             loc_F3A2E
F3A10:  MOV             R0, R4; size
F3A12:  MOV             R5, R4
F3A14:  BLX             malloc
F3A18:  CMP             R0, #0
F3A1A:  BEQ.W           loc_F3BB2
F3A1E:  MOV             R4, R0
F3A20:  ADD             R0, SP, #0xA8+var_8C
F3A22:  MOV             R1, R4
F3A24:  BL              sub_F6866
F3A28:  MOV             R0, R4
F3A2A:  MOV             R4, R5
F3A2C:  B               loc_F3A30
F3A2E:  ADD             R0, SP, #0xA8+var_84
F3A30:  LDR             R6, [SP,#0xA8+var_98]
F3A32:  MOV.W           R8, #0
F3A36:  MOV.W           R11, #2
F3A3A:  MOV.W           R9, #1
F3A3E:  MOV             R5, R0
F3A40:  STR             R0, [SP,#0xA8+var_A4]
F3A42:  CMP             R6, R10
F3A44:  BEQ             loc_F3A64
F3A46:  MOV             R0, R6
F3A48:  BL              sub_E82F0
F3A4C:  CBZ             R0, loc_F3A5A
F3A4E:  ADD.W           R8, R8, #1
F3A52:  SUBS            R4, #1
F3A54:  STRB.W          R11, [R5]
F3A58:  B               loc_F3A5E
F3A5A:  STRB.W          R9, [R5]
F3A5E:  ADDS            R5, #1
F3A60:  ADDS            R6, #0xC
F3A62:  B               loc_F3A42
F3A64:  LDR.W           R9, [SP,#0xA8+var_A4]
F3A68:  MOVS            R6, #0
F3A6A:  LDR.W           R12, [SP,#0xA8+var_98]
F3A6E:  MOV             R11, R8
F3A70:  LDR             R0, [SP,#0xA8+var_9C]
F3A72:  LDR             R1, [SP,#0xA8+var_A0]
F3A74:  LDR             R0, [R0]
F3A76:  CMP             R0, R1
F3A78:  IT NE
F3A7A:  CMPNE           R4, #0
F3A7C:  BEQ             loc_F3B5C
F3A7E:  LDRB.W          R8, [R0]
F3A82:  LDR             R0, [R7,#arg_8]
F3A84:  STR.W           R11, [SP,#0xA8+var_90]
F3A88:  CBNZ            R0, loc_F3A96
F3A8A:  LDR             R0, [R7,#arg_0]
F3A8C:  LDR             R1, [R0]
F3A8E:  LDR             R2, [R1,#0xC]
F3A90:  MOV             R1, R8
F3A92:  BLX             R2
F3A94:  MOV             R8, R0
F3A96:  LDR.W           R11, [SP,#0xA8+var_98]
F3A9A:  ADDS            R5, R6, #1
F3A9C:  MOVS            R0, #0
F3A9E:  STR             R0, [SP,#0xA8+var_94]
F3AA0:  CMP             R11, R10
F3AA2:  BEQ             loc_F3B08
F3AA4:  LDRB.W          R0, [R9]
F3AA8:  CMP             R0, #1
F3AAA:  BNE             loc_F3AFE
F3AAC:  LDRB.W          R1, [R11]
F3AB0:  LDR.W           R0, [R11,#8]
F3AB4:  LSLS            R1, R1, #0x1F
F3AB6:  IT EQ
F3AB8:  ADDEQ.W         R0, R11, #1
F3ABC:  LDRB            R1, [R0,R6]
F3ABE:  LDR             R0, [R7,#arg_8]
F3AC0:  CBNZ            R0, loc_F3ACC
F3AC2:  LDR             R0, [R7,#arg_0]
F3AC4:  LDR             R2, [R0]
F3AC6:  LDR             R2, [R2,#0xC]
F3AC8:  BLX             R2
F3ACA:  MOV             R1, R0
F3ACC:  CMP             R8, R1
F3ACE:  BNE             loc_F3AF6
F3AD0:  LDRB.W          R1, [R11]
F3AD4:  LDR.W           R0, [R11,#4]
F3AD8:  LSLS            R2, R1, #0x1F
F3ADA:  IT EQ
F3ADC:  LSREQ           R0, R1, #1
F3ADE:  CMP             R0, R5
F3AE0:  BNE             loc_F3AF0
F3AE2:  MOVS            R0, #2
F3AE4:  SUBS            R4, #1
F3AE6:  STRB.W          R0, [R9]
F3AEA:  LDR             R0, [SP,#0xA8+var_90]
F3AEC:  ADDS            R0, #1
F3AEE:  STR             R0, [SP,#0xA8+var_90]
F3AF0:  MOVS            R0, #1
F3AF2:  STR             R0, [SP,#0xA8+var_94]
F3AF4:  B               loc_F3AFE
F3AF6:  SUBS            R4, #1
F3AF8:  MOVS            R0, #0
F3AFA:  STRB.W          R0, [R9]
F3AFE:  ADD.W           R9, R9, #1
F3B02:  ADD.W           R11, R11, #0xC
F3B06:  B               loc_F3AA0
F3B08:  LDR             R0, [SP,#0xA8+var_94]
F3B0A:  MOV             R6, R5
F3B0C:  LDR.W           R12, [SP,#0xA8+var_98]
F3B10:  LDR.W           R9, [SP,#0xA8+var_A4]
F3B14:  LSLS            R0, R0, #0x1F
F3B16:  LDR.W           R11, [SP,#0xA8+var_90]
F3B1A:  BEQ             loc_F3A70
F3B1C:  LDR             R1, [SP,#0xA8+var_9C]
F3B1E:  MOV             R6, R5
F3B20:  LDR             R0, [R1]
F3B22:  ADDS            R0, #1
F3B24:  STR             R0, [R1]
F3B26:  ADD.W           R0, R11, R4
F3B2A:  CMP             R0, #2
F3B2C:  BCC             loc_F3A70
F3B2E:  MOV             R0, R9
F3B30:  MOV             R1, R12
F3B32:  CMP             R1, R10
F3B34:  BEQ             loc_F3B58
F3B36:  LDRB            R2, [R0]
F3B38:  CMP             R2, #2
F3B3A:  BNE             loc_F3B52
F3B3C:  LDRB            R3, [R1]
F3B3E:  LDR             R2, [R1,#4]
F3B40:  LSLS            R6, R3, #0x1F
F3B42:  IT EQ
F3B44:  LSREQ           R2, R3, #1
F3B46:  CMP             R2, R5
F3B48:  ITTT NE
F3B4A:  MOVNE           R2, #0
F3B4C:  STRBNE          R2, [R0]
F3B4E:  SUBNE.W         R11, R11, #1
F3B52:  ADDS            R0, #1
F3B54:  ADDS            R1, #0xC
F3B56:  B               loc_F3B32
F3B58:  MOV             R6, R5
F3B5A:  B               loc_F3A70
F3B5C:  LDR             R1, [SP,#0xA8+var_A0]
F3B5E:  CMP             R0, R1
F3B60:  BNE             loc_F3B6C
F3B62:  LDR             R1, [R7,#arg_4]
F3B64:  LDR             R0, [R1]
F3B66:  ORR.W           R0, R0, #2
F3B6A:  STR             R0, [R1]
F3B6C:  CMP             R12, R10
F3B6E:  BEQ             loc_F3B82
F3B70:  LDRB.W          R0, [R9]
F3B74:  CMP             R0, #2
F3B76:  BEQ             loc_F3B8E
F3B78:  ADD.W           R9, R9, #1
F3B7C:  ADD.W           R12, R12, #0xC
F3B80:  B               loc_F3B6C
F3B82:  LDR             R1, [R7,#arg_4]
F3B84:  LDR             R0, [R1]
F3B86:  ORR.W           R0, R0, #4
F3B8A:  STR             R0, [R1]
F3B8C:  B               loc_F3B90
F3B8E:  MOV             R10, R12
F3B90:  ADD             R0, SP, #0xA8+var_8C
F3B92:  BL              sub_F687C
F3B96:  LDR             R0, [SP,#0xA8+var_20]
F3B98:  LDR             R1, =(__stack_chk_guard_ptr - 0xF3B9E)
F3B9A:  ADD             R1, PC; __stack_chk_guard_ptr
F3B9C:  LDR             R1, [R1]; __stack_chk_guard
F3B9E:  LDR             R1, [R1]
F3BA0:  CMP             R1, R0
F3BA2:  ITTTT EQ
F3BA4:  MOVEQ           R0, R10
F3BA6:  ADDEQ           SP, SP, #0x8C
F3BA8:  POPEQ.W         {R8-R11}
F3BAC:  POPEQ           {R4-R7,PC}
F3BAE:  BLX             __stack_chk_fail
F3BB2:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
