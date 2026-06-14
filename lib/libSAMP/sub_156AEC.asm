; =========================================================
; Game Engine Function: sub_156AEC
; Address            : 0x156AEC - 0x156E90
; =========================================================

156AEC:  PUSH            {R4-R7,LR}
156AEE:  ADD             R7, SP, #0xC
156AF0:  PUSH.W          {R8-R11}
156AF4:  SUB             SP, SP, #0x6C
156AF6:  MOV             R9, R1
156AF8:  STR             R2, [SP,#0x88+var_78]
156AFA:  LDRB.W          R2, [R9]
156AFE:  LDR             R1, [R1,#4]
156B00:  ANDS.W          R3, R2, #1
156B04:  IT EQ
156B06:  LSREQ           R1, R2, #1
156B08:  CMP             R1, #0
156B0A:  BEQ.W           loc_156D42
156B0E:  STR             R0, [SP,#0x88+var_74]
156B10:  ADD.W           R12, R0, #0x4E ; 'N'
156B14:  LDR             R0, =(unk_B9AB2 - 0x156B26)
156B16:  ADD.W           LR, R9, #1
156B1A:  EOR.W           R3, R3, #1
156B1E:  MOV.W           R11, #0
156B22:  ADD             R0, PC; unk_B9AB2
156B24:  MOVS            R6, #0
156B26:  MOVS            R1, #0
156B28:  MOVS            R2, #0
156B2A:  MOV             R10, R0
156B2C:  MOVS            R0, #0
156B2E:  MOV.W           R8, #0
156B32:  STRD.W          LR, R12, [SP,#0x88+var_80]
156B36:  LDR.W           R5, [R9,#8]
156B3A:  LSLS            R3, R3, #0x1F
156B3C:  IT NE
156B3E:  MOVNE           R5, LR
156B40:  MOV             R3, R10
156B42:  LDRB            R5, [R5,R6]
156B44:  LDRB.W          R3, [R10,R5]
156B48:  CBZ             R0, loc_156B54
156B4A:  AND.W           R4, R5, #0x3F ; '?'
156B4E:  ORR.W           R8, R4, R8,LSL#6
156B52:  B               loc_156B5C
156B54:  MOVS            R4, #0xFF
156B56:  LSRS            R4, R3
156B58:  AND.W           R8, R4, R5
156B5C:  ADD.W           R0, R3, R0,LSL#4
156B60:  MOV             R3, R10
156B62:  ADD             R0, R10
156B64:  LDRB.W          R0, [R0,#0x100]
156B68:  CMP             R0, #1
156B6A:  BEQ             loc_156B88
156B6C:  CBNZ            R0, loc_156BCC
156B6E:  SUB.W           R0, R8, #8; switch 6 cases
156B72:  CMP             R0, #5
156B74:  BHI             def_156B76; jumptable 00156B76 default case
156B76:  TBB.W           [PC,R0]; switch jump
156B7A:  DCB 3; jump table for switch statement
156B7B:  DCB 0x63
156B7C:  DCB 0x67
156B7D:  DCB 0x4F
156B7E:  DCB 0x6B
156B7F:  DCB 0x6F
156B80:  LDR             R0, [SP,#0x88+var_74]; jumptable 00156B76 case 8
156B82:  MOVW            R1, #0x625C
156B86:  B               loc_156C66
156B88:  LDR             R0, [SP,#0x88+var_74]
156B8A:  LDR.W           R0, [R0,#0x25C]
156B8E:  SUBS            R3, R0, #1
156B90:  CMP             R3, #2
156B92:  BCS             loc_156BE0
156B94:  CMP             R1, #0
156B96:  IT NE
156B98:  SUBNE           R6, #1
156B9A:  CMP             R0, #1
156B9C:  BNE             loc_156C94
156B9E:  LDR             R0, [SP,#0x88+var_74]
156BA0:  LDR             R3, [SP,#0x88+var_78]
156BA2:  ADD             R0, R2
156BA4:  ADD.W           R1, R0, #0x4E ; 'N'
156BA8:  ADDS            R0, R2, #1
156BAA:  CBZ             R3, loc_156BFE
156BAC:  MOVS            R3, #0x75 ; 'u'
156BAE:  MOVS            R5, #0x66 ; 'f'
156BB0:  STRB.W          R3, [R12,R0]
156BB4:  MOVS            R0, #0x5C ; '\'
156BB6:  MOVS            R3, #6
156BB8:  STRB            R0, [R1]
156BBA:  ADD.W           R0, R2, R12
156BBE:  MOVW            R1, #0x6666
156BC2:  MOVS            R4, #5
156BC4:  STRH            R1, [R0,#2]
156BC6:  ADDS            R0, R2, #4
156BC8:  MOVS            R1, #0x64 ; 'd'
156BCA:  B               loc_156C0A
156BCC:  LDR             R3, [SP,#0x88+var_78]
156BCE:  CBNZ            R3, loc_156BDC
156BD0:  LDR             R3, [SP,#0x88+var_74]
156BD2:  ADD             R3, R11
156BD4:  ADD.W           R11, R11, #1
156BD8:  STRB.W          R5, [R3,#0x4E]
156BDC:  ADDS            R1, #1
156BDE:  B               loc_156C9A
156BE0:  CMP             R0, #0
156BE2:  BEQ.W           loc_156D76
156BE6:  MOVS            R0, #1
156BE8:  B               loc_156C9A
156BEA:  CMP.W           R8, #0x22 ; '"'; jumptable 00156B76 default case
156BEE:  BEQ             loc_156C60
156BF0:  CMP.W           R8, #0x5C ; '\'
156BF4:  BNE             loc_156C18; jumptable 00156B76 case 11
156BF6:  LDR             R0, [SP,#0x88+var_74]
156BF8:  MOVW            R1, #0x5C5C
156BFC:  B               loc_156C66
156BFE:  MOVS            R3, #0xEF
156C00:  MOVS            R5, #0xBF
156C02:  STRB            R3, [R1]
156C04:  MOVS            R1, #0xBD
156C06:  MOVS            R3, #3
156C08:  MOVS            R4, #2
156C0A:  STRB.W          R5, [R12,R0]
156C0E:  ADDS            R0, R2, R4
156C10:  ADD             R2, R3
156C12:  STRB.W          R1, [R12,R0]
156C16:  B               loc_156C70
156C18:  CMP.W           R8, #0x20 ; ' '; jumptable 00156B76 case 11
156C1C:  BCS             loc_156CB8
156C1E:  LDR             R3, =(aU04x_0 - 0x156C30); "\\u%04x" ...
156C20:  MOV.W           R1, #0xFFFFFFFF
156C24:  STR.W           R8, [SP,#0x88+var_88]
156C28:  MOVS            R2, #7
156C2A:  LDR             R0, [SP,#0x88+var_74]
156C2C:  ADD             R3, PC; "\\u%04x"
156C2E:  ADD             R0, R11
156C30:  ADDS            R0, #0x4E ; 'N'
156C32:  BL              sub_1561FE
156C36:  LDR.W           LR, [SP,#0x88+var_80]
156C3A:  ADD.W           R2, R11, #6
156C3E:  B               loc_156D0A
156C40:  LDR             R0, [SP,#0x88+var_74]; jumptable 00156B76 case 9
156C42:  MOVW            R1, #0x745C
156C46:  B               loc_156C66
156C48:  LDR             R0, [SP,#0x88+var_74]; jumptable 00156B76 case 10
156C4A:  MOVW            R1, #0x6E5C
156C4E:  B               loc_156C66
156C50:  LDR             R0, [SP,#0x88+var_74]; jumptable 00156B76 case 12
156C52:  MOVW            R1, #0x665C
156C56:  B               loc_156C66
156C58:  LDR             R0, [SP,#0x88+var_74]; jumptable 00156B76 case 13
156C5A:  MOVW            R1, #0x725C
156C5E:  B               loc_156C66
156C60:  LDR             R0, [SP,#0x88+var_74]
156C62:  MOVW            R1, #0x225C
156C66:  ADD             R0, R11
156C68:  STRH.W          R1, [R0,#0x4E]
156C6C:  ADD.W           R2, R11, #2
156C70:  SUB.W           R0, R2, #0x1F4
156C74:  CMP             R0, #0xC
156C76:  BHI             loc_156C94
156C78:  LDR             R0, [SP,#0x88+var_74]
156C7A:  LDR             R0, [R0]
156C7C:  LDR             R1, [R0]
156C7E:  LDR             R3, [R1,#4]
156C80:  MOV             R1, R12
156C82:  BLX             R3
156C84:  LDRD.W          LR, R12, [SP,#0x88+var_80]
156C88:  MOVS            R0, #0
156C8A:  MOVS            R2, #0
156C8C:  MOVS            R1, #0
156C8E:  MOV.W           R11, #0
156C92:  B               loc_156C9A
156C94:  MOVS            R0, #0
156C96:  MOVS            R1, #0
156C98:  MOV             R11, R2
156C9A:  LDRB.W          R3, [R9]
156C9E:  ADDS            R6, #1
156CA0:  LDR.W           R5, [R9,#4]
156CA4:  ANDS.W          R4, R3, #1
156CA8:  IT EQ
156CAA:  LSREQ           R5, R3, #1
156CAC:  EOR.W           R3, R4, #1
156CB0:  CMP             R6, R5
156CB2:  BCC.W           loc_156B36
156CB6:  B               loc_156D10
156CB8:  LDR             R0, [SP,#0x88+var_78]
156CBA:  CBZ             R0, loc_156CFE
156CBC:  CMP.W           R8, #0x7F
156CC0:  BCC             loc_156CFE
156CC2:  MOVS            R0, #0
156CC4:  CMP.W           R0, R8,LSR#16
156CC8:  BEQ             loc_156C1E
156CCA:  MOV             R0, R8
156CCC:  MOVS            R1, #0x37 ; '7'
156CCE:  BFI.W           R0, R1, #0xA, #0x16
156CD2:  MOVW            R1, #0xD7C0
156CD6:  ADD.W           R1, R1, R8,LSR#10
156CDA:  LDR             R3, =(aU04xU04x - 0x156CE4); "\\u%04x\\u%04x" ...
156CDC:  MOVS            R2, #0xD
156CDE:  UXTH            R1, R1
156CE0:  ADD             R3, PC; "\\u%04x\\u%04x"
156CE2:  STRD.W          R1, R0, [SP,#0x88+var_88]
156CE6:  MOV.W           R1, #0xFFFFFFFF
156CEA:  LDR             R0, [SP,#0x88+var_74]
156CEC:  ADD             R0, R11
156CEE:  ADDS            R0, #0x4E ; 'N'
156CF0:  BL              sub_1561FE
156CF4:  LDR.W           LR, [SP,#0x88+var_80]
156CF8:  ADD.W           R2, R11, #0xC
156CFC:  B               loc_156D0A
156CFE:  LDR             R0, [SP,#0x88+var_74]
156D00:  ADD.W           R2, R11, #1
156D04:  ADD             R0, R11
156D06:  STRB.W          R5, [R0,#0x4E]
156D0A:  LDR.W           R12, [SP,#0x88+var_7C]
156D0E:  B               loc_156C70
156D10:  CBNZ            R0, loc_156D30
156D12:  LDR             R0, [SP,#0x88+var_74]
156D14:  CMP.W           R11, #0
156D18:  BEQ             loc_156D42
156D1A:  LDR             R0, [R0]
156D1C:  MOV             R2, R11
156D1E:  LDR             R1, [R0]
156D20:  LDR             R3, [R1,#4]
156D22:  MOV             R1, R12
156D24:  ADD             SP, SP, #0x6C ; 'l'
156D26:  POP.W           {R8-R11}
156D2A:  POP.W           {R4-R7,LR}
156D2E:  BX              R3
156D30:  LDR             R0, [SP,#0x88+var_74]
156D32:  LDR.W           R0, [R0,#0x25C]
156D36:  CMP             R0, #1
156D38:  BEQ             loc_156D50
156D3A:  CMP             R0, #2
156D3C:  BEQ             loc_156D4A
156D3E:  CMP             R0, #0
156D40:  BEQ             loc_156E1C
156D42:  ADD             SP, SP, #0x6C ; 'l'
156D44:  POP.W           {R8-R11}
156D48:  POP             {R4-R7,PC}
156D4A:  LDR             R0, [SP,#0x88+var_74]
156D4C:  LDR             R0, [R0]
156D4E:  B               loc_156D1E
156D50:  LDR             R4, [SP,#0x88+var_74]
156D52:  LDR             R0, [R4]
156D54:  LDR             R1, [R0]
156D56:  LDR             R3, [R1,#4]
156D58:  MOV             R1, R12
156D5A:  BLX             R3
156D5C:  LDR             R0, [R4]
156D5E:  LDR             R1, [R0]
156D60:  LDR             R3, [R1,#4]
156D62:  LDR             R1, [SP,#0x88+var_78]
156D64:  CBZ             R1, loc_156D6E
156D66:  LDR             R1, =(aUfffd - 0x156D6E); "\\ufffd" ...
156D68:  MOVS            R2, #6
156D6A:  ADD             R1, PC; "\\ufffd"
156D6C:  B               loc_156D24
156D6E:  LDR             R1, =(unk_8DFBC - 0x156D76)
156D70:  MOVS            R2, #3
156D72:  ADD             R1, PC; unk_8DFBC
156D74:  B               loc_156D24
156D76:  LDR             R3, =(a2x - 0x156D84); "%.2X" ...
156D78:  MOVS            R0, #0
156D7A:  MOVS            R1, #0x12
156D7C:  STR.W           R0, [SP,#0x88+var_23]
156D80:  ADD             R3, PC; "%.2X"
156D82:  STR.W           R0, [SP,#0x88+var_27]
156D86:  STRB.W          R1, [SP,#0x88+var_28]
156D8A:  STRH.W          R0, [SP,#0x88+var_1F]
156D8E:  ADD             R0, SP, #0x88+var_28
156D90:  MOVS            R1, #0xB
156D92:  ADDS            R0, #1
156D94:  MOVS            R2, #9
156D96:  STR             R5, [SP,#0x88+var_88]
156D98:  BL              sub_1561FE
156D9C:  MOVS            R0, #0x10; thrown_size
156D9E:  BLX             j___cxa_allocate_exception
156DA2:  MOV             R4, R0
156DA4:  ADD             R0, SP, #0x88+var_5C; this
156DA6:  MOV             R1, R6; std::__itoa *
156DA8:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
156DAC:  LDR             R2, =(aInvalidUtf8Byt - 0x156DB2); "invalid UTF-8 byte at index " ...
156DAE:  ADD             R2, PC; "invalid UTF-8 byte at index "
156DB0:  ADD             R0, SP, #0x88+var_5C; int
156DB2:  MOVS            R1, #0; int
156DB4:  MOVS            R5, #0
156DB6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
156DBA:  VLDR            D16, [R0]
156DBE:  LDR             R2, [R0,#8]
156DC0:  LDR             R1, =(a0x - 0x156DC8); ": 0x" ...
156DC2:  STR             R2, [SP,#0x88+var_48]
156DC4:  ADD             R1, PC; ": 0x"
156DC6:  VSTR            D16, [SP,#0x88+var_50]
156DCA:  STRD.W          R5, R5, [R0]
156DCE:  STR             R5, [R0,#8]
156DD0:  ADD             R0, SP, #0x88+var_50; int
156DD2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
156DD6:  LDR             R1, [R0,#8]
156DD8:  MOVS            R5, #0
156DDA:  VLDR            D16, [R0]
156DDE:  STR             R1, [SP,#0x88+var_38]
156DE0:  VSTR            D16, [SP,#0x88+var_40]
156DE4:  STRD.W          R5, R5, [R0]
156DE8:  STR             R5, [R0,#8]
156DEA:  ADD             R0, SP, #0x88+var_34
156DEC:  ADD             R1, SP, #0x88+var_40
156DEE:  ADD             R2, SP, #0x88+var_28
156DF0:  BL              sub_155FE4
156DF4:  STR             R5, [SP,#0x88+var_68]
156DF6:  STRB.W          R5, [SP,#0x88+var_70]
156DFA:  MOVS            R5, #1
156DFC:  ADD             R2, SP, #0x88+var_34
156DFE:  ADD             R3, SP, #0x88+var_70
156E00:  MOV             R0, R4
156E02:  MOV.W           R1, #0x13C
156E06:  BL              sub_E9CB0
156E0A:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0x156E14); `typeinfo for'nlohmann::detail::type_error ...
156E0C:  MOVS            R5, #0
156E0E:  LDR             R2, =(sub_E9438+1 - 0x156E16)
156E10:  ADD             R1, PC; lptinfo
156E12:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
156E14:  MOV             R0, R4; void *
156E16:  BLX             j___cxa_throw
156E1A:  B               off_156E90
156E1C:  MOVS            R0, #0
156E1E:  MOVS            R2, #0x12
156E20:  STR.W           R0, [SP,#0x88+var_23]
156E24:  CMP             R4, #0
156E26:  STR.W           R0, [SP,#0x88+var_27]
156E2A:  STRH.W          R0, [SP,#0x88+var_1F]
156E2E:  LDR.W           R1, [R9,#8]
156E32:  LDR             R0, [SP,#0x88+var_80]
156E34:  STRB.W          R2, [SP,#0x88+var_28]
156E38:  IT EQ
156E3A:  MOVEQ           R1, R0
156E3C:  ADDS            R0, R1, R5
156E3E:  LDRB.W          R0, [R0,#-1]
156E42:  LDR             R3, =(a2x - 0x156E48); "%.2X" ...
156E44:  ADD             R3, PC; "%.2X"
156E46:  STR             R0, [SP,#0x88+var_88]
156E48:  ADD             R0, SP, #0x88+var_28
156E4A:  ADDS            R0, #1
156E4C:  MOVS            R1, #0xB
156E4E:  MOVS            R2, #9
156E50:  BL              sub_1561FE
156E54:  MOVS            R0, #0x10; thrown_size
156E56:  BLX             j___cxa_allocate_exception
156E5A:  LDR             R1, =(aIncompleteUtf8 - 0x156E62); "incomplete UTF-8 string; last byte: 0x" ...
156E5C:  MOV             R4, R0
156E5E:  ADD             R1, PC; "incomplete UTF-8 string; last byte: 0x"
156E60:  ADD             R0, SP, #0x88+var_34
156E62:  ADD             R2, SP, #0x88+var_28
156E64:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
156E68:  MOVS            R0, #0
156E6A:  MOVS            R5, #1
156E6C:  STR             R0, [SP,#0x88+var_68]
156E6E:  STRB.W          R0, [SP,#0x88+var_70]
156E72:  ADD             R2, SP, #0x88+var_34
156E74:  ADD             R3, SP, #0x88+var_70
156E76:  MOV             R0, R4
156E78:  MOV.W           R1, #0x13C
156E7C:  BL              sub_E9CB0
156E80:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0x156E8A); `typeinfo for'nlohmann::detail::type_error ...
156E82:  MOVS            R5, #0
156E84:  LDR             R2, =(sub_E9438+1 - 0x156E8C)
156E86:  ADD             R1, PC; lptinfo
156E88:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
156E8A:  MOV             R0, R4; void *
156E8C:  BLX             j___cxa_throw
