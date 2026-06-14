; =========================================================
; Game Engine Function: _Z7NvFOpenPKcS0_bb
; Address            : 0x266E2C - 0x266FC0
; =========================================================

266E2C:  PUSH            {R4-R7,LR}
266E2E:  ADD             R7, SP, #0xC
266E30:  PUSH.W          {R8-R10}
266E34:  SUB.W           SP, SP, #0x210
266E38:  MOV             R6, R0
266E3A:  LDR             R0, =(__stack_chk_guard_ptr - 0x266E44)
266E3C:  MOV             R4, R3
266E3E:  MOV             R9, R2
266E40:  ADD             R0, PC; __stack_chk_guard_ptr
266E42:  MOV             R10, R1
266E44:  LDR             R0, [R0]; __stack_chk_guard
266E46:  LDR             R0, [R0]
266E48:  STR             R0, [SP,#0x228+var_1C]
266E4A:  MOVS            R0, #8; byte_count
266E4C:  BLX             malloc
266E50:  MOV             R8, R0
266E52:  CBZ             R6, loc_266EC8
266E54:  LDR             R2, =(byte_6D9ED0 - 0x266E60)
266E56:  ADD             R0, SP, #0x228+filename
266E58:  LDR             R3, =(StorageRootBuffer_ptr - 0x266E66)
266E5A:  ADR             R1, aSSS; "%s/%s%s"
266E5C:  ADD             R2, PC; byte_6D9ED0
266E5E:  STR.W           R10, [SP,#0x228+var_228]
266E62:  ADD             R3, PC; StorageRootBuffer_ptr
266E64:  LDRB            R5, [R2]
266E66:  LDR             R2, [R3]; StorageRootBuffer
266E68:  MOV             R3, R6
266E6A:  BL              sub_5E6BC0
266E6E:  MOVS            R0, #0
266E70:  CMP             R5, #0
266E72:  STR.W           R0, [R8]
266E76:  BNE             loc_266F5E
266E78:  CMP             R4, #0
266E7A:  BEQ             loc_266F5E
266E7C:  CMP.W           R9, #0
266E80:  BNE             loc_266F5E
266E82:  LDR             R0, =(dword_6D81C4 - 0x266E88)
266E84:  ADD             R0, PC; dword_6D81C4
266E86:  LDR.W           R9, [R0,#(dword_6D81C8 - 0x6D81C4)]
266E8A:  CMP.W           R9, #0
266E8E:  BEQ             loc_266EAC
266E90:  LDR             R0, =(dword_6D81C4 - 0x266E98)
266E92:  MOVS            R6, #0
266E94:  ADD             R0, PC; dword_6D81C4
266E96:  LDR             R5, [R0,#(dword_6D81CC - 0x6D81C4)]
266E98:  LDR.W           R4, [R5,R6,LSL#2]
266E9C:  MOV             R0, R10; char *
266E9E:  MOV             R1, R4; char *
266EA0:  BLX             strcasecmp
266EA4:  CBZ             R0, loc_266EAE
266EA6:  ADDS            R6, #1
266EA8:  CMP             R6, R9
266EAA:  BCC             loc_266E98
266EAC:  MOV             R4, R10
266EAE:  LDR             R0, =(dword_6D81D4 - 0x266EB8)
266EB0:  MOV             R1, R4; filename
266EB2:  MOVS            R2, #0; mode
266EB4:  ADD             R0, PC; dword_6D81D4
266EB6:  LDR             R0, [R0]; mgr
266EB8:  BLX             AAssetManager_open
266EBC:  MOV             R4, R8
266EBE:  CMP             R0, #0
266EC0:  STR.W           R0, [R4,#4]!
266EC4:  BNE             loc_266F84
266EC6:  B               loc_266F66
266EC8:  LDRB.W          R0, [R10]
266ECC:  CMP             R0, #0x2F ; '/'
266ECE:  BNE             loc_266EF4
266ED0:  ADR             R1, aDataApp; "/data/app"
266ED2:  MOV             R0, R10; haystack
266ED4:  BLX             strstr
266ED8:  CBZ             R0, loc_266F00
266EDA:  LDR             R0, =(byte_6D9ED0 - 0x266EE2)
266EDC:  MOVS            R1, #1
266EDE:  ADD             R0, PC; byte_6D9ED0
266EE0:  STRB            R1, [R0]
266EE2:  MOV             R0, R10; char *
266EE4:  BLX             strlen
266EE8:  ADDS            R2, R0, #1; size_t
266EEA:  ADD             R0, SP, #0x228+filename; void *
266EEC:  MOV             R1, R10; void *
266EEE:  BLX             memcpy_1
266EF2:  B               loc_266F58
266EF4:  LDR             R2, =(StorageRootBuffer_ptr - 0x266EFE)
266EF6:  ADD             R0, SP, #0x228+filename
266EF8:  ADR             R1, aSS_0; "%s%s"
266EFA:  ADD             R2, PC; StorageRootBuffer_ptr
266EFC:  LDR             R2, [R2]; StorageRootBuffer
266EFE:  B               loc_266F52
266F00:  LDR             R0, =(dword_6855E8 - 0x266F06)
266F02:  ADD             R0, PC; dword_6855E8
266F04:  LDR             R0, [R0]
266F06:  ADDS            R0, #1
266F08:  BNE             loc_266F48
266F0A:  LDR             R0, =(StorageRootBuffer_ptr - 0x266F12)
266F0C:  LDR             R1, =(aAndroid - 0x266F14); "/Android"
266F0E:  ADD             R0, PC; StorageRootBuffer_ptr
266F10:  ADD             R1, PC; "/Android"
266F12:  LDR             R0, [R0]; StorageRootBuffer ; haystack
266F14:  BLX             strstr
266F18:  CBNZ            R0, loc_266F2A
266F1A:  LDR             R0, =(StorageRootBuffer_ptr - 0x266F22)
266F1C:  LDR             R1, =(aAndroid_0 - 0x266F24); "/android"
266F1E:  ADD             R0, PC; StorageRootBuffer_ptr
266F20:  ADD             R1, PC; "/android"
266F22:  LDR             R0, [R0]; StorageRootBuffer ; haystack
266F24:  BLX             strstr
266F28:  CBZ             R0, loc_266FA2
266F2A:  LDR             R1, =(StorageRootBuffer_ptr - 0x266F32)
266F2C:  LDR             R4, =(unk_6D9E50 - 0x266F36)
266F2E:  ADD             R1, PC; StorageRootBuffer_ptr
266F30:  LDR             R5, =(dword_6855E8 - 0x266F3A)
266F32:  ADD             R4, PC; unk_6D9E50
266F34:  LDR             R1, [R1]; StorageRootBuffer ; char *
266F36:  ADD             R5, PC; dword_6855E8
266F38:  SUBS            R2, R0, R1; size_t
266F3A:  MOV             R0, R4; char *
266F3C:  STR             R2, [R5]
266F3E:  BLX             strncpy
266F42:  LDR             R0, [R5]
266F44:  MOVS            R1, #0
266F46:  STRB            R1, [R4,R0]
266F48:  LDR             R1, =(aSS_6 - 0x266F52); "%s/%s"
266F4A:  ADD             R0, SP, #0x228+filename
266F4C:  LDR             R2, =(unk_6D9E50 - 0x266F54)
266F4E:  ADD             R1, PC; "%s/%s"
266F50:  ADD             R2, PC; unk_6D9E50
266F52:  MOV             R3, R10
266F54:  BL              sub_5E6BC0
266F58:  MOVS            R0, #0
266F5A:  STR.W           R0, [R8]
266F5E:  MOVS            R0, #0
266F60:  MOV             R4, R8
266F62:  STR.W           R0, [R4,#4]!
266F66:  ADD             R0, SP, #0x228+filename; filename
266F68:  ADR             R1, dword_267030; modes
266F6A:  BLX             fopen
266F6E:  CBZ             R0, loc_266F7A
266F70:  MOVS            R1, #1
266F72:  STR.W           R1, [R8]
266F76:  STR             R0, [R4]
266F78:  B               loc_266F84
266F7A:  MOV             R0, R8; p
266F7C:  BLX             free
266F80:  MOV.W           R8, #0
266F84:  LDR             R0, =(__stack_chk_guard_ptr - 0x266F8C)
266F86:  LDR             R1, [SP,#0x228+var_1C]
266F88:  ADD             R0, PC; __stack_chk_guard_ptr
266F8A:  LDR             R0, [R0]; __stack_chk_guard
266F8C:  LDR             R0, [R0]
266F8E:  SUBS            R0, R0, R1
266F90:  ITTTT EQ
266F92:  MOVEQ           R0, R8
266F94:  ADDEQ.W         SP, SP, #0x210
266F98:  POPEQ.W         {R8-R10}
266F9C:  POPEQ           {R4-R7,PC}
266F9E:  BLX             __stack_chk_fail
266FA2:  LDR             R0, =(StorageBaseRootBuffer_ptr - 0x266FAA)
266FA4:  LDR             R4, =(unk_6D9E50 - 0x266FAC)
266FA6:  ADD             R0, PC; StorageBaseRootBuffer_ptr
266FA8:  ADD             R4, PC; unk_6D9E50
266FAA:  LDR             R1, [R0]; StorageBaseRootBuffer ; char *
266FAC:  MOV             R0, R4; char *
266FAE:  BLX             strcpy
266FB2:  MOV             R0, R4; char *
266FB4:  BLX             strlen
266FB8:  LDR             R1, =(dword_6855E8 - 0x266FBE)
266FBA:  ADD             R1, PC; dword_6855E8
266FBC:  STR             R0, [R1]
266FBE:  B               loc_266F48
