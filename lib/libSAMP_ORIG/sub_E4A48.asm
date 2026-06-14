; =========================================================
; Game Engine Function: sub_E4A48
; Address            : 0xE4A48 - 0xE4C3A
; =========================================================

E4A48:  PUSH            {R4-R7,LR}
E4A4A:  ADD             R7, SP, #0xC
E4A4C:  PUSH.W          {R8-R11}
E4A50:  SUB             SP, SP, #0x8C
E4A52:  STR             R1, [SP,#0xA8+var_88]
E4A54:  MOV             R11, R0
E4A56:  STR             R2, [SP,#0xA8+var_9C]
E4A58:  MOVS            R1, #0xC
E4A5A:  LDR             R0, =(__stack_chk_guard_ptr - 0xE4A62)
E4A5C:  MOV             R4, R3
E4A5E:  ADD             R0, PC; __stack_chk_guard_ptr
E4A60:  LDR             R0, [R0]; __stack_chk_guard
E4A62:  LDR             R0, [R0]
E4A64:  STR             R0, [SP,#0xA8+var_20]
E4A66:  LDR             R0, =(free_ptr - 0xE4A6C)
E4A68:  ADD             R0, PC; free_ptr
E4A6A:  LDR             R0, [R0]; __imp_free
E4A6C:  STR             R0, [SP,#0xA8+var_8C]
E4A6E:  MOVS            R0, #0
E4A70:  STR             R0, [SP,#0xA8+var_90]
E4A72:  SUBS            R0, R3, R2
E4A74:  BLX             sub_108848
E4A78:  MOV             R5, R0
E4A7A:  CMP             R0, #0x65 ; 'e'
E4A7C:  BCC             loc_E4A96
E4A7E:  MOV             R0, R5; size
E4A80:  BLX             malloc
E4A84:  CMP             R0, #0
E4A86:  BEQ.W           loc_E4C36
E4A8A:  MOV             R6, R0
E4A8C:  ADD             R0, SP, #0xA8+var_90
E4A8E:  MOV             R1, R6
E4A90:  BL              sub_F6866
E4A94:  B               loc_E4A98
E4A96:  ADD             R6, SP, #0xA8+var_84
E4A98:  STR             R6, [SP,#0xA8+var_A0]
E4A9A:  MOV             R10, R6
E4A9C:  LDR             R6, [SP,#0xA8+var_9C]
E4A9E:  MOV.W           R9, #0
E4AA2:  MOV.W           R8, #1
E4AA6:  CMP             R6, R4
E4AA8:  BEQ             loc_E4ACC
E4AAA:  MOV             R0, R6
E4AAC:  BL              sub_EC820
E4AB0:  CBZ             R0, loc_E4AC0
E4AB2:  ADD.W           R9, R9, #1
E4AB6:  SUBS            R5, #1
E4AB8:  MOVS            R0, #2
E4ABA:  STRB.W          R0, [R10]
E4ABE:  B               loc_E4AC4
E4AC0:  STRB.W          R8, [R10]
E4AC4:  ADD.W           R10, R10, #1
E4AC8:  ADDS            R6, #0xC
E4ACA:  B               loc_E4AA6
E4ACC:  LDR.W           R8, [SP,#0xA8+var_9C]
E4AD0:  MOVS            R6, #0
E4AD2:  LDR.W           R10, [SP,#0xA8+var_A0]
E4AD6:  ADD.W           R0, R8, #4
E4ADA:  STR             R0, [SP,#0xA8+var_A4]
E4ADC:  STR.W           R11, [SP,#0xA8+var_A8]
E4AE0:  ADD             R1, SP, #0xA8+var_88
E4AE2:  MOV             R0, R11
E4AE4:  BL              sub_DEDB4
E4AE8:  CMP             R5, #0
E4AEA:  MOV             R1, R5
E4AEC:  IT NE
E4AEE:  MOVNE           R1, #1
E4AF0:  TST             R0, R1
E4AF2:  BEQ             loc_E4BDC
E4AF4:  MOV             R0, R11
E4AF6:  BL              sub_E5EF8
E4AFA:  MOV             R11, R0
E4AFC:  LDR             R0, [R7,#arg_8]
E4AFE:  STR.W           R9, [SP,#0xA8+var_98]
E4B02:  CBNZ            R0, loc_E4B10
E4B04:  LDR             R0, [R7,#arg_0]
E4B06:  LDR             R1, [R0]
E4B08:  LDR             R2, [R1,#0x1C]
E4B0A:  MOV             R1, R11
E4B0C:  BLX             R2
E4B0E:  MOV             R11, R0
E4B10:  LDR.W           R8, [SP,#0xA8+var_A4]
E4B14:  MOV.W           R9, #0
E4B18:  ADDS            R0, R6, #1
E4B1A:  STR             R0, [SP,#0xA8+var_94]
E4B1C:  SUB.W           R0, R8, #4
E4B20:  CMP             R0, R4
E4B22:  BEQ             loc_E4B8A
E4B24:  LDRB.W          R0, [R10]
E4B28:  CMP             R0, #1
E4B2A:  BNE             loc_E4B80
E4B2C:  LDRB.W          R1, [R8,#-4]
E4B30:  LDR.W           R0, [R8,#4]
E4B34:  LSLS            R1, R1, #0x1F
E4B36:  IT EQ
E4B38:  MOVEQ           R0, R8
E4B3A:  LDR.W           R1, [R0,R6,LSL#2]
E4B3E:  LDR             R0, [R7,#arg_8]
E4B40:  CBNZ            R0, loc_E4B4C
E4B42:  LDR             R0, [R7,#arg_0]
E4B44:  LDR             R2, [R0]
E4B46:  LDR             R2, [R2,#0x1C]
E4B48:  BLX             R2
E4B4A:  MOV             R1, R0
E4B4C:  CMP             R11, R1
E4B4E:  BNE             loc_E4B78
E4B50:  LDRB.W          R1, [R8,#-4]
E4B54:  LDR.W           R0, [R8]
E4B58:  LSLS            R2, R1, #0x1F
E4B5A:  IT EQ
E4B5C:  LSREQ           R0, R1, #1
E4B5E:  LDR             R1, [SP,#0xA8+var_94]
E4B60:  CMP             R0, R1
E4B62:  BNE             loc_E4B72
E4B64:  MOVS            R0, #2
E4B66:  SUBS            R5, #1
E4B68:  STRB.W          R0, [R10]
E4B6C:  LDR             R0, [SP,#0xA8+var_98]
E4B6E:  ADDS            R0, #1
E4B70:  STR             R0, [SP,#0xA8+var_98]
E4B72:  MOV.W           R9, #1
E4B76:  B               loc_E4B80
E4B78:  SUBS            R5, #1
E4B7A:  MOVS            R0, #0
E4B7C:  STRB.W          R0, [R10]
E4B80:  ADD.W           R8, R8, #0xC
E4B84:  ADD.W           R10, R10, #1
E4B88:  B               loc_E4B1C
E4B8A:  MOVS.W          R0, R9,LSL#31
E4B8E:  LDRD.W          R10, R8, [SP,#0xA8+var_A0]
E4B92:  LDR.W           R11, [SP,#0xA8+var_A8]
E4B96:  LDRD.W          R9, R6, [SP,#0xA8+var_98]
E4B9A:  BEQ             loc_E4AE0
E4B9C:  MOV             R0, R11
E4B9E:  BL              sub_E5F04
E4BA2:  LDR             R6, [SP,#0xA8+var_94]
E4BA4:  ADD.W           R0, R9, R5
E4BA8:  CMP             R0, #2
E4BAA:  BCC             loc_E4AE0
E4BAC:  MOV             R0, R10
E4BAE:  MOV             R1, R8
E4BB0:  CMP             R1, R4
E4BB2:  BEQ             loc_E4BD8
E4BB4:  LDRB            R2, [R0]
E4BB6:  CMP             R2, #2
E4BB8:  BNE             loc_E4BD2
E4BBA:  LDRB            R3, [R1]
E4BBC:  LDR             R2, [R1,#4]
E4BBE:  LSLS            R6, R3, #0x1F
E4BC0:  IT EQ
E4BC2:  LSREQ           R2, R3, #1
E4BC4:  LDR             R3, [SP,#0xA8+var_94]
E4BC6:  CMP             R2, R3
E4BC8:  ITTT NE
E4BCA:  MOVNE           R2, #0
E4BCC:  STRBNE          R2, [R0]
E4BCE:  SUBNE.W         R9, R9, #1
E4BD2:  ADDS            R0, #1
E4BD4:  ADDS            R1, #0xC
E4BD6:  B               loc_E4BB0
E4BD8:  LDR             R6, [SP,#0xA8+var_94]
E4BDA:  B               loc_E4AE0
E4BDC:  ADD             R1, SP, #0xA8+var_88
E4BDE:  MOV             R0, R11
E4BE0:  BL              sub_E2FB4
E4BE4:  CBZ             R0, loc_E4C02
E4BE6:  LDR             R1, [R7,#arg_4]
E4BE8:  LDR             R0, [R1]
E4BEA:  ORR.W           R0, R0, #2
E4BEE:  STR             R0, [R1]
E4BF0:  B               loc_E4C02
E4BF2:  LDRB.W          R0, [R10]
E4BF6:  CMP             R0, #2
E4BF8:  BEQ             loc_E4C12
E4BFA:  ADD.W           R10, R10, #1
E4BFE:  ADD.W           R8, R8, #0xC
E4C02:  CMP             R8, R4
E4C04:  BNE             loc_E4BF2
E4C06:  LDR             R1, [R7,#arg_4]
E4C08:  LDR             R0, [R1]
E4C0A:  ORR.W           R0, R0, #4
E4C0E:  STR             R0, [R1]
E4C10:  B               loc_E4C14
E4C12:  MOV             R4, R8
E4C14:  ADD             R0, SP, #0xA8+var_90
E4C16:  BL              sub_F687C
E4C1A:  LDR             R0, [SP,#0xA8+var_20]
E4C1C:  LDR             R1, =(__stack_chk_guard_ptr - 0xE4C22)
E4C1E:  ADD             R1, PC; __stack_chk_guard_ptr
E4C20:  LDR             R1, [R1]; __stack_chk_guard
E4C22:  LDR             R1, [R1]
E4C24:  CMP             R1, R0
E4C26:  ITTTT EQ
E4C28:  MOVEQ           R0, R4
E4C2A:  ADDEQ           SP, SP, #0x8C
E4C2C:  POPEQ.W         {R8-R11}
E4C30:  POPEQ           {R4-R7,PC}
E4C32:  BLX             __stack_chk_fail
E4C36:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
