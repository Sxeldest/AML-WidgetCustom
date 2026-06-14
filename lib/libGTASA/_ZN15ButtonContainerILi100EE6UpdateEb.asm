; =========================================================
; Game Engine Function: _ZN15ButtonContainerILi100EE6UpdateEb
; Address            : 0x27CD4C - 0x27D0AC
; =========================================================

27CD4C:  PUSH            {R4-R7,LR}
27CD4E:  ADD             R7, SP, #0xC
27CD50:  PUSH.W          {R8-R11}
27CD54:  SUB             SP, SP, #4
27CD56:  MOV             R10, R0
27CD58:  MOVS            R0, #0
27CD5A:  LDR.W           R2, [R10,#0x860]
27CD5E:  STR.W           R0, [R10,#0x860]
27CD62:  STR.W           R2, [R10,#0x864]
27CD66:  MOVS            R2, #0
27CD68:  LDR.W           R3, [R10,R2,LSL#2]
27CD6C:  ADDS            R6, R3, #1
27CD6E:  CMP             R6, #2
27CD70:  BCS             loc_27CD76
27CD72:  MOVS            R3, #1
27CD74:  B               loc_27CD7C
27CD76:  CMP             R3, #2
27CD78:  BNE             loc_27CD80
27CD7A:  MOVS            R3, #3
27CD7C:  STR.W           R3, [R10,R2,LSL#2]
27CD80:  ADD.W           R3, R10, R2
27CD84:  ADDS            R2, #1
27CD86:  LDRB.W          R6, [R3,#0x1B8]
27CD8A:  CMP             R6, #0
27CD8C:  IT NE
27CD8E:  STRBNE.W        R0, [R3,#0x1B8]
27CD92:  CMP             R2, #0x64 ; 'd'
27CD94:  BNE             loc_27CD68
27CD96:  CMP             R1, #0
27CD98:  BEQ.W           loc_27CF5E
27CD9C:  MOVS            R0, #0
27CD9E:  ADD.W           R1, R10, #0x190
27CDA2:  STR.W           R0, [R10,#0x1AC]
27CDA6:  ADD.W           R0, R10, #0x1B8
27CDAA:  CMP             R0, R1
27CDAC:  BCS             loc_27CDD0
27CDAE:  ADD.W           R1, R10, #0x21C
27CDB2:  CMP             R1, R10
27CDB4:  BLS             loc_27CDD0
27CDB6:  MOVS            R0, #0
27CDB8:  MOVS            R1, #1
27CDBA:  MOVS            R2, #0
27CDBC:  ADD.W           R3, R10, R2
27CDC0:  STRB.W          R0, [R3,#0x1B8]
27CDC4:  STR.W           R1, [R10,R2,LSL#2]
27CDC8:  ADDS            R2, #1
27CDCA:  CMP             R2, #0x64 ; 'd'
27CDCC:  BNE             loc_27CDBC
27CDCE:  B               loc_27CF5E
27CDD0:  VMOV.I32        D18, #0
27CDD4:  ADD.W           R1, R10, #0x1BC
27CDD8:  VMOV.I32        Q8, #1
27CDDC:  VST1.32         {D18[0]}, [R0]
27CDE0:  MOV             R0, R10
27CDE2:  VST1.32         {D16-D17}, [R0]!
27CDE6:  VST1.32         {D18[0]}, [R1]
27CDEA:  VST1.32         {D16-D17}, [R0]
27CDEE:  ADD.W           R0, R10, #0x1C0
27CDF2:  VST1.32         {D18[0]}, [R0]
27CDF6:  ADD.W           R0, R10, #0x1C4
27CDFA:  VST1.32         {D18[0]}, [R0]
27CDFE:  ADD.W           R0, R10, #0x1C8
27CE02:  VST1.32         {D18[0]}, [R0]
27CE06:  ADD.W           R0, R10, #0x1CC
27CE0A:  VST1.32         {D18[0]}, [R0]
27CE0E:  ADD.W           R0, R10, #0x1D0
27CE12:  VST1.32         {D18[0]}, [R0]
27CE16:  ADD.W           R0, R10, #0x1D4
27CE1A:  VST1.32         {D18[0]}, [R0]
27CE1E:  ADD.W           R0, R10, #0x1D8
27CE22:  VST1.32         {D18[0]}, [R0]
27CE26:  ADD.W           R0, R10, #0x1DC
27CE2A:  VST1.32         {D18[0]}, [R0]
27CE2E:  ADD.W           R0, R10, #0x1E0
27CE32:  VST1.32         {D18[0]}, [R0]
27CE36:  ADD.W           R0, R10, #0x20 ; ' '
27CE3A:  VST1.32         {D16-D17}, [R0]
27CE3E:  ADD.W           R0, R10, #0x30 ; '0'
27CE42:  VST1.32         {D16-D17}, [R0]
27CE46:  ADD.W           R0, R10, #0x40 ; '@'
27CE4A:  VST1.32         {D16-D17}, [R0]
27CE4E:  ADD.W           R0, R10, #0x50 ; 'P'
27CE52:  VST1.32         {D16-D17}, [R0]
27CE56:  ADD.W           R0, R10, #0x60 ; '`'
27CE5A:  VST1.32         {D16-D17}, [R0]
27CE5E:  ADD.W           R0, R10, #0x70 ; 'p'
27CE62:  VST1.32         {D16-D17}, [R0]
27CE66:  ADD.W           R0, R10, #0x80
27CE6A:  VST1.32         {D16-D17}, [R0]
27CE6E:  ADD.W           R0, R10, #0x90
27CE72:  VST1.32         {D16-D17}, [R0]
27CE76:  ADD.W           R0, R10, #0x1E4
27CE7A:  VST1.32         {D18[0]}, [R0]
27CE7E:  ADD.W           R0, R10, #0xA0
27CE82:  VST1.32         {D16-D17}, [R0]
27CE86:  ADD.W           R0, R10, #0x1E8
27CE8A:  VST1.32         {D18[0]}, [R0]
27CE8E:  ADD.W           R0, R10, #0xB0
27CE92:  VST1.32         {D16-D17}, [R0]
27CE96:  ADD.W           R0, R10, #0x1EC
27CE9A:  VST1.32         {D18[0]}, [R0]
27CE9E:  ADD.W           R0, R10, #0xC0
27CEA2:  VST1.32         {D16-D17}, [R0]
27CEA6:  ADD.W           R0, R10, #0x1F0
27CEAA:  VST1.32         {D18[0]}, [R0]
27CEAE:  ADD.W           R0, R10, #0xD0
27CEB2:  VST1.32         {D16-D17}, [R0]
27CEB6:  ADD.W           R0, R10, #0x1F4
27CEBA:  VST1.32         {D18[0]}, [R0]
27CEBE:  ADD.W           R0, R10, #0xE0
27CEC2:  VST1.32         {D16-D17}, [R0]
27CEC6:  ADD.W           R0, R10, #0x1F8
27CECA:  VST1.32         {D18[0]}, [R0]
27CECE:  ADD.W           R0, R10, #0xF0
27CED2:  VST1.32         {D16-D17}, [R0]
27CED6:  ADD.W           R0, R10, #0x1FC
27CEDA:  VST1.32         {D18[0]}, [R0]
27CEDE:  ADD.W           R0, R10, #0x100
27CEE2:  VST1.32         {D16-D17}, [R0]
27CEE6:  ADD.W           R0, R10, #0x200
27CEEA:  VST1.32         {D18[0]}, [R0]
27CEEE:  ADD.W           R0, R10, #0x110
27CEF2:  VST1.32         {D16-D17}, [R0]
27CEF6:  ADD.W           R0, R10, #0x204
27CEFA:  VST1.32         {D18[0]}, [R0]
27CEFE:  ADD.W           R0, R10, #0x120
27CF02:  VST1.32         {D16-D17}, [R0]
27CF06:  ADD.W           R0, R10, #0x208
27CF0A:  VST1.32         {D18[0]}, [R0]
27CF0E:  ADD.W           R0, R10, #0x130
27CF12:  VST1.32         {D16-D17}, [R0]
27CF16:  ADD.W           R0, R10, #0x20C
27CF1A:  VST1.32         {D18[0]}, [R0]
27CF1E:  ADD.W           R0, R10, #0x140
27CF22:  VST1.32         {D16-D17}, [R0]
27CF26:  ADD.W           R0, R10, #0x210
27CF2A:  VST1.32         {D18[0]}, [R0]
27CF2E:  ADD.W           R0, R10, #0x150
27CF32:  VST1.32         {D16-D17}, [R0]
27CF36:  ADD.W           R0, R10, #0x214
27CF3A:  VST1.32         {D18[0]}, [R0]
27CF3E:  ADD.W           R0, R10, #0x160
27CF42:  VST1.32         {D16-D17}, [R0]
27CF46:  ADD.W           R0, R10, #0x218
27CF4A:  VST1.32         {D18[0]}, [R0]
27CF4E:  ADD.W           R0, R10, #0x170
27CF52:  VST1.32         {D16-D17}, [R0]
27CF56:  ADD.W           R0, R10, #0x180
27CF5A:  VST1.32         {D16-D17}, [R0]
27CF5E:  LDR.W           R3, [R10,#0x1AC]
27CF62:  CMP             R3, #0
27CF64:  BEQ             loc_27D05E
27CF66:  LDR             R0, =(windowSize_ptr - 0x27CF76)
27CF68:  MOVW            R12, #0x6667
27CF6C:  MOVS            R2, #0
27CF6E:  MOVT            R12, #0x6666
27CF72:  ADD             R0, PC; windowSize_ptr
27CF74:  MOV.W           LR, #1
27CF78:  MOV.W           R11, #0
27CF7C:  LDR.W           R8, [R0]; windowSize
27CF80:  LDR.W           R0, [R10,#0x1B0]; dest
27CF84:  ADDS            R1, R0, R2; src
27CF86:  LDR.W           R9, [R0,R2]
27CF8A:  LDR             R6, [R1,#4]
27CF8C:  LDR.W           R4, [R10,R9,LSL#2]
27CF90:  CMP             R4, R6
27CF92:  BEQ             loc_27D050
27CF94:  CMP             R4, #1
27CF96:  IT EQ
27CF98:  CMPEQ           R6, #0
27CF9A:  BEQ             loc_27D050
27CF9C:  CMP             R4, #3
27CF9E:  BEQ             loc_27CFAC
27CFA0:  ADDS            R5, R4, #1
27CFA2:  CMP             R5, #2
27CFA4:  BCC             loc_27D07A
27CFA6:  CMP             R4, #2
27CFA8:  BNE             loc_27CFB0
27CFAA:  B               loc_27D07A
27CFAC:  CMP             R6, #2
27CFAE:  BEQ             loc_27D050
27CFB0:  CMP             R6, #0
27CFB2:  STR.W           R6, [R10,R9,LSL#2]
27CFB6:  BNE             loc_27D050
27CFB8:  LDR.W           R0, [R10,#0x1B0]
27CFBC:  ADD.W           R1, R10, R9,LSL#3
27CFC0:  VLDR            S2, [R10,#0x1B4]
27CFC4:  ADD             R0, R2
27CFC6:  VLDR            D17, [R1,#0x220]
27CFCA:  VLDR            D16, [R0,#0x10]
27CFCE:  ADD.W           R0, R1, #0x220
27CFD2:  VSUB.F64        D17, D16, D17
27CFD6:  VCVT.F32.F64    S0, D17
27CFDA:  VCMPE.F32       S2, S0
27CFDE:  VMRS            APSR_nzcv, FPSCR
27CFE2:  BLE             loc_27D032
27CFE4:  LDR.W           R1, [R8]
27CFE8:  ADD.W           R4, R10, R9,LSL#2
27CFEC:  LDR.W           R5, [R10,#0x190]
27CFF0:  LDR.W           R6, [R4,#0x540]
27CFF4:  SMMUL.W         R1, R1, R12
27CFF8:  SUBS            R6, R5, R6
27CFFA:  IT MI
27CFFC:  NEGMI           R6, R6
27CFFE:  ASRS            R3, R1, #2
27D000:  ADD.W           R3, R3, R1,LSR#31
27D004:  ADD.W           R1, R4, #0x540
27D008:  CMP             R6, R3
27D00A:  BGE             loc_27D03A
27D00C:  LDR.W           R5, [R10,#0x194]
27D010:  LDR.W           R4, [R4,#0x6D0]
27D014:  SUBS            R4, R5, R4
27D016:  IT MI
27D018:  NEGMI           R4, R4
27D01A:  CMP             R4, R3
27D01C:  BGE             loc_27D03A
27D01E:  ADD.W           R3, R10, R9
27D022:  STRB.W          LR, [R3,#0x1B8]
27D026:  LDR.W           R3, [R10,#0x1B0]
27D02A:  ADD             R3, R2
27D02C:  VLDR            D16, [R3,#0x10]
27D030:  B               loc_27D03A
27D032:  ADD.W           R1, R10, R9,LSL#2
27D036:  ADD.W           R1, R1, #0x540
27D03A:  VSTR            D16, [R0]
27D03E:  LDR.W           R0, [R10,#0x190]
27D042:  STR             R0, [R1]
27D044:  ADD.W           R1, R10, R9,LSL#2
27D048:  LDR.W           R0, [R10,#0x194]
27D04C:  STR.W           R0, [R1,#0x6D0]
27D050:  LDR.W           R3, [R10,#0x1AC]
27D054:  ADD.W           R11, R11, #1
27D058:  ADDS            R2, #0x20 ; ' '
27D05A:  CMP             R11, R3
27D05C:  BCC             loc_27CF80
27D05E:  ADD.W           R2, R10, #0x19C
27D062:  MOVS            R3, #0
27D064:  LDM             R2, {R0-R2}
27D066:  STR.W           R3, [R10,#0x1AC]
27D06A:  ADD.W           R3, R10, #0x190
27D06E:  STM             R3!, {R0-R2}
27D070:  MOVS            R0, #1
27D072:  ADD             SP, SP, #4
27D074:  POP.W           {R8-R11}
27D078:  POP             {R4-R7,PC}
27D07A:  LDR.W           R2, [R1,#-0x18]
27D07E:  STR.W           R2, [R10,#0x190]
27D082:  LDR.W           R2, [R1,#-0x14]
27D086:  STR.W           R2, [R10,#0x194]
27D08A:  LDR.W           R2, [R1,#-8]
27D08E:  STR.W           R2, [R10,#0x198]
27D092:  SUB.W           R2, R3, R11
27D096:  LSLS            R2, R2, #5; n
27D098:  BLX             memmove
27D09C:  LDR.W           R0, [R10,#0x1AC]
27D0A0:  SUB.W           R0, R0, R11
27D0A4:  STR.W           R0, [R10,#0x1AC]
27D0A8:  MOVS            R0, #0
27D0AA:  B               loc_27D072
