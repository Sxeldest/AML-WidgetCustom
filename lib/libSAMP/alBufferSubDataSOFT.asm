; =========================================================
; Game Engine Function: alBufferSubDataSOFT
; Address            : 0x1CED90 - 0x1CF088
; =========================================================

1CED90:  PUSH            {R4-R11,LR}
1CED94:  ADD             R11, SP, #0x1C
1CED98:  SUB             SP, SP, #0x1C
1CED9C:  MOV             R10, R3
1CEDA0:  MOV             R8, R2
1CEDA4:  MOV             R6, R1
1CEDA8:  MOV             R5, R0
1CEDAC:  LDR             R7, [R11,#arg_0]
1CEDB0:  BL              j_GetContextRef
1CEDB4:  MOV             R4, R0
1CEDB8:  CMP             R4, #0
1CEDBC:  BEQ             loc_1CEE08
1CEDC0:  LDR             R0, [R4,#0xFC]
1CEDC4:  MOV             R1, R5
1CEDC8:  ADD             R0, R0, #0x3C ; '<'
1CEDCC:  BL              j_LookupUIntMapKey
1CEDD0:  MOV             R9, R0
1CEDD4:  CMP             R9, #0
1CEDD8:  BEQ             loc_1CEE10
1CEDDC:  ORR             R0, R7, R10
1CEDE0:  CMP             R0, #0
1CEDE4:  BLT             loc_1CEDF8
1CEDE8:  CMP             R8, #0
1CEDEC:  BNE             loc_1CEE20
1CEDF0:  CMP             R7, #0
1CEDF4:  BLE             loc_1CEE20
1CEDF8:  MOV             R0, R4
1CEDFC:  MOVW            R1, #0xA003
1CEE00:  BL              j_alSetError
1CEE04:  B               loc_1CEF44
1CEE08:  SUB             SP, R11, #0x1C
1CEE0C:  POP             {R4-R11,PC}
1CEE10:  MOV             R0, R4
1CEE14:  MOVW            R1, #0xA001
1CEE18:  BL              j_alSetError
1CEE1C:  B               loc_1CEF44
1CEE20:  LDR             R0, =(dword_C4E14 - 0x1CEE30)
1CEE24:  MOV             R1, #0
1CEE28:  ADD             R0, PC, R0; dword_C4E14
1CEE2C:  ADD             R0, R0, #4
1CEE30:  LDR             R2, [R0,#-4]
1CEE34:  CMP             R2, R6
1CEE38:  BEQ             loc_1CEE5C
1CEE3C:  ADD             R1, R1, #1
1CEE40:  ADD             R0, R0, #0xC
1CEE44:  CMP             R1, #0x24 ; '$'
1CEE48:  BCC             loc_1CEE30
1CEE4C:  MOV             R0, R4
1CEE50:  MOVW            R1, #0xA002
1CEE54:  BL              j_alSetError
1CEE58:  B               loc_1CEF44
1CEE5C:  LDR             R6, [R0]
1CEE60:  LDR             R0, [R0,#4]
1CEE64:  STR             R0, [SP,#0x38+var_24]
1CEE68:  ADD             R0, R9, #0x30 ; '0'
1CEE6C:  STR             R0, [SP,#0x38+var_20]
1CEE70:  BL              j_WriteLock
1CEE74:  LDR             R1, [R9,#0x18]
1CEE78:  MOVW            R3, #0x140C
1CEE7C:  LDR             R0, [R9,#0x1C]
1CEE80:  SUB             R2, R1, #0x1500
1CEE84:  CMP             R0, R3
1CEE88:  BNE             loc_1CEEA4
1CEE8C:  CMP             R2, #7
1CEE90:  MOV             R5, #0
1CEE94:  LDRCC           R3, =(unk_C50E0 - 0x1CEEA0)
1CEE98:  ADDCC           R3, PC, R3; unk_C50E0
1CEE9C:  LDRCC           R5, [R3,R2,LSL#2]
1CEEA0:  B               loc_1CEED4
1CEEA4:  CMP             R2, #6
1CEEA8:  MOV             R5, #0
1CEEAC:  LDRLS           R5, =(unk_C5130 - 0x1CEEBC)
1CEEB0:  MOV             R3, #0
1CEEB4:  ADDLS           R5, PC, R5; unk_C5130
1CEEB8:  LDRLS           R5, [R5,R2,LSL#2]
1CEEBC:  SUB             R2, R0, #0x1400
1CEEC0:  CMP             R2, #0xB
1CEEC4:  LDRLS           R3, =(unk_C5100 - 0x1CEED0)
1CEEC8:  ADDLS           R3, PC, R3; unk_C5100
1CEECC:  LDRLS           R3, [R3,R2,LSL#2]
1CEED0:  MUL             R5, R3, R5
1CEED4:  CMP             R6, R1
1CEED8:  LDREQ           R1, [SP,#0x38+var_24]
1CEEDC:  CMPEQ           R1, R0
1CEEE0:  BEQ             loc_1CEEF0
1CEEE4:  MOV             R0, R4
1CEEE8:  MOVW            R1, #0xA002
1CEEEC:  B               loc_1CEF34
1CEEF0:  LDR             R0, [R9,#0x20]
1CEEF4:  CMP             R0, R10
1CEEF8:  SUBGE           R0, R0, R10
1CEEFC:  CMPGE           R0, R7
1CEF00:  BLT             loc_1CEF2C
1CEF04:  MOV             R0, R10
1CEF08:  MOV             R1, R5
1CEF0C:  BL              sub_221798
1CEF10:  CMP             R1, #0
1CEF14:  BNE             loc_1CEF2C
1CEF18:  MOV             R0, R7
1CEF1C:  MOV             R1, R5
1CEF20:  BL              sub_221798
1CEF24:  CMP             R1, #0
1CEF28:  BEQ             loc_1CEF54
1CEF2C:  MOV             R0, R4
1CEF30:  MOVW            R1, #0xA003
1CEF34:  BL              j_alSetError
1CEF38:  LDR             R5, [SP,#0x38+var_20]
1CEF3C:  MOV             R0, R5
1CEF40:  BL              j_WriteUnlock
1CEF44:  MOV             R0, R4
1CEF48:  SUB             SP, R11, #0x1C
1CEF4C:  POP             {R4-R11,LR}
1CEF50:  B               j_ALCcontext_DecRef
1CEF54:  LDR             R0, [R9,#0x10]
1CEF58:  MOV             R6, #0
1CEF5C:  MOV             R2, #0
1CEF60:  SUB             R0, R0, #0x1500
1CEF64:  CMP             R0, #6
1CEF68:  LDRLS           R1, =(unk_C5130 - 0x1CEF74)
1CEF6C:  ADDLS           R1, PC, R1; unk_C5130
1CEF70:  LDRLS           R6, [R1,R0,LSL#2]
1CEF74:  LDR             R0, [R9,#0x14]
1CEF78:  STR             R0, [SP,#0x38+var_2C]
1CEF7C:  SUB             R0, R0, #0x1400
1CEF80:  CMP             R0, #6
1CEF84:  LDRLS           R1, =(unk_C5150 - 0x1CEF90)
1CEF88:  ADDLS           R1, PC, R1; unk_C5150
1CEF8C:  LDRLS           R2, [R1,R0,LSL#2]
1CEF90:  LDR             R0, [SP,#0x38+var_24]
1CEF94:  STR             R2, [SP,#0x38+var_28]
1CEF98:  SUB             R0, R0, #0x1400; switch 13 cases
1CEF9C:  CMP             R0, #0xC
1CEFA0:  BHI             def_1CEFB4; jumptable 001CEFB4 default case
1CEFA4:  ADR             R2, jpt_1CEFB4
1CEFA8:  MOV             R0, R0,LSL#2
1CEFAC:  MOV             R1, #1
1CEFB0:  LDR             R0, [R0,R2]
1CEFB4:  ADD             PC, R0, R2; switch jump
1CEFB8:  DCD loc_1CF010 - 0x1CEFB8; jump table for switch statement
1CEFBC:  DCD loc_1CF010 - 0x1CEFB8; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CEFC0:  DCD loc_1CEFF4 - 0x1CEFB8; jumptable 001CEFB4 cases 5122,5123
1CEFC4:  DCD loc_1CEFF4 - 0x1CEFB8; jumptable 001CEFB4 cases 5122,5123
1CEFC8:  DCD loc_1CEFEC - 0x1CEFB8; jumptable 001CEFB4 cases 5124-5126
1CEFCC:  DCD loc_1CEFEC - 0x1CEFB8; jumptable 001CEFB4 cases 5124-5126
1CEFD0:  DCD loc_1CEFEC - 0x1CEFB8; jumptable 001CEFB4 cases 5124-5126
1CEFD4:  DCD loc_1CF00C - 0x1CEFB8; jumptable 001CEFB4 case 5127
1CEFD8:  DCD loc_1CEFFC - 0x1CEFB8; jumptable 001CEFB4 cases 5128,5129
1CEFDC:  DCD loc_1CEFFC - 0x1CEFB8; jumptable 001CEFB4 cases 5128,5129
1CEFE0:  DCD loc_1CF010 - 0x1CEFB8; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CEFE4:  DCD loc_1CF010 - 0x1CEFB8; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CEFE8:  DCD loc_1CF05C - 0x1CEFB8; jumptable 001CEFB4 case 5132
1CEFEC:  MOV             R1, #4; jumptable 001CEFB4 cases 5124-5126
1CEFF0:  B               loc_1CF010; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CEFF4:  MOV             R1, #2; jumptable 001CEFB4 cases 5122,5123
1CEFF8:  B               loc_1CF010; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CEFFC:  MOV             R1, #3; jumptable 001CEFB4 cases 5128,5129
1CF000:  B               loc_1CF010; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CF004:  MOV             R1, #0; jumptable 001CEFB4 default case
1CF008:  B               loc_1CF010; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CF00C:  MOV             R1, #8; jumptable 001CEFB4 case 5127
1CF010:  MOV             R0, R10; jumptable 001CEFB4 cases 5120,5121,5130,5131
1CF014:  MOV             R5, R1
1CF018:  BL              sub_220A6C
1CF01C:  MUL             R1, R5, R6
1CF020:  MOV             R10, R0
1CF024:  MOV             R0, R7
1CF028:  BL              sub_220A6C
1CF02C:  LDR             R2, [SP,#0x38+var_28]
1CF030:  LDR             R1, [R9]
1CF034:  LDR             R5, [SP,#0x38+var_20]
1CF038:  MLA             R1, R10, R2, R1
1CF03C:  STR             R6, [SP,#0x38+var_38]
1CF040:  STR             R0, [SP,#0x38+var_34]
1CF044:  LDR             R3, [SP,#0x38+var_24]
1CF048:  MOV             R2, R8
1CF04C:  MOV             R0, R1
1CF050:  LDR             R1, [SP,#0x38+var_2C]
1CF054:  BL              sub_1CF100
1CF058:  B               loc_1CEF3C
1CF05C:  MOV             R0, #0x38E38E39; jumptable 001CEFB4 case 5132
1CF064:  SMMUL           R0, R10, R0
1CF068:  MOV             R1, R0,ASR#3
1CF06C:  ADD             R0, R1, R0,LSR#31
1CF070:  MOV             R1, R5
1CF074:  ADD             R10, R0, R0,LSL#6
1CF078:  MOV             R0, R7
1CF07C:  BL              sub_220A6C
1CF080:  ADD             R0, R0, R0,LSL#6
1CF084:  B               loc_1CF02C
