; =========================================================
; Game Engine Function: sub_1EDB2C
; Address            : 0x1EDB2C - 0x1EDC7C
; =========================================================

1EDB2C:  PUSH            {R4-R7,LR}
1EDB2E:  ADD             R7, SP, #0xC
1EDB30:  PUSH.W          {R8-R11}
1EDB34:  SUB             SP, SP, #0x54
1EDB36:  MOV             R9, R0
1EDB38:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDB40)
1EDB3A:  MOV             R5, R1
1EDB3C:  ADD             R0, PC; __stack_chk_guard_ptr
1EDB3E:  LDR             R0, [R0]; __stack_chk_guard
1EDB40:  LDR             R0, [R0]
1EDB42:  STR             R0, [SP,#0x70+var_20]
1EDB44:  BLX             __errno
1EDB48:  MOV             R10, R0
1EDB4A:  LDR             R0, =(asc_836CD - 0x1EDB50); "." ...
1EDB4C:  ADD             R0, PC; "."
1EDB4E:  MOV             R11, R0
1EDB50:  LDR             R0, =(asc_8FF74 - 0x1EDB56); ".." ...
1EDB52:  ADD             R0, PC; ".."
1EDB54:  STR             R0, [SP,#0x70+var_48]
1EDB56:  LDR             R0, =(unk_D7768 - 0x1EDB5C)
1EDB58:  ADD             R0, PC; unk_D7768
1EDB5A:  STR             R0, [SP,#0x70+var_4C]
1EDB5C:  MOVS            R0, #0
1EDB5E:  STR.W           R0, [R10]
1EDB62:  MOV             R0, R5
1EDB64:  LDR.W           R4, [R9]
1EDB68:  BL              sub_1EE05A
1EDB6C:  MOV             R0, R4; dirp
1EDB6E:  BLX             readdir
1EDB72:  CBZ             R0, loc_1EDB9C
1EDB74:  LDRB            R1, [R0,#0x12]
1EDB76:  ADD.W           R6, R0, #0x13
1EDB7A:  SUBS            R1, #1
1EDB7C:  MOV             R0, R6; s
1EDB7E:  UXTB            R2, R1
1EDB80:  CMP             R2, #0xB
1EDB82:  ITEEE HI
1EDB84:  MOVHI.W         R8, #0
1EDB88:  SXTBLS          R1, R1
1EDB8A:  LDRLS           R2, [SP,#0x70+var_4C]
1EDB8C:  LDRBLS.W        R8, [R2,R1]
1EDB90:  STR             R6, [SP,#0x70+var_2C]
1EDB92:  BLX             strlen
1EDB96:  MOV             R4, R0
1EDB98:  STR             R0, [SP,#0x70+var_28]
1EDB9A:  B               loc_1EDBBC
1EDB9C:  LDR.W           R0, [R10]
1EDBA0:  CBZ             R0, loc_1EDBB0
1EDBA2:  ADD             R0, SP, #0x70+var_38
1EDBA4:  BL              sub_1EE4D8
1EDBA8:  LDRD.W          R0, R1, [SP,#0x70+var_38]
1EDBAC:  STRD.W          R0, R1, [R5]
1EDBB0:  MOVS            R6, #0
1EDBB2:  MOVS            R4, #0
1EDBB4:  STRD.W          R6, R6, [SP,#0x70+var_2C]
1EDBB8:  MOV.W           R8, #0
1EDBBC:  MOV             R0, R6; int
1EDBBE:  MOV             R1, R4; int
1EDBC0:  MOV             R2, R11; int
1EDBC2:  MOVS            R3, #1; n
1EDBC4:  STRB.W          R8, [SP,#0x70+var_24]
1EDBC8:  BL              sub_1EE408
1EDBCC:  CMP             R0, #0
1EDBCE:  BNE             loc_1EDB5C
1EDBD0:  LDR             R2, [SP,#0x70+var_48]; int
1EDBD2:  MOV             R0, R6; int
1EDBD4:  MOV             R1, R4; int
1EDBD6:  MOVS            R3, #2; n
1EDBD8:  BL              sub_1EE408
1EDBDC:  CMP             R0, #0
1EDBDE:  BNE             loc_1EDB5C
1EDBE0:  LDR             R0, [R5]
1EDBE2:  CBZ             R0, loc_1EDBF0
1EDBE4:  ADD             R0, SP, #0x70+var_38
1EDBE6:  MOV             R1, R9
1EDBE8:  BL              sub_1EE450
1EDBEC:  MOVS            R0, #0
1EDBEE:  B               loc_1EDC62
1EDBF0:  CMP             R4, #0
1EDBF2:  BEQ             loc_1EDBE4
1EDBF4:  ADD             R4, SP, #0x70+var_44
1EDBF6:  ADD             R1, SP, #0x70+var_2C
1EDBF8:  MOVS            R2, #0
1EDBFA:  MOVS            R5, #0
1EDBFC:  MOV             R0, R4; int
1EDBFE:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_17basic_string_viewIcNS_11char_traitsIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string_view,void>(std::string_view const&,std::__fs::filesystem::path::format)
1EDC02:  ADD.W           R1, R9, #4
1EDC06:  ADD             R0, SP, #0x70+var_38
1EDC08:  MOV             R2, R4
1EDC0A:  BL              sub_F1DD4
1EDC0E:  LDRB.W          R0, [SP,#0x70+var_24]
1EDC12:  MOVS            R4, #2
1EDC14:  MOVW            R1, #0xFFFF
1EDC18:  MOV.W           R2, #0x80000000
1EDC1C:  CMP             R0, #3
1EDC1E:  IT EQ
1EDC20:  MOVEQ           R4, #1
1EDC22:  CMP             R0, #0
1EDC24:  IT EQ
1EDC26:  MOVEQ           R4, R0
1EDC28:  MOV.W           R3, #0xFFFFFFFF
1EDC2C:  ORR.W           R0, R0, R4,LSL#8
1EDC30:  STRD.W          R3, R3, [SP,#0x70+var_70]
1EDC34:  MOV.W           R3, #0xFFFFFFFF
1EDC38:  STRD.W          R5, R2, [SP,#0x70+var_68]
1EDC3C:  MOV.W           R2, #0xFFFFFFFF
1EDC40:  STRD.W          R0, R5, [SP,#0x70+var_58]
1EDC44:  ADD.W           R0, R9, #0x10
1EDC48:  STRD.W          R1, R1, [SP,#0x70+var_60]
1EDC4C:  ADD             R4, SP, #0x70+var_38
1EDC4E:  MOV             R1, R4
1EDC50:  BL              sub_1EE4A0
1EDC54:  MOV             R0, R4
1EDC56:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EDC5A:  ADD             R0, SP, #0x70+var_44
1EDC5C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EDC60:  MOVS            R0, #1
1EDC62:  LDR             R1, [SP,#0x70+var_20]
1EDC64:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EDC6A)
1EDC66:  ADD             R2, PC; __stack_chk_guard_ptr
1EDC68:  LDR             R2, [R2]; __stack_chk_guard
1EDC6A:  LDR             R2, [R2]
1EDC6C:  CMP             R2, R1
1EDC6E:  ITTT EQ
1EDC70:  ADDEQ           SP, SP, #0x54 ; 'T'
1EDC72:  POPEQ.W         {R8-R11}
1EDC76:  POPEQ           {R4-R7,PC}
1EDC78:  BLX             __stack_chk_fail
