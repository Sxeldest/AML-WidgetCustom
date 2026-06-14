; =========================================================
; Game Engine Function: sub_152CF8
; Address            : 0x152CF8 - 0x152E34
; =========================================================

152CF8:  PUSH            {R4-R7,LR}
152CFA:  ADD             R7, SP, #0xC
152CFC:  PUSH.W          {R8-R11}
152D00:  SUB             SP, SP, #4
152D02:  VPUSH           {D8}
152D06:  SUB.W           SP, SP, #0x2D00
152D0A:  SUB             SP, SP, #0x30
152D0C:  LDR             R5, [R7,#arg_4]
152D0E:  MOV             R9, R3
152D10:  MOV             R6, R2
152D12:  MOV             R11, R1
152D14:  MOV             R10, R0
152D16:  STRH.W          R1, [R7,#var_3E]
152D1A:  STRH.W          R2, [R7,#var_40]
152D1E:  CBNZ            R5, loc_152D38
152D20:  BL              sub_15E55C
152D24:  CMP             R0, R11
152D26:  BNE             loc_152D38
152D28:  ADD             R0, SP, #0x2D58+var_2D40; this
152D2A:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152D2E:  LDRD.W          R0, R1, [SP,#0x2D58+var_2D40]
152D32:  STRD.W          R0, R1, [R10,#0x40]
152D36:  B               loc_152E22
152D38:  MOV             R0, R11
152D3A:  BL              sub_15E580
152D3E:  CMP             R0, #0
152D40:  BEQ             loc_152E22
152D42:  MOV             R0, R10
152D44:  MOV             R1, R11
152D46:  BL              sub_1525EC
152D4A:  MOV             R4, R0
152D4C:  LDR             R2, [R7,#arg_0]
152D4E:  ADD             R0, SP, #0x2D58+var_2D40
152D50:  STR             R0, [SP,#0x2D58+var_2D58]
152D52:  MOV             R0, R4
152D54:  MOV             R1, R6
152D56:  MOV             R3, R5
152D58:  BL              sub_15A3E8
152D5C:  CMP             R0, #0
152D5E:  STR             R0, [SP,#0x2D58+var_2D44]
152D60:  BEQ             loc_152E22
152D62:  LDRD.W          R8, R9, [R9]
152D66:  CMP             R8, R9
152D68:  BEQ             loc_152E22
152D6A:  ADD.W           R0, R4, #0x20 ; ' '
152D6E:  STR             R0, [SP,#0x2D58+var_2D48]
152D70:  LDR             R0, =(byte_8F794 - 0x152D82)
152D72:  ADD.W           R6, R10, #0xC
152D76:  SUB.W           R10, R7, #-var_34
152D7A:  VLDR            S16, =1.15
152D7E:  ADD             R0, PC; byte_8F794
152D80:  STR             R0, [SP,#0x2D58+var_2D4C]
152D82:  LDRH.W          R0, [R8]
152D86:  STRH.W          R0, [R7,#var_34]
152D8A:  CMP             R0, #0
152D8C:  BEQ             loc_152E1A
152D8E:  MOV             R0, R6
152D90:  MOV             R1, R10
152D92:  BL              sub_15426C
152D96:  CMP             R0, #0
152D98:  BEQ             loc_152E1A
152D9A:  LDR             R5, [R0,#0xC]
152D9C:  CBZ             R5, loc_152E1A
152D9E:  LDR             R0, [R5]
152DA0:  LDR             R1, [R0,#8]
152DA2:  MOV             R0, R5
152DA4:  BLX             R1
152DA6:  CMP             R0, #0
152DA8:  LDR             R0, [SP,#0x2D58+var_2D48]
152DAA:  BNE             loc_152E02
152DAC:  MOV             R4, R5
152DAE:  LDRB.W          R0, [R4,#0x38]!
152DB2:  LDR             R1, [R4,#4]
152DB4:  LSLS            R2, R0, #0x1F
152DB6:  IT EQ
152DB8:  LSREQ           R1, R0, #1
152DBA:  CBNZ            R1, loc_152DD4
152DBC:  LDR             R3, [SP,#0x2D58+var_2D4C]
152DBE:  MOVS            R0, #0
152DC0:  STR             R0, [SP,#0x2D58+var_2D58]
152DC2:  MOV             R0, R4
152DC4:  MOVS            R1, #0
152DC6:  MOV.W           R2, #0xFFFFFFFF
152DCA:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
152DCE:  CMP             R0, #0
152DD0:  LDR             R0, [SP,#0x2D58+var_2D48]
152DD2:  BEQ             loc_152E02
152DD4:  LDR             R0, =(off_234A54 - 0x152DDA)
152DD6:  ADD             R0, PC; off_234A54
152DD8:  LDR             R0, [R0]; dword_381A0C
152DDA:  LDR             R0, [R0]
152DDC:  LDR             R3, =(unk_B998D - 0x152DE6)
152DDE:  STR.W           R4, [R7,#var_38]
152DE2:  ADD             R3, PC; unk_B998D
152DE4:  SUB.W           R1, R7, #-var_38
152DE8:  STR             R1, [SP,#0x2D58+var_2D58]; float
152DEA:  SUB.W           R1, R7, #-var_3C
152DEE:  STR             R1, [SP,#0x2D58+var_2D54]
152DF0:  ADD.W           R1, R0, #0x88
152DF4:  MOV             R0, R10
152DF6:  MOV             R2, R4
152DF8:  BL              sub_138B9C
152DFC:  LDR.W           R0, [R7,#var_34]
152E00:  ADDS            R0, #0x20 ; ' '
152E02:  VLDR            S0, [R0]
152E06:  VMUL.F32        S0, S0, S16
152E0A:  LDR             R3, [SP,#0x2D58+var_2D44]; int
152E0C:  ADD             R2, SP, #0x2D58+var_2D40; int
152E0E:  MOV             R0, R5; int
152E10:  MOV             R1, R11; int
152E12:  VSTR            S0, [SP,#0x2D58+var_2D58]
152E16:  BL              sub_1508FC
152E1A:  ADD.W           R8, R8, #2
152E1E:  CMP             R8, R9
152E20:  BNE             loc_152D82
152E22:  ADD.W           SP, SP, #0x2D00
152E26:  ADD             SP, SP, #0x30 ; '0'
152E28:  VPOP            {D8}
152E2C:  ADD             SP, SP, #4
152E2E:  POP.W           {R8-R11}
152E32:  POP             {R4-R7,PC}
