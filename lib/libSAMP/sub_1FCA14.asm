; =========================================================
; Game Engine Function: sub_1FCA14
; Address            : 0x1FCA14 - 0x1FCC06
; =========================================================

1FCA14:  PUSH            {R4-R7,LR}
1FCA16:  ADD             R7, SP, #0xC
1FCA18:  PUSH.W          {R8-R11}
1FCA1C:  SUB             SP, SP, #0x8C
1FCA1E:  STR             R1, [SP,#0xA8+var_88]
1FCA20:  MOV             R11, R0
1FCA22:  STR             R2, [SP,#0xA8+var_9C]
1FCA24:  MOVS            R1, #0xC
1FCA26:  LDR             R0, =(__stack_chk_guard_ptr - 0x1FCA2E)
1FCA28:  MOV             R4, R3
1FCA2A:  ADD             R0, PC; __stack_chk_guard_ptr
1FCA2C:  LDR             R0, [R0]; __stack_chk_guard
1FCA2E:  LDR             R0, [R0]
1FCA30:  STR             R0, [SP,#0xA8+var_20]
1FCA32:  LDR             R0, =(free_ptr - 0x1FCA38)
1FCA34:  ADD             R0, PC; free_ptr
1FCA36:  LDR             R0, [R0]; __imp_free
1FCA38:  STR             R0, [SP,#0xA8+var_8C]
1FCA3A:  MOVS            R0, #0
1FCA3C:  STR             R0, [SP,#0xA8+var_90]
1FCA3E:  SUBS            R0, R3, R2
1FCA40:  BLX             sub_220A40
1FCA44:  MOV             R5, R0
1FCA46:  CMP             R0, #0x65 ; 'e'
1FCA48:  BCC             loc_1FCA62
1FCA4A:  MOV             R0, R5; size
1FCA4C:  BLX             malloc
1FCA50:  CMP             R0, #0
1FCA52:  BEQ.W           loc_1FCC02
1FCA56:  MOV             R6, R0
1FCA58:  ADD             R0, SP, #0xA8+var_90
1FCA5A:  MOV             R1, R6
1FCA5C:  BL              sub_20E6D6
1FCA60:  B               loc_1FCA64
1FCA62:  ADD             R6, SP, #0xA8+var_84
1FCA64:  STR             R6, [SP,#0xA8+var_A0]
1FCA66:  MOV             R10, R6
1FCA68:  LDR             R6, [SP,#0xA8+var_9C]
1FCA6A:  MOV.W           R9, #0
1FCA6E:  MOV.W           R8, #1
1FCA72:  CMP             R6, R4
1FCA74:  BEQ             loc_1FCA98
1FCA76:  MOV             R0, R6
1FCA78:  BL              sub_2046D8
1FCA7C:  CBZ             R0, loc_1FCA8C
1FCA7E:  ADD.W           R9, R9, #1
1FCA82:  SUBS            R5, #1
1FCA84:  MOVS            R0, #2
1FCA86:  STRB.W          R0, [R10]
1FCA8A:  B               loc_1FCA90
1FCA8C:  STRB.W          R8, [R10]
1FCA90:  ADD.W           R10, R10, #1
1FCA94:  ADDS            R6, #0xC
1FCA96:  B               loc_1FCA72
1FCA98:  LDR.W           R8, [SP,#0xA8+var_9C]
1FCA9C:  MOVS            R6, #0
1FCA9E:  LDR.W           R10, [SP,#0xA8+var_A0]
1FCAA2:  ADD.W           R0, R8, #4
1FCAA6:  STR             R0, [SP,#0xA8+var_A4]
1FCAA8:  STR.W           R11, [SP,#0xA8+var_A8]
1FCAAC:  ADD             R1, SP, #0xA8+var_88
1FCAAE:  MOV             R0, R11
1FCAB0:  BL              sub_1F6E98
1FCAB4:  CMP             R5, #0
1FCAB6:  MOV             R1, R5
1FCAB8:  IT NE
1FCABA:  MOVNE           R1, #1
1FCABC:  TST             R0, R1
1FCABE:  BEQ             loc_1FCBA8
1FCAC0:  MOV             R0, R11
1FCAC2:  BL              sub_1FDEC4
1FCAC6:  MOV             R11, R0
1FCAC8:  LDR             R0, [R7,#arg_8]
1FCACA:  STR.W           R9, [SP,#0xA8+var_98]
1FCACE:  CBNZ            R0, loc_1FCADC
1FCAD0:  LDR             R0, [R7,#arg_0]
1FCAD2:  LDR             R1, [R0]
1FCAD4:  LDR             R2, [R1,#0x1C]
1FCAD6:  MOV             R1, R11
1FCAD8:  BLX             R2
1FCADA:  MOV             R11, R0
1FCADC:  LDR.W           R8, [SP,#0xA8+var_A4]
1FCAE0:  MOV.W           R9, #0
1FCAE4:  ADDS            R0, R6, #1
1FCAE6:  STR             R0, [SP,#0xA8+var_94]
1FCAE8:  SUB.W           R0, R8, #4
1FCAEC:  CMP             R0, R4
1FCAEE:  BEQ             loc_1FCB56
1FCAF0:  LDRB.W          R0, [R10]
1FCAF4:  CMP             R0, #1
1FCAF6:  BNE             loc_1FCB4C
1FCAF8:  LDRB.W          R1, [R8,#-4]
1FCAFC:  LDR.W           R0, [R8,#4]
1FCB00:  LSLS            R1, R1, #0x1F
1FCB02:  IT EQ
1FCB04:  MOVEQ           R0, R8
1FCB06:  LDR.W           R1, [R0,R6,LSL#2]
1FCB0A:  LDR             R0, [R7,#arg_8]
1FCB0C:  CBNZ            R0, loc_1FCB18
1FCB0E:  LDR             R0, [R7,#arg_0]
1FCB10:  LDR             R2, [R0]
1FCB12:  LDR             R2, [R2,#0x1C]
1FCB14:  BLX             R2
1FCB16:  MOV             R1, R0
1FCB18:  CMP             R11, R1
1FCB1A:  BNE             loc_1FCB44
1FCB1C:  LDRB.W          R1, [R8,#-4]
1FCB20:  LDR.W           R0, [R8]
1FCB24:  LSLS            R2, R1, #0x1F
1FCB26:  IT EQ
1FCB28:  LSREQ           R0, R1, #1
1FCB2A:  LDR             R1, [SP,#0xA8+var_94]
1FCB2C:  CMP             R0, R1
1FCB2E:  BNE             loc_1FCB3E
1FCB30:  MOVS            R0, #2
1FCB32:  SUBS            R5, #1
1FCB34:  STRB.W          R0, [R10]
1FCB38:  LDR             R0, [SP,#0xA8+var_98]
1FCB3A:  ADDS            R0, #1
1FCB3C:  STR             R0, [SP,#0xA8+var_98]
1FCB3E:  MOV.W           R9, #1
1FCB42:  B               loc_1FCB4C
1FCB44:  SUBS            R5, #1
1FCB46:  MOVS            R0, #0
1FCB48:  STRB.W          R0, [R10]
1FCB4C:  ADD.W           R8, R8, #0xC
1FCB50:  ADD.W           R10, R10, #1
1FCB54:  B               loc_1FCAE8
1FCB56:  MOVS.W          R0, R9,LSL#31
1FCB5A:  LDRD.W          R10, R8, [SP,#0xA8+var_A0]
1FCB5E:  LDR.W           R11, [SP,#0xA8+var_A8]
1FCB62:  LDRD.W          R9, R6, [SP,#0xA8+var_98]
1FCB66:  BEQ             loc_1FCAAC
1FCB68:  MOV             R0, R11
1FCB6A:  BL              sub_1FDED0
1FCB6E:  LDR             R6, [SP,#0xA8+var_94]
1FCB70:  ADD.W           R0, R9, R5
1FCB74:  CMP             R0, #2
1FCB76:  BCC             loc_1FCAAC
1FCB78:  MOV             R0, R10
1FCB7A:  MOV             R1, R8
1FCB7C:  CMP             R1, R4
1FCB7E:  BEQ             loc_1FCBA4
1FCB80:  LDRB            R2, [R0]
1FCB82:  CMP             R2, #2
1FCB84:  BNE             loc_1FCB9E
1FCB86:  LDRB            R3, [R1]
1FCB88:  LDR             R2, [R1,#4]
1FCB8A:  LSLS            R6, R3, #0x1F
1FCB8C:  IT EQ
1FCB8E:  LSREQ           R2, R3, #1
1FCB90:  LDR             R3, [SP,#0xA8+var_94]
1FCB92:  CMP             R2, R3
1FCB94:  ITTT NE
1FCB96:  MOVNE           R2, #0
1FCB98:  STRBNE          R2, [R0]
1FCB9A:  SUBNE.W         R9, R9, #1
1FCB9E:  ADDS            R0, #1
1FCBA0:  ADDS            R1, #0xC
1FCBA2:  B               loc_1FCB7C
1FCBA4:  LDR             R6, [SP,#0xA8+var_94]
1FCBA6:  B               loc_1FCAAC
1FCBA8:  ADD             R1, SP, #0xA8+var_88
1FCBAA:  MOV             R0, R11
1FCBAC:  BL              sub_1FB080
1FCBB0:  CBZ             R0, loc_1FCBCE
1FCBB2:  LDR             R1, [R7,#arg_4]
1FCBB4:  LDR             R0, [R1]
1FCBB6:  ORR.W           R0, R0, #2
1FCBBA:  STR             R0, [R1]
1FCBBC:  B               loc_1FCBCE
1FCBBE:  LDRB.W          R0, [R10]
1FCBC2:  CMP             R0, #2
1FCBC4:  BEQ             loc_1FCBDE
1FCBC6:  ADD.W           R10, R10, #1
1FCBCA:  ADD.W           R8, R8, #0xC
1FCBCE:  CMP             R8, R4
1FCBD0:  BNE             loc_1FCBBE
1FCBD2:  LDR             R1, [R7,#arg_4]
1FCBD4:  LDR             R0, [R1]
1FCBD6:  ORR.W           R0, R0, #4
1FCBDA:  STR             R0, [R1]
1FCBDC:  B               loc_1FCBE0
1FCBDE:  MOV             R4, R8
1FCBE0:  ADD             R0, SP, #0xA8+var_90
1FCBE2:  BL              sub_20E6EC
1FCBE6:  LDR             R0, [SP,#0xA8+var_20]
1FCBE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1FCBEE)
1FCBEA:  ADD             R1, PC; __stack_chk_guard_ptr
1FCBEC:  LDR             R1, [R1]; __stack_chk_guard
1FCBEE:  LDR             R1, [R1]
1FCBF0:  CMP             R1, R0
1FCBF2:  ITTTT EQ
1FCBF4:  MOVEQ           R0, R4
1FCBF6:  ADDEQ           SP, SP, #0x8C
1FCBF8:  POPEQ.W         {R8-R11}
1FCBFC:  POPEQ           {R4-R7,PC}
1FCBFE:  BLX             __stack_chk_fail
1FCC02:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
