; =========================================================
; Game Engine Function: sub_71D20
; Address            : 0x71D20 - 0x71FD4
; =========================================================

71D20:  PUSH            {R4-R7,LR}
71D22:  ADD             R7, SP, #0xC
71D24:  PUSH.W          {R8-R11}
71D28:  SUB             SP, SP, #0xB4
71D2A:  LDR             R6, =(aSampOrig - 0x71D36); "SAMP_ORIG" ...
71D2C:  MOV             R10, R0
71D2E:  LDR             R2, =(aImguiwrapperIn - 0x71D38); "ImGuiWrapper::initialize" ...
71D30:  LDR             R0, =(__stack_chk_guard_ptr - 0x71D3A)
71D32:  ADD             R6, PC; "SAMP_ORIG"
71D34:  ADD             R2, PC; "ImGuiWrapper::initialize"
71D36:  ADD             R0, PC; __stack_chk_guard_ptr
71D38:  MOV             R1, R6; tag
71D3A:  LDR             R0, [R0]; __stack_chk_guard
71D3C:  LDR             R0, [R0]
71D3E:  STR             R0, [SP,#0xD0+var_20]
71D40:  MOVS            R0, #4; prio
71D42:  BLX             __android_log_print
71D46:  LDR             R0, =(a171 - 0x71D52); "1.71" ...
71D48:  MOVS            R1, #2
71D4A:  MOVS            R2, #0x14
71D4C:  MOVS            R3, #0x10
71D4E:  ADD             R0, PC; "1.71"
71D50:  STRD.W          R3, R2, [SP,#0xD0+var_D0]
71D54:  STR             R1, [SP,#0xD0+var_C8]
71D56:  MOVW            R1, #0x1510
71D5A:  MOV.W           R2, #0x3AC
71D5E:  MOVS            R3, #8
71D60:  BL              sub_8BC10
71D64:  MOVS            R0, #0
71D66:  BL              sub_8BC64
71D6A:  BL              sub_8C514
71D6E:  MOV             R11, R0
71D70:  LDRD.W          R0, R1, [R10,#4]
71D74:  STRD.W          R0, R1, [R11,#8]
71D78:  MOV.W           R0, #0x3F800000
71D7C:  STRD.W          R0, R0, [R11,#0x9C]
71D80:  MOV             R1, R6; tag
71D82:  LDRB.W          R0, [R10,#0xC]
71D86:  ADD.W           R8, R10, #0xD
71D8A:  LDR.W           R3, [R10,#0x14]
71D8E:  LDR             R2, =(aLoadingFontS - 0x71D9A); "Loading font: %s" ...
71D90:  LSLS            R0, R0, #0x1F
71D92:  IT EQ
71D94:  MOVEQ           R3, R8
71D96:  ADD             R2, PC; "Loading font: %s"
71D98:  MOVS            R0, #4; prio
71D9A:  BLX             __android_log_print
71D9E:  ADD             R0, SP, #0xD0+var_A0
71DA0:  BL              sub_72050
71DA4:  LDR.W           R0, [R11,#0x8C]
71DA8:  BL              sub_9EA24
71DAC:  MOV             R1, R0
71DAE:  ADD             R0, SP, #0xD0+var_A0
71DB0:  BL              sub_A3434
71DB4:  LDR.W           R0, [R11,#0x8C]
71DB8:  BL              sub_A3428
71DBC:  MOV             R1, R0
71DBE:  ADD             R0, SP, #0xD0+var_A0
71DC0:  BL              sub_A3434
71DC4:  LDR.W           R0, [R11,#0x8C]
71DC8:  BL              sub_A33C4
71DCC:  MOV             R1, R0
71DCE:  ADD             R0, SP, #0xD0+var_A0
71DD0:  BL              sub_A3434
71DD4:  LDR.W           R0, [R11,#0x8C]
71DD8:  BL              sub_A33D0
71DDC:  MOV             R1, R0
71DDE:  ADD             R0, SP, #0xD0+var_A0
71DE0:  BL              sub_A3434
71DE4:  LDR.W           R0, [R11,#0x8C]
71DE8:  BL              sub_A33B8
71DEC:  MOV             R1, R0
71DEE:  ADD             R0, SP, #0xD0+var_A0
71DF0:  BL              sub_A3434
71DF4:  MOVS            R0, #0xC; unsigned int
71DF6:  BLX             j__Znwj; operator new(uint)
71DFA:  MOV             R9, R0
71DFC:  MOVS            R0, #0
71DFE:  STRD.W          R0, R0, [R9]
71E02:  STR.W           R0, [R9,#8]
71E06:  ADD             R0, SP, #0xD0+var_A0
71E08:  MOV             R1, R9
71E0A:  BL              sub_A347E
71E0E:  ADD             R0, SP, #0xD0+var_94
71E10:  BL              sub_9E662
71E14:  LDR             R2, =(off_114C1C - 0x71E1C)
71E16:  LDR             R3, =(off_114C24 - 0x71E22)
71E18:  ADD             R2, PC; off_114C1C
71E1A:  LDR.W           R0, [R11,#0x8C]
71E1E:  ADD             R3, PC; off_114C24
71E20:  LDR.W           R1, [R10,#0x14]
71E24:  LDRB.W          R5, [R10,#0xC]
71E28:  LDR             R6, [R3]; dword_116D58
71E2A:  LDR             R3, [R2]; dword_116D5C
71E2C:  MOV.W           R2, #0x3FC00000
71E30:  STR             R2, [SP,#0xD0+var_50]
71E32:  STR             R6, [SP,#0xD0+var_C0]
71E34:  LDR             R2, [R6]
71E36:  MOVS            R6, #1
71E38:  LDR             R3, [R3]
71E3A:  LDR.W           R4, [R9,#8]
71E3E:  STRD.W          R6, R6, [SP,#0xD0+var_80]
71E42:  STRB.W          R6, [SP,#0xD0+var_78]
71E46:  STR             R3, [SP,#0xD0+var_74]
71E48:  LSLS            R3, R5, #0x1F
71E4A:  STR             R4, [SP,#0xD0+var_D0]
71E4C:  ADD             R3, SP, #0xD0+var_94
71E4E:  IT EQ
71E50:  MOVEQ           R1, R8
71E52:  BL              sub_9EB08
71E56:  MOV             R5, R0
71E58:  CBZ             R0, loc_71E96
71E5A:  LDR             R0, =(off_114AA8 - 0x71E6A)
71E5C:  MOVW            R1, #0x687C
71E60:  MOV             R6, R10
71E62:  MOVT            R1, #0x6D ; 'm'
71E66:  ADD             R0, PC; off_114AA8
71E68:  LDR             R0, [R0]; dword_1A4404
71E6A:  LDR             R0, [R0]
71E6C:  ADD.W           R10, R0, R1
71E70:  MOV             R0, R10; s
71E72:  BLX             strlen
71E76:  CMN.W           R0, #0x10
71E7A:  BCS.W           loc_71FCE
71E7E:  MOV             R4, R0
71E80:  CMP             R0, #0xB
71E82:  STR             R5, [SP,#0xD0+var_C4]
71E84:  BCS             loc_71EB6
71E86:  LSLS            R0, R4, #1
71E88:  STRB.W          R0, [SP,#0xD0+var_BC]
71E8C:  ADD             R0, SP, #0xD0+var_BC
71E8E:  ADD.W           R5, R0, #1
71E92:  CBNZ            R4, loc_71ED0
71E94:  B               loc_71EDA
71E96:  LDRB.W          R0, [R10,#0xC]
71E9A:  LDR.W           R3, [R10,#0x14]
71E9E:  LDR             R1, =(aSampOrig - 0x71EA8); "SAMP_ORIG" ...
71EA0:  LDR             R2, =(aFailedToLoadFo - 0x71EAE); "Failed to load font %s" ...
71EA2:  LSLS            R0, R0, #0x1F
71EA4:  ADD             R1, PC; "SAMP_ORIG"
71EA6:  IT EQ
71EA8:  MOVEQ           R3, R8
71EAA:  ADD             R2, PC; "Failed to load font %s"
71EAC:  MOVS            R0, #6; prio
71EAE:  BLX             __android_log_print
71EB2:  MOVS            R5, #0
71EB4:  B               loc_71FAA
71EB6:  ADD.W           R0, R4, #0x10
71EBA:  BIC.W           R8, R0, #0xF
71EBE:  MOV             R0, R8; unsigned int
71EC0:  BLX             j__Znwj; operator new(uint)
71EC4:  MOV             R5, R0
71EC6:  ORR.W           R0, R8, #1
71ECA:  STR             R4, [SP,#0xD0+var_B8]
71ECC:  STR             R0, [SP,#0xD0+var_BC]
71ECE:  STR             R5, [SP,#0xD0+var_B4]
71ED0:  MOV             R0, R5; dest
71ED2:  MOV             R1, R10; src
71ED4:  MOV             R2, R4; n
71ED6:  BLX             j_memcpy
71EDA:  LDR             R1, =(aFontsGtaweap3T - 0x71EE8); "fonts/gtaweap3.ttf" ...
71EDC:  MOV.W           R8, #0
71EE0:  STRB.W          R8, [R5,R4]
71EE4:  ADD             R1, PC; "fonts/gtaweap3.ttf"
71EE6:  ADD             R0, SP, #0xD0+var_BC; int
71EE8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
71EEC:  VLDR            D16, [R0]
71EF0:  MOV             R10, R6
71EF2:  LDR             R1, [R0,#8]
71EF4:  STR             R1, [SP,#0xD0+var_A8]
71EF6:  VSTR            D16, [SP,#0xD0+var_B0]
71EFA:  STRD.W          R8, R8, [R0]
71EFE:  STR.W           R8, [R0,#8]
71F02:  LDRB.W          R0, [SP,#0xD0+var_BC]
71F06:  LSLS            R0, R0, #0x1F
71F08:  ITT NE
71F0A:  LDRNE           R0, [SP,#0xD0+var_B4]; void *
71F0C:  BLXNE           j__ZdlPv; operator delete(void *)
71F10:  ADD             R2, SP, #0xD0+var_B0
71F12:  LDR             R1, [SP,#0xD0+var_A8]
71F14:  ADDS            R4, R2, #1
71F16:  LDR             R2, [SP,#0xD0+var_C0]
71F18:  LDR.W           R0, [R11,#0x8C]
71F1C:  LDRB.W          R3, [SP,#0xD0+var_B0]
71F20:  LDR.W           R6, [R9,#8]
71F24:  LDR             R2, [R2]
71F26:  LSLS            R3, R3, #0x1F
71F28:  STR             R6, [SP,#0xD0+var_D0]
71F2A:  ADD             R3, SP, #0xD0+var_94
71F2C:  IT EQ
71F2E:  MOVEQ           R1, R4
71F30:  BL              sub_9EB08
71F34:  MOV             R5, R0
71F36:  STR.W           R0, [R10,#0x18]
71F3A:  CBZ             R0, loc_71F7C
71F3C:  MOV             R0, R10
71F3E:  BL              sub_720A0
71F42:  MOVS            R0, #0xC; unsigned int
71F44:  BLX             j__Znwj; operator new(uint)
71F48:  MOV             R8, R0
71F4A:  BL              sub_8C550
71F4E:  MOV             R1, R0
71F50:  LDR             R2, [SP,#0xD0+var_C4]
71F52:  MOV             R0, R8
71F54:  BL              sub_7153C
71F58:  LDR             R0, =(off_114C28 - 0x71F62)
71F5A:  STR.W           R8, [R10,#0x1C]
71F5E:  ADD             R0, PC; off_114C28
71F60:  LDR             R0, [R0]; dword_1ABE64
71F62:  LDRD.W          R6, R4, [R0]
71F66:  B               loc_71F6A
71F68:  ADDS            R6, #0x18
71F6A:  CMP             R6, R4
71F6C:  BEQ             loc_71F96
71F6E:  LDR             R0, [R6,#0x10]
71F70:  CMP             R0, #0
71F72:  BEQ             loc_71F68
71F74:  LDR             R1, [R0]
71F76:  LDR             R1, [R1,#0x18]
71F78:  BLX             R1
71F7A:  B               loc_71F68
71F7C:  LDRB.W          R0, [SP,#0xD0+var_B0]
71F80:  LDR             R3, [SP,#0xD0+var_A8]
71F82:  LDR             R1, =(aSampOrig - 0x71F8C); "SAMP_ORIG" ...
71F84:  LDR             R2, =(aFailedToLoadFo - 0x71F92); "Failed to load font %s" ...
71F86:  LSLS            R0, R0, #0x1F
71F88:  ADD             R1, PC; "SAMP_ORIG"
71F8A:  IT EQ
71F8C:  MOVEQ           R3, R4
71F8E:  ADD             R2, PC; "Failed to load font %s"
71F90:  MOVS            R0, #6; prio
71F92:  BLX             __android_log_print
71F96:  LDRB.W          R0, [SP,#0xD0+var_B0]
71F9A:  CMP             R5, #0
71F9C:  IT NE
71F9E:  MOVNE           R5, #1
71FA0:  LSLS            R0, R0, #0x1F
71FA2:  BEQ             loc_71FAA
71FA4:  LDR             R0, [SP,#0xD0+var_A8]; void *
71FA6:  BLX             j__ZdlPv; operator delete(void *)
71FAA:  LDR             R0, [SP,#0xD0+var_98]
71FAC:  CBZ             R0, loc_71FB2
71FAE:  BL              sub_88614
71FB2:  LDR             R0, [SP,#0xD0+var_20]
71FB4:  LDR             R1, =(__stack_chk_guard_ptr - 0x71FBA)
71FB6:  ADD             R1, PC; __stack_chk_guard_ptr
71FB8:  LDR             R1, [R1]; __stack_chk_guard
71FBA:  LDR             R1, [R1]
71FBC:  CMP             R1, R0
71FBE:  ITTTT EQ
71FC0:  MOVEQ           R0, R5
71FC2:  ADDEQ           SP, SP, #0xB4
71FC4:  POPEQ.W         {R8-R11}
71FC8:  POPEQ           {R4-R7,PC}
71FCA:  BLX             __stack_chk_fail
71FCE:  ADD             R0, SP, #0xD0+var_BC
71FD0:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
