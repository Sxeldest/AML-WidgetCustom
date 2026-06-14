; =========================================================
; Game Engine Function: sub_18DE38
; Address            : 0x18DE38 - 0x18E136
; =========================================================

18DE38:  PUSH            {R4-R7,LR}
18DE3A:  ADD             R7, SP, #0xC
18DE3C:  PUSH.W          {R8-R11}
18DE40:  SUB             SP, SP, #4
18DE42:  VPUSH           {D8-D9}
18DE46:  SUB             SP, SP, #0x50
18DE48:  MOV             R5, R2
18DE4A:  MOV             R2, #0xFFFFFFFB
18DE4E:  CMP             R0, #0
18DE50:  BEQ.W           loc_18E126
18DE54:  CMP             R1, #0
18DE56:  BEQ.W           loc_18E126
18DE5A:  LDRB            R2, [R1]
18DE5C:  CMP             R2, #1
18DE5E:  BEQ             loc_18DEA6
18DE60:  ASRS            R6, R3, #0x1F
18DE62:  LDRB            R2, [R0]
18DE64:  ADD.W           R6, R3, R6,LSR#28
18DE68:  LDR.W           R9, [R7,#arg_0]
18DE6C:  CMP             R2, #3
18DE6E:  MOV.W           R6, R6,ASR#4
18DE72:  STR             R6, [SP,#0x80+var_80]
18DE74:  BEQ             loc_18DEAC
18DE76:  CMP             R2, #2
18DE78:  BEQ.W           loc_18E0EE
18DE7C:  CMP             R2, #1
18DE7E:  BNE             loc_18DEA6
18DE80:  CMP             R3, #0x10
18DE82:  BLT.W           loc_18E122
18DE86:  LDR             R0, [SP,#0x80+var_80]
18DE88:  ADD.W           R6, R1, #0x30 ; '0'
18DE8C:  ADDS            R4, R0, #1
18DE8E:  MOV             R0, R5
18DE90:  MOV             R1, R9
18DE92:  MOV             R2, R6
18DE94:  BL              sub_18D6E0
18DE98:  SUBS            R4, #1
18DE9A:  ADD.W           R9, R9, #0x10
18DE9E:  ADDS            R5, #0x10
18DEA0:  CMP             R4, #1
18DEA2:  BGT             loc_18DE8E
18DEA4:  B               loc_18E122
18DEA6:  MOV             R2, #0xFFFFFFFB
18DEAA:  B               loc_18E126
18DEAC:  CMP             R3, #0x10
18DEAE:  BLT.W           loc_18E122
18DEB2:  LDR.W           R11, [R0,#9]
18DEB6:  LDR.W           R3, [R0,#1]
18DEBA:  LDR.W           R10, [R0,#5]
18DEBE:  LDR.W           R9, [R0,#0xD]
18DEC2:  ADD.W           R0, R1, #0x30 ; '0'
18DEC6:  LDR             R6, [SP,#0x80+var_80]
18DEC8:  MOV.W           R1, R11,LSR#8
18DECC:  STR             R0, [SP,#0x80+var_78]
18DECE:  LSRS            R2, R3, #8
18DED0:  STR             R1, [SP,#0x80+var_4C]
18DED2:  MOV.W           R1, R11,LSR#16
18DED6:  MOV.W           R8, R3,LSR#16
18DEDA:  STR             R3, [SP,#0x80+var_44]
18DEDC:  LSRS            R0, R3, #0x18
18DEDE:  MOV.W           R3, R11,LSR#24
18DEE2:  MOV.W           R4, R10,LSR#8
18DEE6:  MOV.W           LR, R10,LSR#16
18DEEA:  MOV.W           R5, R10,LSR#24
18DEEE:  STR             R1, [SP,#0x80+var_48]
18DEF0:  STR             R3, [SP,#0x80+var_54]
18DEF2:  MOV             R1, R8
18DEF4:  STR             R6, [SP,#0x80+var_7C]
18DEF6:  MOV             R12, R5
18DEF8:  MOV             R6, R9
18DEFA:  MOV             R5, R4
18DEFC:  MOV             R9, R0
18DEFE:  MOV             R4, R8
18DF00:  MOV             R8, R10
18DF02:  LDRD.W          R1, R10, [SP,#0x80+var_4C]
18DF06:  MOVS            R3, #0
18DF08:  LDR             R0, [SP,#0x80+var_54]
18DF0A:  STR             R3, [SP,#0x80+var_50]
18DF0C:  MOV             R3, R2
18DF0E:  MOV             R2, R10
18DF10:  STR.W           R10, [SP,#0x80+var_48]
18DF14:  MOV             R10, R0
18DF16:  UXTB            R0, R2
18DF18:  UXTB.W          R2, R10
18DF1C:  LSLS            R0, R0, #0x10
18DF1E:  STR             R1, [SP,#0x80+var_4C]
18DF20:  ORR.W           R0, R0, R2,LSL#24
18DF24:  UXTB            R1, R1
18DF26:  STR             R2, [SP,#0x80+var_54]
18DF28:  ORR.W           R0, R0, R1,LSL#8
18DF2C:  UXTB.W          R1, R11
18DF30:  ADD             R0, R1
18DF32:  STR             R0, [SP,#0x80+var_38]
18DF34:  UXTB.W          R0, LR
18DF38:  UXTB            R1, R5
18DF3A:  LSLS            R0, R0, #0x10
18DF3C:  LDR             R2, [SP,#0x80+var_78]
18DF3E:  ORR.W           R0, R0, R12,LSL#24
18DF42:  STR.W           R11, [SP,#0x80+var_58]
18DF46:  ORR.W           R0, R0, R1,LSL#8
18DF4A:  UXTB.W          R1, R8
18DF4E:  ADD             R0, R1
18DF50:  STR             R0, [SP,#0x80+var_3C]
18DF52:  UXTB            R0, R4
18DF54:  UXTB            R1, R3
18DF56:  LSLS            R0, R0, #0x10
18DF58:  STR.W           R8, [SP,#0x80+var_70]
18DF5C:  ORR.W           R0, R0, R9,LSL#24
18DF60:  STRD.W          R4, R3, [SP,#0x80+var_6C]
18DF64:  ORR.W           R0, R0, R1,LSL#8
18DF68:  LDR             R1, [SP,#0x80+var_44]
18DF6A:  MOV             R11, LR
18DF6C:  STR.W           R12, [SP,#0x80+var_5C]
18DF70:  STR             R6, [SP,#0x80+var_34]
18DF72:  MOV             R8, R5
18DF74:  UXTB            R1, R1
18DF76:  ADD             R0, R1
18DF78:  STR             R0, [SP,#0x80+var_40]
18DF7A:  ADD             R0, SP, #0x80+var_40
18DF7C:  MOV             R1, R0
18DF7E:  BL              sub_18D6E0
18DF82:  LDR.W           LR, [SP,#0x80+var_50]
18DF86:  LDR             R4, [R7,#arg_0]
18DF88:  LDRB.W          R0, [SP,#0x80+var_40]
18DF8C:  AND.W           R1, LR, #7
18DF90:  MOV.W           R2, LR,LSR#3
18DF94:  ADD.W           LR, LR, #1
18DF98:  AND.W           R0, R0, #0x80
18DF9C:  LDRB            R3, [R4,R2]
18DF9E:  STR.W           LR, [SP,#0x80+var_50]
18DFA2:  LSRS            R0, R1
18DFA4:  EOR.W           R1, R1, #7
18DFA8:  EORS            R0, R3
18DFAA:  STRB            R0, [R4,R2]
18DFAC:  MOVS            R4, #0xFE
18DFAE:  UXTB            R0, R0
18DFB0:  UBFX.W          R2, R6, #0x17, #1
18DFB4:  LSRS            R0, R1
18DFB6:  AND.W           R1, R4, R6,LSR#23
18DFBA:  AND.W           R0, R0, #1
18DFBE:  UBFX.W          R3, R6, #0xF, #1
18DFC2:  ADD             R0, R1
18DFC4:  AND.W           R1, R4, R6,LSR#7
18DFC8:  ADD             R1, R2
18DFCA:  AND.W           R2, R6, #0x7F
18DFCE:  CMP.W           LR, #0x80
18DFD2:  ORR.W           R2, R3, R2,LSL#1
18DFD6:  ORR.W           R1, R2, R1,LSL#8
18DFDA:  AND.W           R2, R4, R6,LSR#15
18DFDE:  ORR.W           R2, R2, R6,LSR#31
18DFE2:  MOV.W           R4, R11,LSL#1
18DFE6:  ORR.W           R1, R1, R2,LSL#16
18DFEA:  LDR             R2, [SP,#0x80+var_48]
18DFEC:  ORR.W           R0, R1, R0,LSL#24
18DFF0:  LDR             R1, [SP,#0x80+var_54]
18DFF2:  STR             R0, [SP,#0x80+var_64]
18DFF4:  UXTB            R0, R6
18DFF6:  MOV.W           R0, R0,LSR#7
18DFFA:  LDR             R6, [SP,#0x80+var_64]
18DFFC:  ORR.W           R0, R0, R1,LSL#1
18E000:  STR             R0, [SP,#0x80+var_60]
18E002:  MOV.W           R0, R10,LSL#24
18E006:  MOV.W           R1, R2,LSL#1
18E00A:  ORR.W           R0, R1, R0,LSR#31
18E00E:  STR             R0, [SP,#0x80+var_54]
18E010:  MOV.W           R0, R2,LSL#24
18E014:  LDR             R2, [SP,#0x80+var_4C]
18E016:  MOV.W           R1, R2,LSL#1
18E01A:  ORR.W           R10, R1, R0,LSR#31
18E01E:  MOV.W           R0, R2,LSL#24
18E022:  LDR             R2, [SP,#0x80+var_58]
18E024:  STR.W           R10, [SP,#0x80+var_48]
18E028:  MOV.W           R1, R2,LSL#1
18E02C:  ORR.W           R1, R1, R0,LSR#31
18E030:  MOV.W           R0, R2,LSL#24
18E034:  LDR             R2, [SP,#0x80+var_5C]
18E036:  STR             R1, [SP,#0x80+var_4C]
18E038:  MOV.W           R3, R2,LSL#1
18E03C:  ORR.W           R0, R3, R0,LSR#31
18E040:  STR             R0, [SP,#0x80+var_58]
18E042:  MOV.W           R0, R2,LSL#24
18E046:  ORR.W           R12, R4, R0,LSR#31
18E04A:  LDR             R0, [SP,#0x80+var_70]
18E04C:  MOV.W           R4, R11,LSL#24
18E050:  MOV.W           R2, R5,LSL#1
18E054:  ORR.W           R5, R2, R4,LSR#31
18E058:  MOV.W           R2, R8,LSL#24
18E05C:  MOV.W           R4, R0,LSL#1
18E060:  ORR.W           R8, R4, R2,LSR#31
18E064:  MOV.W           R2, R0,LSL#24
18E068:  LDR             R0, [SP,#0x80+var_6C]
18E06A:  MOV.W           R4, R9,LSL#1
18E06E:  ORR.W           R2, R4, R2,LSR#31
18E072:  STR             R2, [SP,#0x80+var_5C]
18E074:  MOV.W           R2, R9,LSL#24
18E078:  MOV.W           R4, R0,LSL#1
18E07C:  ORR.W           R9, R4, R2,LSR#31
18E080:  MOV.W           R2, R0,LSL#24
18E084:  LDR             R0, [SP,#0x80+var_68]
18E086:  MOV             R11, R1
18E088:  MOV             R1, R10
18E08A:  LDR.W           R10, [SP,#0x80+var_54]
18E08E:  MOV             LR, R12
18E090:  MOV.W           R4, R0,LSL#1
18E094:  ORR.W           R3, R4, R2,LSR#31
18E098:  MOV.W           R2, R0,LSL#24
18E09C:  LDR             R0, [SP,#0x80+var_44]
18E09E:  STRD.W          R5, R12, [SP,#0x80+var_6C]
18E0A2:  LDR.W           R12, [SP,#0x80+var_58]
18E0A6:  MOV.W           R4, R0,LSL#1
18E0AA:  ORR.W           R2, R4, R2,LSR#31
18E0AE:  LDR             R0, [SP,#0x80+var_60]
18E0B0:  MOV             R4, R9
18E0B2:  STR.W           R9, [SP,#0x80+var_70]
18E0B6:  LDR.W           R9, [SP,#0x80+var_5C]
18E0BA:  STR             R2, [SP,#0x80+var_44]
18E0BC:  STR.W           R8, [SP,#0x80+var_74]
18E0C0:  BNE.W           loc_18DF0E
18E0C4:  LDRD.W          R11, R0, [SP,#0x80+var_4C]
18E0C8:  MOV             R2, R3
18E0CA:  LDR             R6, [SP,#0x80+var_7C]
18E0CC:  STR             R0, [SP,#0x80+var_4C]
18E0CE:  LDR             R0, [SP,#0x80+var_60]
18E0D0:  SUBS            R6, #1
18E0D2:  LDR             R1, [SP,#0x80+var_54]
18E0D4:  STR             R0, [SP,#0x80+var_54]
18E0D6:  LDR.W           R9, [SP,#0x80+var_64]
18E0DA:  LDRD.W          R4, LR, [SP,#0x80+var_6C]
18E0DE:  LDRD.W          R10, R8, [SP,#0x80+var_74]
18E0E2:  LDRD.W          R0, R5, [SP,#0x80+var_5C]
18E0E6:  STR             R1, [SP,#0x80+var_48]
18E0E8:  BGT.W           loc_18DEF2
18E0EC:  B               loc_18E122
18E0EE:  CMP             R3, #0x10
18E0F0:  BLT             loc_18E122
18E0F2:  ADDS            R0, #1
18E0F4:  ADD.W           R8, R1, #0x30 ; '0'
18E0F8:  VLD1.8          {D8-D9}, [R0]
18E0FC:  ADD             R6, SP, #0x80+var_40
18E0FE:  LDR             R0, [SP,#0x80+var_80]
18E100:  ADDS            R4, R0, #1
18E102:  VLD1.32         {D16-D17}, [R5]!
18E106:  MOV             R0, R6
18E108:  VEOR            Q4, Q4, Q8
18E10C:  MOV             R1, R9
18E10E:  MOV             R2, R8
18E110:  VST1.64         {D8-D9}, [R6]
18E114:  BL              sub_18D6E0
18E118:  SUBS            R4, #1
18E11A:  ADD.W           R9, R9, #0x10
18E11E:  CMP             R4, #1
18E120:  BGT             loc_18E102
18E122:  LDR             R0, [SP,#0x80+var_80]
18E124:  LSLS            R2, R0, #7
18E126:  MOV             R0, R2
18E128:  ADD             SP, SP, #0x50 ; 'P'
18E12A:  VPOP            {D8-D9}
18E12E:  ADD             SP, SP, #4
18E130:  POP.W           {R8-R11}
18E134:  POP             {R4-R7,PC}
