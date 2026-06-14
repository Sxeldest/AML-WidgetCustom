; =========================================================
; Game Engine Function: sub_E8DD4
; Address            : 0xE8DD4 - 0xE8EC0
; =========================================================

E8DD4:  PUSH            {R4-R7,LR}
E8DD6:  ADD             R7, SP, #0xC
E8DD8:  PUSH.W          {R8}
E8DDC:  SUB             SP, SP, #0x28
E8DDE:  MOV             R4, R0
E8DE0:  MOV             R5, R0
E8DE2:  MOV             R8, R1
E8DE4:  LDR.W           R0, [R5,#4]!
E8DE8:  LDR             R1, [R4,#8]
E8DEA:  ADD.W           R3, R4, #0x50 ; 'P'
E8DEE:  MOVS            R2, #0
E8DF0:  SUBS            R0, R1, R0
E8DF2:  ASRS            R1, R0, #2
E8DF4:  ADD.W           R0, R4, #0x30 ; '0'
E8DF8:  BL              sub_E9460
E8DFC:  STRB.W          R0, [R7,#var_11]
E8E00:  ADD.W           R0, R4, #0x10
E8E04:  SUB.W           R1, R7, #-var_11
E8E08:  BL              sub_E8994
E8E0C:  ADD             R6, SP, #0x38+var_1C
E8E0E:  MOVS            R0, #1
E8E10:  ADD             R2, SP, #0x38+var_28
E8E12:  STRB.W          R0, [SP,#0x38+var_28]
E8E16:  MOV             R0, R6
E8E18:  MOV             R1, R4
E8E1A:  MOVS            R3, #1
E8E1C:  BL              sub_E9484
E8E20:  LDRD.W          R0, R1, [R4,#8]
E8E24:  CMP             R0, R1
E8E26:  BEQ             loc_E8E32
E8E28:  LDR             R1, [SP,#0x38+var_18]
E8E2A:  STR.W           R1, [R0],#4
E8E2E:  STR             R0, [R4,#8]
E8E30:  B               loc_E8E3C
E8E32:  ADDS            R1, R6, #4
E8E34:  MOV             R0, R5
E8E36:  BL              sub_E9658
E8E3A:  LDR             R0, [R4,#8]
E8E3C:  ADDS.W          R1, R8, #1
E8E40:  ITT NE
E8E42:  LDRNE.W         R0, [R0,#-4]
E8E46:  CMPNE           R0, #0
E8E48:  BEQ             loc_E8E62
E8E4A:  LDRSB.W         R0, [R0]
E8E4E:  CMP             R0, #2
E8E50:  BHI             loc_E8E5C
E8E52:  LDR             R1, =(unk_92190 - 0xE8E58)
E8E54:  ADD             R1, PC; unk_92190
E8E56:  LDR.W           R0, [R1,R0,LSL#2]
E8E5A:  B               loc_E8E5E
E8E5C:  MOVS            R0, #1
E8E5E:  CMP             R0, R8
E8E60:  BCC             loc_E8E6C
E8E62:  MOVS            R0, #1
E8E64:  ADD             SP, SP, #0x28 ; '('
E8E66:  POP.W           {R8}
E8E6A:  POP             {R4-R7,PC}
E8E6C:  MOVS            R0, #0x10; thrown_size
E8E6E:  BLX             j___cxa_allocate_exception
E8E72:  MOV             R5, R0
E8E74:  ADD             R0, SP, #0x38+var_34; this
E8E76:  MOV             R1, R8; std::__itoa *
E8E78:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
E8E7C:  LDR             R2, =(aExcessiveObjec - 0xE8E82); "excessive object size: " ...
E8E7E:  ADD             R2, PC; "excessive object size: "
E8E80:  ADD             R0, SP, #0x38+var_34; int
E8E82:  MOVS            R1, #0; int
E8E84:  MOVS            R6, #0
E8E86:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E8E8A:  VLDR            D16, [R0]
E8E8E:  LDR             R1, [R0,#8]
E8E90:  STR             R1, [SP,#0x38+var_20]
E8E92:  VSTR            D16, [SP,#0x38+var_28]
E8E96:  STRD.W          R6, R6, [R0]
E8E9A:  STR             R6, [R0,#8]
E8E9C:  LDR             R0, [R4,#8]
E8E9E:  MOVS            R4, #1
E8EA0:  LDR.W           R3, [R0,#-4]
E8EA4:  ADD             R2, SP, #0x38+var_28
E8EA6:  MOV             R0, R5
E8EA8:  MOV.W           R1, #0x198
E8EAC:  BL              sub_E92EC
E8EB0:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xE8EBA); `typeinfo for'nlohmann::detail::out_of_range ...
E8EB2:  MOVS            R4, #0
E8EB4:  LDR             R2, =(sub_E9438+1 - 0xE8EBC)
E8EB6:  ADD             R1, PC; lptinfo
E8EB8:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E8EBA:  MOV             R0, R5; void *
E8EBC:  BLX             j___cxa_throw
