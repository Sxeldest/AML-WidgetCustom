; =========================================================
; Game Engine Function: sub_12CEBC
; Address            : 0x12CEBC - 0x12CF82
; =========================================================

12CEBC:  PUSH            {R4-R7,LR}
12CEBE:  ADD             R7, SP, #0xC
12CEC0:  PUSH.W          {R11}
12CEC4:  VPUSH           {D8}
12CEC8:  SUB             SP, SP, #0x10
12CECA:  MOV             R2, R0
12CECC:  LDR             R0, =(off_234A24 - 0x12CED2)
12CECE:  ADD             R0, PC; off_234A24
12CED0:  LDR             R0, [R0]; dword_23DEEC
12CED2:  LDR             R0, [R0]
12CED4:  CMP             R0, #0
12CED6:  BEQ             loc_12CF76
12CED8:  LDR             R4, [R0,#0x60]
12CEDA:  CBZ             R1, loc_12CF12
12CEDC:  ADD             R0, SP, #0x28+var_24; int
12CEDE:  MOV             R1, R2; s
12CEE0:  BL              sub_DC6DC
12CEE4:  ADD             R0, SP, #0x28+var_24
12CEE6:  MOVS            R1, #0
12CEE8:  MOVS            R2, #0xA
12CEEA:  BLX             j__ZNSt6__ndk14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPji; std::stoi(std::string const&,uint *,int)
12CEEE:  MOV             R5, R0
12CEF0:  LDRB.W          R0, [SP,#0x28+var_24]
12CEF4:  LSLS            R0, R0, #0x1F
12CEF6:  ITT NE
12CEF8:  LDRNE           R0, [SP,#0x28+var_1C]; void *
12CEFA:  BLXNE           j__ZdlPv; operator delete(void *)
12CEFE:  SUB.W           R0, R5, #0x15
12CF02:  CMN.W           R0, #0x10
12CF06:  BCS             loc_12CF28
12CF08:  LDR             R1, =(unk_847AC - 0x12CF12)
12CF0A:  ADD             R0, SP, #0x28+var_24
12CF0C:  MOVS            R2, #0x53 ; 'S'
12CF0E:  ADD             R1, PC; unk_847AC
12CF10:  B               loc_12CF1A
12CF12:  LDR             R1, =(unk_90188 - 0x12CF1C)
12CF14:  ADD             R0, SP, #0x28+var_24; int
12CF16:  MOVS            R2, #0x30 ; '0'
12CF18:  ADD             R1, PC; unk_90188 ; s
12CF1A:  BL              sub_F1E90
12CF1E:  LDR             R1, [SP,#0x28+var_24]
12CF20:  MOV             R0, R4
12CF22:  BL              sub_12D5E8
12CF26:  B               loc_12CF76
12CF28:  MOV             R0, R5
12CF2A:  BL              sub_E4F34
12CF2E:  LDR             R0, =(off_234BBC - 0x12CF38)
12CF30:  ADDW            R1, R4, #0x8DC
12CF34:  ADD             R0, PC; off_234BBC
12CF36:  VLDR            S16, [R1]
12CF3A:  LDR             R0, [R0]; dword_238F10
12CF3C:  LDR             R6, [R0]
12CF3E:  BL              sub_E4F28
12CF42:  VMOV            S0, R0
12CF46:  LDR             R1, =(unk_8C2CA - 0x12CF54)
12CF48:  ADD             R0, SP, #0x28+var_24; int
12CF4A:  MOVS            R2, #0x3B ; ';'
12CF4C:  VCVT.F32.U32    S0, S0
12CF50:  ADD             R1, PC; unk_8C2CA ; s
12CF52:  STR             R6, [R4,#0x24]
12CF54:  STR             R6, [R4,#0x1C]
12CF56:  STR             R6, [R4,#0x14]
12CF58:  VMUL.F32        S0, S16, S0
12CF5C:  VSTR            S0, [R4,#0x28]
12CF60:  VSTR            S0, [R4,#0x20]
12CF64:  VSTR            S0, [R4,#0x18]
12CF68:  BL              sub_F1E90
12CF6C:  LDR             R1, [SP,#0x28+var_24]
12CF6E:  MOV             R0, R4
12CF70:  MOV             R2, R5
12CF72:  BL              sub_12D5E8
12CF76:  ADD             SP, SP, #0x10
12CF78:  VPOP            {D8}
12CF7C:  POP.W           {R11}
12CF80:  POP             {R4-R7,PC}
