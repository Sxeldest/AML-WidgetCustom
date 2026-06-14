; =========================================================
; Game Engine Function: sub_102C48
; Address            : 0x102C48 - 0x102E70
; =========================================================

102C48:  PUSH            {R4-R7,LR}
102C4A:  ADD             R7, SP, #0xC
102C4C:  PUSH.W          {R8-R10}
102C50:  SUB             SP, SP, #0x50
102C52:  MOV             R4, R0
102C54:  LDR             R0, =(__stack_chk_guard_ptr - 0x102C5A)
102C56:  ADD             R0, PC; __stack_chk_guard_ptr
102C58:  LDR             R0, [R0]; __stack_chk_guard
102C5A:  LDR             R0, [R0]
102C5C:  STR             R0, [SP,#0x68+var_1C]
102C5E:  CBZ             R1, loc_102C68
102C60:  LDR.W           R0, [R4,#0x14C]
102C64:  STR.W           R0, [R4,#0x150]
102C68:  LDR             R1, =(aUt - 0x102C70); "Ut" ...
102C6A:  MOV             R0, R4
102C6C:  ADD             R1, PC; "Ut"
102C6E:  ADDS            R2, R1, #2
102C70:  BL              sub_FE18C
102C74:  CBZ             R0, loc_102CB8
102C76:  ADD             R0, SP, #0x68+var_50
102C78:  MOV             R1, R4
102C7A:  MOVS            R2, #0
102C7C:  MOVS            R5, #0
102C7E:  BL              sub_FE75C
102C82:  LDRD.W          R0, R1, [R4]
102C86:  CMP             R0, R1
102C88:  BEQ.W           loc_102E54
102C8C:  LDRB            R1, [R0]
102C8E:  CMP             R1, #0x5F ; '_'
102C90:  BNE             loc_102D90
102C92:  ADDS            R0, #1
102C94:  STR             R0, [R4]
102C96:  ADD.W           R0, R4, #0x198
102C9A:  MOVS            R1, #0x10
102C9C:  BL              sub_FFA98
102CA0:  MOV             R5, R0
102CA2:  LDR             R0, =0x101012C
102CA4:  STR             R0, [R5,#4]
102CA6:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle15UnnamedTypeNameE - 0x102CAC); `vtable for'`anonymous namespace'::itanium_demangle::UnnamedTypeName ...
102CA8:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::UnnamedTypeName
102CAA:  ADDS            R0, #8
102CAC:  STR             R0, [R5]
102CAE:  LDRD.W          R0, R1, [SP,#0x68+var_50]
102CB2:  STRD.W          R0, R1, [R5,#8]
102CB6:  B               loc_102E54
102CB8:  LDR             R1, =(aUl_0 - 0x102CC0); "Ul" ...
102CBA:  MOV             R0, R4
102CBC:  ADD             R1, PC; "Ul"
102CBE:  ADDS            R2, R1, #2
102CC0:  BL              sub_FE18C
102CC4:  CBZ             R0, loc_102D42
102CC6:  LDRD.W          R0, R1, [R4,#0x14C]
102CCA:  LDR.W           R10, [R4,#0x188]
102CCE:  SUBS            R0, R1, R0
102CD0:  ASRS            R0, R0, #2
102CD2:  STR.W           R0, [R4,#0x188]
102CD6:  ADD             R0, SP, #0x68+var_50
102CD8:  MOV             R1, R4
102CDA:  BL              sub_103268
102CDE:  MOV             R6, R4
102CE0:  ADD.W           R9, SP, #0x68+var_58
102CE4:  LDR.W           R0, [R6,#8]!
102CE8:  LDR             R1, [R6,#4]
102CEA:  LDR             R5, =(aYptn - 0x102CF2); "yptn" ...
102CEC:  SUBS            R0, R1, R0
102CEE:  ADD             R5, PC; "yptn"
102CF0:  MOV.W           R8, R0,ASR#2
102CF4:  LDRD.W          R0, R1, [R4]
102CF8:  CMP             R1, R0
102CFA:  BEQ             loc_102D94
102CFC:  LDRB            R0, [R0]
102CFE:  CMP             R0, #0x54 ; 'T'
102D00:  BNE             loc_102D94
102D02:  MOV             R0, R5; char *
102D04:  MOVS            R1, #5; size_t
102D06:  BLX             __strlen_chk
102D0A:  MOV             R2, R0; n
102D0C:  LDRD.W          R0, R1, [R4]
102D10:  SUBS            R1, R1, R0
102D12:  CMP             R1, #2
102D14:  ITE CS
102D16:  LDRBCS          R1, [R0,#1]
102D18:  MOVCC           R1, #0; c
102D1A:  CBZ             R2, loc_102D94
102D1C:  MOV             R0, R5; s
102D1E:  BLX             memchr
102D22:  CBZ             R0, loc_102D94
102D24:  SUBS            R0, R0, R5
102D26:  ADDS            R0, #1
102D28:  BEQ             loc_102D94
102D2A:  MOV             R0, R4
102D2C:  BL              sub_1032CC
102D30:  CMP             R0, #0
102D32:  STR             R0, [SP,#0x68+var_58]
102D34:  BEQ.W           loc_102E48
102D38:  MOV             R0, R6
102D3A:  MOV             R1, R9
102D3C:  BL              sub_FF894
102D40:  B               loc_102CF4
102D42:  LDR             R1, =(aUb - 0x102D4A); "Ub" ...
102D44:  MOV             R0, R4
102D46:  ADD             R1, PC; "Ub"
102D48:  ADDS            R2, R1, #2
102D4A:  BL              sub_FE18C
102D4E:  CBZ             R0, loc_102D90
102D50:  ADD             R0, SP, #0x68+var_50
102D52:  MOV             R1, R4
102D54:  MOVS            R2, #0
102D56:  MOVS            R5, #0
102D58:  BL              sub_FE75C
102D5C:  LDRD.W          R0, R1, [R4]
102D60:  CMP             R0, R1
102D62:  BEQ             loc_102E54
102D64:  LDRB            R1, [R0]
102D66:  CMP             R1, #0x5F ; '_'
102D68:  BNE             loc_102D90
102D6A:  ADDS            R0, #1
102D6C:  STR             R0, [R4]
102D6E:  LDR             R0, [SP,#0x68+var_1C]
102D70:  LDR             R1, =(__stack_chk_guard_ptr - 0x102D76)
102D72:  ADD             R1, PC; __stack_chk_guard_ptr
102D74:  LDR             R1, [R1]; __stack_chk_guard
102D76:  LDR             R1, [R1]
102D78:  CMP             R1, R0
102D7A:  BNE             loc_102E6C
102D7C:  LDR             R1, =(aBlockLiteral - 0x102D84); "'block-literal'" ...
102D7E:  MOV             R0, R4
102D80:  ADD             R1, PC; "'block-literal'"
102D82:  ADD             SP, SP, #0x50 ; 'P'
102D84:  POP.W           {R8-R10}
102D88:  POP.W           {R4-R7,LR}
102D8C:  B.W             sub_1034B8
102D90:  MOVS            R5, #0
102D92:  B               loc_102E54
102D94:  ADD             R0, SP, #0x68+var_58
102D96:  MOV             R1, R4
102D98:  MOV             R2, R8
102D9A:  BL              sub_FF908
102D9E:  LDR.W           R9, [SP,#0x68+var_54]
102DA2:  CMP.W           R9, #0
102DA6:  ITTT EQ
102DA8:  LDREQ.W         R0, [R4,#0x150]
102DAC:  SUBEQ           R0, #4
102DAE:  STREQ.W         R0, [R4,#0x150]
102DB2:  LDR             R5, =(aVe - 0x102DBA); "vE" ...
102DB4:  MOVS            R1, #3; size_t
102DB6:  ADD             R5, PC; "vE"
102DB8:  MOV             R0, R5; char *
102DBA:  BLX             __strlen_chk
102DBE:  ADDS            R2, R5, R0
102DC0:  MOV             R0, R4
102DC2:  MOV             R1, R5
102DC4:  BL              sub_FE18C
102DC8:  CBNZ            R0, loc_102DF0
102DCA:  ADD             R5, SP, #0x68+var_60
102DCC:  MOV             R0, R4
102DCE:  BL              sub_FE7F0
102DD2:  STR             R0, [SP,#0x68+var_60]
102DD4:  CBZ             R0, loc_102E48
102DD6:  MOV             R0, R6
102DD8:  MOV             R1, R5
102DDA:  BL              sub_FF894
102DDE:  LDRD.W          R0, R1, [R4]
102DE2:  CMP             R0, R1
102DE4:  BEQ             loc_102DCC
102DE6:  LDRB            R1, [R0]
102DE8:  CMP             R1, #0x45 ; 'E'
102DEA:  BNE             loc_102DCC
102DEC:  ADDS            R0, #1
102DEE:  STR             R0, [R4]
102DF0:  ADD             R0, SP, #0x68+var_60
102DF2:  MOV             R1, R4
102DF4:  MOV             R2, R8
102DF6:  BL              sub_FF908
102DFA:  MOV             R0, SP
102DFC:  MOV             R1, R4
102DFE:  MOVS            R2, #0
102E00:  MOVS            R5, #0
102E02:  BL              sub_FE75C
102E06:  LDRD.W          R0, R1, [R4]
102E0A:  CMP             R0, R1
102E0C:  BEQ             loc_102E4A
102E0E:  LDRB            R1, [R0]
102E10:  CMP             R1, #0x5F ; '_'
102E12:  BNE             loc_102E48
102E14:  ADDS            R0, #1
102E16:  STR             R0, [R4]
102E18:  ADD.W           R0, R4, #0x198
102E1C:  MOVS            R1, #0x20 ; ' '
102E1E:  BL              sub_FFA98
102E22:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15ClosureTypeNameE - 0x102E2C); `vtable for'`anonymous namespace'::itanium_demangle::ClosureTypeName ...
102E24:  MOV             R5, R0
102E26:  LDR             R0, =0x101012D
102E28:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ClosureTypeName
102E2A:  LDRD.W          R12, LR, [SP,#0x68+var_68]
102E2E:  LDRD.W          R6, R2, [SP,#0x68+var_60]
102E32:  ADDS            R1, #8
102E34:  LDR             R3, [SP,#0x68+var_58]
102E36:  STRD.W          R1, R0, [R5]
102E3A:  STRD.W          R3, R9, [R5,#8]
102E3E:  STRD.W          R6, R2, [R5,#0x10]
102E42:  STRD.W          R12, LR, [R5,#0x18]
102E46:  B               loc_102E4A
102E48:  MOVS            R5, #0
102E4A:  ADD             R0, SP, #0x68+var_50
102E4C:  BL              sub_103494
102E50:  STR.W           R10, [R4,#0x188]
102E54:  LDR             R0, [SP,#0x68+var_1C]
102E56:  LDR             R1, =(__stack_chk_guard_ptr - 0x102E5C)
102E58:  ADD             R1, PC; __stack_chk_guard_ptr
102E5A:  LDR             R1, [R1]; __stack_chk_guard
102E5C:  LDR             R1, [R1]
102E5E:  CMP             R1, R0
102E60:  ITTTT EQ
102E62:  MOVEQ           R0, R5
102E64:  ADDEQ           SP, SP, #0x50 ; 'P'
102E66:  POPEQ.W         {R8-R10}
102E6A:  POPEQ           {R4-R7,PC}
102E6C:  BLX             __stack_chk_fail
