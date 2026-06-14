; =========================================================
; Game Engine Function: sub_20B8C8
; Address            : 0x20B8C8 - 0x20BAA6
; =========================================================

20B8C8:  PUSH            {R4-R7,LR}
20B8CA:  ADD             R7, SP, #0xC
20B8CC:  PUSH.W          {R8-R11}
20B8D0:  SUB             SP, SP, #0x8C
20B8D2:  STRD.W          R1, R0, [SP,#0xA8+var_A0]
20B8D6:  MOVS            R1, #0xC
20B8D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x20B8E2)
20B8DA:  MOV             R10, R3
20B8DC:  MOV             R6, R2
20B8DE:  ADD             R0, PC; __stack_chk_guard_ptr
20B8E0:  LDR             R0, [R0]; __stack_chk_guard
20B8E2:  LDR             R0, [R0]
20B8E4:  STR             R0, [SP,#0xA8+var_20]
20B8E6:  LDR             R0, =(free_ptr - 0x20B8EC)
20B8E8:  ADD             R0, PC; free_ptr
20B8EA:  LDR             R0, [R0]; __imp_free
20B8EC:  STR             R0, [SP,#0xA8+var_88]
20B8EE:  MOVS            R0, #0
20B8F0:  STR             R0, [SP,#0xA8+var_8C]
20B8F2:  SUBS            R0, R3, R2
20B8F4:  BLX             sub_220A40
20B8F8:  MOV             R4, R0
20B8FA:  CMP             R0, #0x65 ; 'e'
20B8FC:  STR             R6, [SP,#0xA8+var_98]
20B8FE:  BCC             loc_20B91E
20B900:  MOV             R0, R4; size
20B902:  MOV             R5, R4
20B904:  BLX             malloc
20B908:  CMP             R0, #0
20B90A:  BEQ.W           loc_20BAA2
20B90E:  MOV             R4, R0
20B910:  ADD             R0, SP, #0xA8+var_8C
20B912:  MOV             R1, R4
20B914:  BL              sub_20E6D6
20B918:  MOV             R0, R4
20B91A:  MOV             R4, R5
20B91C:  B               loc_20B920
20B91E:  ADD             R0, SP, #0xA8+var_84
20B920:  LDR             R6, [SP,#0xA8+var_98]
20B922:  MOV.W           R8, #0
20B926:  MOV.W           R11, #2
20B92A:  MOV.W           R9, #1
20B92E:  MOV             R5, R0
20B930:  STR             R0, [SP,#0xA8+var_A4]
20B932:  CMP             R6, R10
20B934:  BEQ             loc_20B954
20B936:  MOV             R0, R6
20B938:  BL              sub_1F2390
20B93C:  CBZ             R0, loc_20B94A
20B93E:  ADD.W           R8, R8, #1
20B942:  SUBS            R4, #1
20B944:  STRB.W          R11, [R5]
20B948:  B               loc_20B94E
20B94A:  STRB.W          R9, [R5]
20B94E:  ADDS            R5, #1
20B950:  ADDS            R6, #0xC
20B952:  B               loc_20B932
20B954:  LDR.W           R9, [SP,#0xA8+var_A4]
20B958:  MOVS            R6, #0
20B95A:  LDR.W           R12, [SP,#0xA8+var_98]
20B95E:  MOV             R11, R8
20B960:  LDR             R0, [SP,#0xA8+var_9C]
20B962:  LDR             R1, [SP,#0xA8+var_A0]
20B964:  LDR             R0, [R0]
20B966:  CMP             R0, R1
20B968:  IT NE
20B96A:  CMPNE           R4, #0
20B96C:  BEQ             loc_20BA4C
20B96E:  LDRB.W          R8, [R0]
20B972:  LDR             R0, [R7,#arg_8]
20B974:  STR.W           R11, [SP,#0xA8+var_90]
20B978:  CBNZ            R0, loc_20B986
20B97A:  LDR             R0, [R7,#arg_0]
20B97C:  LDR             R1, [R0]
20B97E:  LDR             R2, [R1,#0xC]
20B980:  MOV             R1, R8
20B982:  BLX             R2
20B984:  MOV             R8, R0
20B986:  LDR.W           R11, [SP,#0xA8+var_98]
20B98A:  ADDS            R5, R6, #1
20B98C:  MOVS            R0, #0
20B98E:  STR             R0, [SP,#0xA8+var_94]
20B990:  CMP             R11, R10
20B992:  BEQ             loc_20B9F8
20B994:  LDRB.W          R0, [R9]
20B998:  CMP             R0, #1
20B99A:  BNE             loc_20B9EE
20B99C:  LDRB.W          R1, [R11]
20B9A0:  LDR.W           R0, [R11,#8]
20B9A4:  LSLS            R1, R1, #0x1F
20B9A6:  IT EQ
20B9A8:  ADDEQ.W         R0, R11, #1
20B9AC:  LDRB            R1, [R0,R6]
20B9AE:  LDR             R0, [R7,#arg_8]
20B9B0:  CBNZ            R0, loc_20B9BC
20B9B2:  LDR             R0, [R7,#arg_0]
20B9B4:  LDR             R2, [R0]
20B9B6:  LDR             R2, [R2,#0xC]
20B9B8:  BLX             R2
20B9BA:  MOV             R1, R0
20B9BC:  CMP             R8, R1
20B9BE:  BNE             loc_20B9E6
20B9C0:  LDRB.W          R1, [R11]
20B9C4:  LDR.W           R0, [R11,#4]
20B9C8:  LSLS            R2, R1, #0x1F
20B9CA:  IT EQ
20B9CC:  LSREQ           R0, R1, #1
20B9CE:  CMP             R0, R5
20B9D0:  BNE             loc_20B9E0
20B9D2:  MOVS            R0, #2
20B9D4:  SUBS            R4, #1
20B9D6:  STRB.W          R0, [R9]
20B9DA:  LDR             R0, [SP,#0xA8+var_90]
20B9DC:  ADDS            R0, #1
20B9DE:  STR             R0, [SP,#0xA8+var_90]
20B9E0:  MOVS            R0, #1
20B9E2:  STR             R0, [SP,#0xA8+var_94]
20B9E4:  B               loc_20B9EE
20B9E6:  SUBS            R4, #1
20B9E8:  MOVS            R0, #0
20B9EA:  STRB.W          R0, [R9]
20B9EE:  ADD.W           R9, R9, #1
20B9F2:  ADD.W           R11, R11, #0xC
20B9F6:  B               loc_20B990
20B9F8:  LDR             R0, [SP,#0xA8+var_94]
20B9FA:  MOV             R6, R5
20B9FC:  LDR.W           R12, [SP,#0xA8+var_98]
20BA00:  LDR.W           R9, [SP,#0xA8+var_A4]
20BA04:  LSLS            R0, R0, #0x1F
20BA06:  LDR.W           R11, [SP,#0xA8+var_90]
20BA0A:  BEQ             loc_20B960
20BA0C:  LDR             R1, [SP,#0xA8+var_9C]
20BA0E:  MOV             R6, R5
20BA10:  LDR             R0, [R1]
20BA12:  ADDS            R0, #1
20BA14:  STR             R0, [R1]
20BA16:  ADD.W           R0, R11, R4
20BA1A:  CMP             R0, #2
20BA1C:  BCC             loc_20B960
20BA1E:  MOV             R0, R9
20BA20:  MOV             R1, R12
20BA22:  CMP             R1, R10
20BA24:  BEQ             loc_20BA48
20BA26:  LDRB            R2, [R0]
20BA28:  CMP             R2, #2
20BA2A:  BNE             loc_20BA42
20BA2C:  LDRB            R3, [R1]
20BA2E:  LDR             R2, [R1,#4]
20BA30:  LSLS            R6, R3, #0x1F
20BA32:  IT EQ
20BA34:  LSREQ           R2, R3, #1
20BA36:  CMP             R2, R5
20BA38:  ITTT NE
20BA3A:  MOVNE           R2, #0
20BA3C:  STRBNE          R2, [R0]
20BA3E:  SUBNE.W         R11, R11, #1
20BA42:  ADDS            R0, #1
20BA44:  ADDS            R1, #0xC
20BA46:  B               loc_20BA22
20BA48:  MOV             R6, R5
20BA4A:  B               loc_20B960
20BA4C:  LDR             R1, [SP,#0xA8+var_A0]
20BA4E:  CMP             R0, R1
20BA50:  BNE             loc_20BA5C
20BA52:  LDR             R1, [R7,#arg_4]
20BA54:  LDR             R0, [R1]
20BA56:  ORR.W           R0, R0, #2
20BA5A:  STR             R0, [R1]
20BA5C:  CMP             R12, R10
20BA5E:  BEQ             loc_20BA72
20BA60:  LDRB.W          R0, [R9]
20BA64:  CMP             R0, #2
20BA66:  BEQ             loc_20BA7E
20BA68:  ADD.W           R9, R9, #1
20BA6C:  ADD.W           R12, R12, #0xC
20BA70:  B               loc_20BA5C
20BA72:  LDR             R1, [R7,#arg_4]
20BA74:  LDR             R0, [R1]
20BA76:  ORR.W           R0, R0, #4
20BA7A:  STR             R0, [R1]
20BA7C:  B               loc_20BA80
20BA7E:  MOV             R10, R12
20BA80:  ADD             R0, SP, #0xA8+var_8C
20BA82:  BL              sub_20E6EC
20BA86:  LDR             R0, [SP,#0xA8+var_20]
20BA88:  LDR             R1, =(__stack_chk_guard_ptr - 0x20BA8E)
20BA8A:  ADD             R1, PC; __stack_chk_guard_ptr
20BA8C:  LDR             R1, [R1]; __stack_chk_guard
20BA8E:  LDR             R1, [R1]
20BA90:  CMP             R1, R0
20BA92:  ITTTT EQ
20BA94:  MOVEQ           R0, R10
20BA96:  ADDEQ           SP, SP, #0x8C
20BA98:  POPEQ.W         {R8-R11}
20BA9C:  POPEQ           {R4-R7,PC}
20BA9E:  BLX             __stack_chk_fail
20BAA2:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
