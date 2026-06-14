; =========================================================
; Game Engine Function: _ZN9CMessages14ClearThisPrintEPt
; Address            : 0x54CD38 - 0x54D0F4
; =========================================================

54CD38:  PUSH            {R4-R7,LR}
54CD3A:  ADD             R7, SP, #0xC
54CD3C:  PUSH.W          {R8-R11}
54CD40:  SUB             SP, SP, #0x4C
54CD42:  MOV             R8, R0
54CD44:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD4E)
54CD46:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54CD50)
54CD4A:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD4C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54CD4E:  LDR.W           R9, [R0]; CMessages::BriefMessages ...
54CD52:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD5C)
54CD54:  LDR.W           R10, [R1]; CTimer::m_snTimeInMilliseconds ...
54CD58:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD5A:  STR.W           R10, [SP,#0x68+var_30]
54CD5E:  LDR.W           R12, [R0]; CMessages::BriefMessages ...
54CD62:  LDR.W           R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD6A)
54CD66:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD68:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD6A:  STR             R0, [SP,#0x68+var_24]
54CD6C:  LDR.W           R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD74)
54CD70:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD72:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD74:  STR             R0, [SP,#0x68+var_34]
54CD76:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD7C)
54CD78:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD7A:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD7C:  STR             R0, [SP,#0x68+var_2C]
54CD7E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD84)
54CD80:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD82:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD84:  STR             R0, [SP,#0x68+var_3C]
54CD86:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD8C)
54CD88:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD8A:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD8C:  STR             R0, [SP,#0x68+var_40]
54CD8E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD94)
54CD90:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD92:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD94:  STR             R0, [SP,#0x68+var_44]
54CD96:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CD9C)
54CD98:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CD9A:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CD9C:  STR             R0, [SP,#0x68+var_48]
54CD9E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CDA4)
54CDA0:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CDA2:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CDA4:  STR             R0, [SP,#0x68+var_4C]
54CDA6:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CDAC)
54CDA8:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CDAA:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CDAC:  STR             R0, [SP,#0x68+var_50]
54CDAE:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CDB4)
54CDB0:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CDB2:  LDR.W           LR, [R0]; CMessages::BriefMessages ...
54CDB6:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CDC0)
54CDB8:  STR.W           LR, [SP,#0x68+var_38]
54CDBC:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CDBE:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CDC0:  STR             R0, [SP,#0x68+var_28]
54CDC2:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CDC8)
54CDC4:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CDC6:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CDC8:  STR             R0, [SP,#0x68+var_20]
54CDCA:  MOVS            R0, #0
54CDCC:  MOVS            R1, #0
54CDCE:  MOV.W           R11, #0
54CDD2:  LSLS            R2, R1, #0x18
54CDD4:  BNE             loc_54CE24
54CDD6:  RSB.W           R2, R0, R0,LSL#3
54CDDA:  ADD.W           R2, R9, R2,LSL#3
54CDDE:  LDR             R2, [R2,#8]
54CDE0:  CBZ             R2, loc_54CE24
54CDE2:  LDRH.W          R5, [R8]
54CDE6:  MOVS            R1, #0
54CDE8:  MOV             R3, R8
54CDEA:  B               loc_54CDFE
54CDEC:  LDRH            R1, [R2]
54CDEE:  MOVS            R5, #0
54CDF0:  CMP             R1, #0
54CDF2:  MOV.W           R1, #0
54CDF6:  ITT EQ
54CDF8:  MOVEQ           R1, #1
54CDFA:  MOVEQ.W         R11, #1
54CDFE:  LSLS            R6, R1, #0x18
54CE00:  ITTT EQ
54CE02:  LDRHEQ          R4, [R2]
54CE04:  UXTHEQ          R5, R5
54CE06:  CMPEQ           R4, R5
54CE08:  BNE             loc_54CE18
54CE0A:  LDRH.W          R5, [R3,#2]!
54CE0E:  ADDS            R2, #2
54CE10:  MOVS            R1, #0
54CE12:  CMP             R5, #0
54CE14:  BNE             loc_54CDFE
54CE16:  B               loc_54CDEC
54CE18:  CMP             R6, #0
54CE1A:  IT EQ
54CE1C:  ADDEQ           R0, #1
54CE1E:  SXTH            R0, R0
54CE20:  CMP             R0, #8
54CE22:  BLT             loc_54CDD2
54CE24:  LSLS            R1, R1, #0x18
54CE26:  BEQ.W           loc_54D0E4
54CE2A:  LSLS            R1, R0, #0x10
54CE2C:  BEQ             loc_54CEA4
54CE2E:  RSB.W           R1, R0, R0,LSL#3
54CE32:  MOVS            R2, #0
54CE34:  ADD.W           R1, LR, R1,LSL#3
54CE38:  STR             R2, [R1,#8]
54CE3A:  SXTH            R1, R0
54CE3C:  CMP             R1, #6
54CE3E:  BGT             loc_54CE8C
54CE40:  RSB.W           R2, R1, R1,LSL#3
54CE44:  LDR             R3, [SP,#0x68+var_28]
54CE46:  ADD.W           R2, R3, R2,LSL#3
54CE4A:  LDR             R3, [R2,#0x40]
54CE4C:  CBZ             R3, loc_54CE8C
54CE4E:  ADD.W           R3, R2, #0x58 ; 'X'
54CE52:  ADD.W           R6, R2, #0x48 ; 'H'
54CE56:  VLD1.32         {D16-D17}, [R3]
54CE5A:  ADD.W           R3, R2, #0x38 ; '8'
54CE5E:  ADDS            R0, #1
54CE60:  ADDS            R1, #1
54CE62:  VLD1.32         {D22-D23}, [R6]
54CE66:  ADD.W           R6, R2, #0x20 ; ' '
54CE6A:  SXTH            R0, R0
54CE6C:  CMP             R0, #7
54CE6E:  VLD1.32         {D18-D19}, [R3]
54CE72:  VLDR            D20, [R2,#0x68]
54CE76:  VSTR            D20, [R2,#0x30]
54CE7A:  VST1.32         {D16-D17}, [R6]
54CE7E:  VST1.32         {D18-D19}, [R2]!
54CE82:  VST1.32         {D22-D23}, [R2]
54CE86:  MOV             R2, R3
54CE88:  BLT             loc_54CE4A
54CE8A:  B               loc_54CE8E
54CE8C:  MOV             R0, R1
54CE8E:  RSB.W           R0, R0, R0,LSL#3
54CE92:  LDR             R1, [SP,#0x68+var_20]
54CE94:  ADD.W           R0, R1, R0,LSL#3
54CE98:  MOVS            R1, #0
54CE9A:  STR             R1, [R0,#8]
54CE9C:  MOVS.W          R0, R11,LSL#24
54CEA0:  BNE             loc_54CDCA
54CEA2:  B               loc_54D0EC
54CEA4:  LDR.W           R1, [R12,#(dword_A002C8 - 0xA00288)]
54CEA8:  MOVS            R0, #0
54CEAA:  STR.W           R0, [R12,#(dword_A00290 - 0xA00288)]
54CEAE:  CMP             R1, #0
54CEB0:  BEQ.W           loc_54D092
54CEB4:  LDR             R2, [SP,#0x68+var_2C]
54CEB6:  ADD.W           R0, R2, #0x58 ; 'X'
54CEBA:  ADD.W           R1, R2, #0x20 ; ' '
54CEBE:  VLD1.32         {D16-D17}, [R0]
54CEC2:  ADD.W           R0, R2, #0x38 ; '8'
54CEC6:  VLD1.32         {D18-D19}, [R0]
54CECA:  ADD.W           R0, R2, #0x48 ; 'H'
54CECE:  VLDR            D22, [R2,#0x68]
54CED2:  VLD1.32         {D20-D21}, [R0]
54CED6:  LDR             R0, [R2,#0x78]
54CED8:  VST1.32         {D16-D17}, [R1]
54CEDC:  MOV             R1, R2
54CEDE:  CMP             R0, #0
54CEE0:  VSTR            D22, [R2,#0x30]
54CEE4:  VST1.32         {D18-D19}, [R1]!
54CEE8:  VST1.32         {D20-D21}, [R1]
54CEEC:  BEQ.W           loc_54D07C
54CEF0:  LDR             R2, [SP,#0x68+var_3C]
54CEF2:  ADD.W           R0, R2, #0x90
54CEF6:  ADD.W           R1, R2, #0x58 ; 'X'
54CEFA:  VLD1.32         {D16-D17}, [R0]
54CEFE:  ADD.W           R0, R2, #0x80
54CF02:  VLD1.32         {D18-D19}, [R0]
54CF06:  ADD.W           R0, R2, #0x70 ; 'p'
54CF0A:  VLD1.32         {D20-D21}, [R0]
54CF0E:  LDR.W           R0, [R2,#0xB0]
54CF12:  VLDR            D22, [R2,#0xA0]
54CF16:  VST1.32         {D16-D17}, [R1]
54CF1A:  ADD.W           R1, R2, #0x48 ; 'H'
54CF1E:  CMP             R0, #0
54CF20:  VST1.32         {D18-D19}, [R1]
54CF24:  ADD.W           R1, R2, #0x38 ; '8'
54CF28:  VST1.32         {D20-D21}, [R1]
54CF2C:  VSTR            D22, [R2,#0x68]
54CF30:  BEQ.W           loc_54D080
54CF34:  LDR             R2, [SP,#0x68+var_40]
54CF36:  ADD.W           R0, R2, #0xC8
54CF3A:  ADD.W           R1, R2, #0x90
54CF3E:  VLD1.32         {D16-D17}, [R0]
54CF42:  ADD.W           R0, R2, #0xB8
54CF46:  VLD1.32         {D18-D19}, [R0]
54CF4A:  ADD.W           R0, R2, #0xA8
54CF4E:  VLD1.32         {D20-D21}, [R0]
54CF52:  LDR.W           R0, [R2,#0xE8]
54CF56:  VLDR            D22, [R2,#0xD8]
54CF5A:  VST1.32         {D16-D17}, [R1]
54CF5E:  ADD.W           R1, R2, #0x80
54CF62:  CMP             R0, #0
54CF64:  VST1.32         {D18-D19}, [R1]
54CF68:  ADD.W           R1, R2, #0x70 ; 'p'
54CF6C:  VST1.32         {D20-D21}, [R1]
54CF70:  VSTR            D22, [R2,#0xA0]
54CF74:  BEQ.W           loc_54D084
54CF78:  LDR             R2, [SP,#0x68+var_44]
54CF7A:  ADD.W           R0, R2, #0x100
54CF7E:  ADD.W           R1, R2, #0xC8
54CF82:  VLD1.32         {D16-D17}, [R0]
54CF86:  ADD.W           R0, R2, #0xF0
54CF8A:  VLD1.32         {D18-D19}, [R0]
54CF8E:  ADD.W           R0, R2, #0xE0
54CF92:  VLD1.32         {D20-D21}, [R0]
54CF96:  LDR.W           R0, [R2,#0x120]
54CF9A:  VLDR            D22, [R2,#0x110]
54CF9E:  VST1.32         {D16-D17}, [R1]
54CFA2:  ADD.W           R1, R2, #0xB8
54CFA6:  CMP             R0, #0
54CFA8:  VST1.32         {D18-D19}, [R1]
54CFAC:  ADD.W           R1, R2, #0xA8
54CFB0:  VST1.32         {D20-D21}, [R1]
54CFB4:  VSTR            D22, [R2,#0xD8]
54CFB8:  BEQ             loc_54D088
54CFBA:  LDR             R2, [SP,#0x68+var_48]
54CFBC:  ADD.W           R0, R2, #0x138
54CFC0:  ADD.W           R1, R2, #0x100
54CFC4:  VLD1.32         {D16-D17}, [R0]
54CFC8:  ADD.W           R0, R2, #0x128
54CFCC:  VLD1.32         {D18-D19}, [R0]
54CFD0:  ADD.W           R0, R2, #0x118
54CFD4:  VLD1.32         {D20-D21}, [R0]
54CFD8:  LDR.W           R0, [R2,#0x158]
54CFDC:  VLDR            D22, [R2,#0x148]
54CFE0:  VST1.32         {D16-D17}, [R1]
54CFE4:  ADD.W           R1, R2, #0xF0
54CFE8:  CMP             R0, #0
54CFEA:  VST1.32         {D18-D19}, [R1]
54CFEE:  ADD.W           R1, R2, #0xE0
54CFF2:  VST1.32         {D20-D21}, [R1]
54CFF6:  VSTR            D22, [R2,#0x110]
54CFFA:  BEQ             loc_54D08C
54CFFC:  LDR             R2, [SP,#0x68+var_4C]
54CFFE:  ADD.W           R0, R2, #0x170
54D002:  ADD.W           R1, R2, #0x138
54D006:  VLD1.32         {D16-D17}, [R0]
54D00A:  ADD.W           R0, R2, #0x160
54D00E:  VLD1.32         {D18-D19}, [R0]
54D012:  ADD.W           R0, R2, #0x150
54D016:  VLD1.32         {D20-D21}, [R0]
54D01A:  LDR.W           R0, [R2,#0x190]
54D01E:  VLDR            D22, [R2,#0x180]
54D022:  VST1.32         {D16-D17}, [R1]
54D026:  ADD.W           R1, R2, #0x128
54D02A:  CMP             R0, #0
54D02C:  VST1.32         {D18-D19}, [R1]
54D030:  ADD.W           R1, R2, #0x118
54D034:  VST1.32         {D20-D21}, [R1]
54D038:  VSTR            D22, [R2,#0x148]
54D03C:  BEQ             loc_54D090
54D03E:  LDR             R1, [SP,#0x68+var_50]
54D040:  ADD.W           R0, R1, #0x1A8
54D044:  VLD1.32         {D16-D17}, [R0]
54D048:  ADD.W           R0, R1, #0x198
54D04C:  VLD1.32         {D18-D19}, [R0]
54D050:  ADD.W           R0, R1, #0x188
54D054:  VLD1.32         {D20-D21}, [R0]
54D058:  ADD.W           R0, R1, #0x170
54D05C:  VLDR            D22, [R1,#0x1B8]
54D060:  VST1.32         {D16-D17}, [R0]
54D064:  ADD.W           R0, R1, #0x160
54D068:  VST1.32         {D18-D19}, [R0]
54D06C:  ADD.W           R0, R1, #0x150
54D070:  VST1.32         {D20-D21}, [R0]
54D074:  MOVS            R0, #7
54D076:  VSTR            D22, [R1,#0x180]
54D07A:  B               loc_54D092
54D07C:  MOVS            R0, #1
54D07E:  B               loc_54D092
54D080:  MOVS            R0, #2
54D082:  B               loc_54D092
54D084:  MOVS            R0, #3
54D086:  B               loc_54D092
54D088:  MOVS            R0, #4
54D08A:  B               loc_54D092
54D08C:  MOVS            R0, #5
54D08E:  B               loc_54D092
54D090:  MOVS            R0, #6
54D092:  RSB.W           R0, R0, R0,LSL#3
54D096:  LDR             R3, [SP,#0x68+var_24]
54D098:  MOVS            R1, #0
54D09A:  LDR.W           R2, [R10]; CTimer::m_snTimeInMilliseconds
54D09E:  ADD.W           R0, R3, R0,LSL#3
54D0A2:  STR             R1, [R0,#8]
54D0A4:  LDR             R1, [R3,#8]; char *
54D0A6:  LDRB.W          R0, [R3,#0x34]
54D0AA:  CMP             R1, #0
54D0AC:  STR             R2, [R3,#0x14]
54D0AE:  IT NE
54D0B0:  CMPNE           R0, #0
54D0B2:  BEQ             loc_54D0E4
54D0B4:  LDR             R0, [SP,#0x68+var_34]; this
54D0B6:  MOV             R10, R12
54D0B8:  ADD.W           LR, R0, #0x18
54D0BC:  LDM.W           LR, {R2,R3,LR}; int
54D0C0:  LDRD.W          R6, R5, [R0,#0x24]
54D0C4:  LDR             R4, [R0,#0x2C]
54D0C6:  LDR.W           R12, [R0,#0x30]
54D0CA:  STRD.W          LR, R6, [SP,#0x68+var_68]; int
54D0CE:  STRD.W          R5, R4, [SP,#0x68+var_60]; int
54D0D2:  STR.W           R12, [SP,#0x68+var_58]; int
54D0D6:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54D0DA:  MOV             R12, R10
54D0DC:  LDR.W           LR, [SP,#0x68+var_38]
54D0E0:  LDR.W           R10, [SP,#0x68+var_30]
54D0E4:  MOVS.W          R0, R11,LSL#24
54D0E8:  BNE.W           loc_54CDCA
54D0EC:  ADD             SP, SP, #0x4C ; 'L'
54D0EE:  POP.W           {R8-R11}
54D0F2:  POP             {R4-R7,PC}
