; =========================================================
; Game Engine Function: sub_22DD08
; Address            : 0x22DD08 - 0x22EC64
; =========================================================

22DD08:  PUSH            {R4-R7,LR}
22DD0A:  ADD             R7, SP, #0xC
22DD0C:  PUSH.W          {R8-R11}
22DD10:  SUB             SP, SP, #4
22DD12:  VPUSH           {D8}
22DD16:  SUB             SP, SP, #0x68
22DD18:  MOV             R12, R3
22DD1A:  STR             R2, [SP,#0x90+var_5C]
22DD1C:  STR             R1, [SP,#0x90+var_74]
22DD1E:  MOVW            R10, #0x9330
22DD22:  LDR.W           R1, [R12,#0x44]
22DD26:  MOVW            LR, #0x9334
22DD2A:  STR             R1, [SP,#0x90+var_48]
22DD2C:  LDR.W           R4, [R0,R10]
22DD30:  LDR.W           R3, [R0,LR]
22DD34:  NEGS            R5, R4
22DD36:  AND.W           R11, R5, #7
22DD3A:  LDR.W           R8, [R12,#4]
22DD3E:  ADD.W           R2, R11, R4
22DD42:  LDRB.W          R9, [R3]
22DD46:  AND.W           R6, R2, #7
22DD4A:  LDRB            R5, [R3,#1]
22DD4C:  ADD.W           R2, R3, R2,ASR#3
22DD50:  LDRB            R1, [R3,#2]
22DD52:  STR.W           R6, [R0,R10]
22DD56:  STR.W           R2, [R0,LR]
22DD5A:  LDR             R2, [R7,#arg_4]
22DD5C:  STR             R0, [SP,#0x90+var_84]
22DD5E:  SUB.W           R2, R8, R2
22DD62:  LDR.W           R3, [R12,#0x38]
22DD66:  SUB.W           R8, R2, R11
22DD6A:  ORR.W           R2, R5, R9,LSL#8
22DD6E:  ADD.W           R5, R0, LR
22DD72:  LDR.W           LR, [R12,#8]
22DD76:  ORR.W           R1, R1, R2,LSL#8
22DD7A:  CMP             LR, R3
22DD7C:  LSL.W           R1, R1, R4
22DD80:  BIC.W           R2, R1, #0xFF000000
22DD84:  RSB.W           R1, R11, #0x18
22DD88:  LSR.W           R1, R2, R1
22DD8C:  MOV.W           R2, R1,LSL#24
22DD90:  RSB.W           R1, R11, #8
22DD94:  LSL.W           R9, R2, R1
22DD98:  RSB.W           R1, LR, #0x120
22DD9C:  MOV.W           R0, R1,ASR#1
22DDA0:  STR             R0, [SP,#0x90+var_88]
22DDA2:  BLE             loc_22DDB8
22DDA4:  LDR.W           R2, [R12,#0x3C]
22DDA8:  STR             R3, [SP,#0x90+var_34]
22DDAA:  CMP             LR, R2
22DDAC:  BLE             loc_22DDC0
22DDAE:  SUBS            R1, R2, R3
22DDB0:  SUB.W           R2, LR, R2
22DDB4:  STR             R1, [SP,#0x90+var_30]
22DDB6:  B               loc_22DDC8
22DDB8:  MOVS            R2, #0
22DDBA:  STRD.W          LR, R2, [SP,#0x90+var_34]
22DDBE:  B               loc_22DDCA
22DDC0:  SUB.W           R0, LR, R3
22DDC4:  STR             R0, [SP,#0x90+var_30]
22DDC6:  MOVS            R2, #0
22DDC8:  MOV             LR, R3
22DDCA:  LDR             R0, [SP,#0x90+var_48]
22DDCC:  STR             R2, [SP,#0x90+var_2C]
22DDCE:  ADDS            R0, #1
22DDD0:  STR             R0, [SP,#0x90+var_6C]
22DDD2:  LDR.W           R1, [R12,#0x10]
22DDD6:  LDR             R4, [SP,#0x90+var_74]
22DDD8:  LDR             R0, [R7,#arg_0]
22DDDA:  CMP             R1, #2
22DDDC:  STR.W           R12, [SP,#0x90+var_60]
22DDE0:  BNE.W           loc_22E484
22DDE4:  STR.W           R8, [SP,#0x90+var_58]
22DDE8:  MOV.W           R3, #0xFFFFFFFF
22DDEC:  LDR.W           R6, [R12,#0x14]
22DDF0:  VMOV.I32        D8, #0
22DDF4:  LDR.W           R2, =(unk_6D3860 - 0x22DE12)
22DDF8:  STR             R3, [SP,#0x90+var_38]
22DDFA:  MOVS            R3, #2
22DDFC:  CMP             R6, #0
22DDFE:  LDR.W           R1, =(unk_6D38CC - 0x22DE16)
22DE02:  IT EQ
22DE04:  MOVEQ.W         R3, #0xFFFFFFFF
22DE08:  CMP             R6, #0
22DE0A:  ADD.W           R6, R0, R0,LSL#1
22DE0E:  ADD             R2, PC; unk_6D3860
22DE10:  STR             R3, [SP,#0x90+var_3C]
22DE12:  ADD             R1, PC; unk_6D38CC
22DE14:  STRD.W          R3, R3, [SP,#0x90+var_44]
22DE18:  MOV.W           R3, #0
22DE1C:  ADD.W           R2, R2, R6,LSL#2
22DE20:  IT EQ
22DE22:  MOVEQ           R3, #1
22DE24:  ADD.W           R1, R1, R6,LSL#2
22DE28:  LDR.W           R10, [SP,#0x90+var_5C]
22DE2C:  LDR.W           R0, [R2,R3,LSL#2]
22DE30:  ADD.W           R6, R4, #0x1200
22DE34:  STR             R0, [SP,#0x90+var_70]
22DE36:  ADD.W           R0, R12, #0x58 ; 'X'
22DE3A:  STR             R0, [SP,#0x90+var_78]
22DE3C:  LDR.W           R0, [R1,R3,LSL#2]
22DE40:  MOV             R2, R12
22DE42:  STR             R0, [SP,#0x90+var_8C]
22DE44:  MOVS            R0, #3
22DE46:  MOV             R3, R4
22DE48:  STR             R0, [SP,#0x90+var_50]
22DE4A:  MOVS            R0, #0
22DE4C:  STR             R0, [SP,#0x90+var_54]
22DE4E:  MOVS            R0, #0
22DE50:  MOV.W           R12, #0
22DE54:  STR             R0, [SP,#0x90+var_48]
22DE56:  MOVS            R0, #0
22DE58:  STR             R6, [SP,#0x90+var_4C]
22DE5A:  STR             R0, [SP,#0x90+var_80]
22DE5C:  CMP.W           LR, #0
22DE60:  BNE             loc_22DE7A
22DE62:  B               loc_22E164
22DE64:  ADDS            R1, #1
22DE66:  ADD             R0, SP, #0x90+var_34
22DE68:  MOV             R2, R1
22DE6A:  LDR.W           LR, [R0,R1,LSL#2]
22DE6E:  STR             R2, [SP,#0x90+var_80]
22DE70:  LDR             R2, [SP,#0x90+var_60]
22DE72:  CMP.W           LR, #0
22DE76:  BEQ.W           loc_22E164
22DE7A:  LDR             R0, [SP,#0x90+var_80]
22DE7C:  ADD.W           R1, R2, R0,LSL#2
22DE80:  LDR.W           R0, =(unk_660D2C - 0x22DE8A)
22DE84:  LDR             R1, [R1,#0x18]
22DE86:  ADD             R0, PC; unk_660D2C
22DE88:  STR             R1, [SP,#0x90+var_68]
22DE8A:  ADD.W           R1, R0, R1,LSL#3
22DE8E:  LDR             R0, [R1,#4]
22DE90:  STR             R0, [SP,#0x90+var_64]
22DE92:  B               loc_22DF3E
22DE94:  LDR.W           R0, =(unk_660D2C - 0x22DEA2)
22DE98:  CMP.W           R11, #0x17
22DE9C:  LDR             R1, [SP,#0x90+var_68]
22DE9E:  ADD             R0, PC; unk_660D2C
22DEA0:  STR.W           R10, [SP,#0x90+var_5C]
22DEA4:  LDR.W           R10, [R0,R1,LSL#3]
22DEA8:  ADD             R0, SP, #0x90+var_44
22DEAA:  LDRD.W          R2, R1, [SP,#0x90+var_54]
22DEAE:  STR.W           R2, [R0,R1,LSL#2]
22DEB2:  BHI             loc_22DEFA
22DEB4:  LDR             R0, [SP,#0x90+var_58]
22DEB6:  RSB.W           R6, R11, #0x18
22DEBA:  LDR             R1, [R5]
22DEBC:  SUBS            R0, #8
22DEBE:  STR             R0, [SP,#0x90+var_58]
22DEC0:  ADDS            R2, R1, #1
22DEC2:  RSB.W           R0, R11, #0x17
22DEC6:  MOV             R1, R11
22DEC8:  BIC.W           R0, R0, #7
22DECC:  STR             R0, [SP,#0x90+var_7C]
22DECE:  STR             R2, [R5]
22DED0:  ADDS            R1, #8
22DED2:  LDRB.W          R12, [R2,#-1]
22DED6:  ADDS            R2, #1
22DED8:  CMP             R1, #0x18
22DEDA:  LSL.W           R0, R12, R6
22DEDE:  ORR.W           R9, R9, R0
22DEE2:  SUB.W           R6, R6, #8
22DEE6:  BCC             loc_22DECE
22DEE8:  LDR             R0, [SP,#0x90+var_58]
22DEEA:  LDR             R1, [SP,#0x90+var_7C]
22DEEC:  LDR             R6, [SP,#0x90+var_4C]
22DEEE:  SUBS            R0, R0, R1
22DEF0:  STR             R0, [SP,#0x90+var_58]
22DEF2:  ADD.W           R0, R11, R1
22DEF6:  ADD.W           R11, R0, #8
22DEFA:  RSB.W           R0, R10, #0x20 ; ' '
22DEFE:  LDR.W           R1, =(dword_6C0EE0 - 0x22DF0C)
22DF02:  MOV             R12, R8
22DF04:  LSR.W           R0, R9, R0
22DF08:  ADD             R1, PC; dword_6C0EE0
22DF0A:  ADD             R0, R4
22DF0C:  ADD.W           R0, R1, R0,LSL#3
22DF10:  SUB.W           R1, R11, #1
22DF14:  SUB.W           R11, R1, R10
22DF18:  VLDR            D16, [R0]
22DF1C:  LSL.W           R0, R9, R10
22DF20:  CMP             R0, #0
22DF22:  MOV.W           R9, R0,LSL#1
22DF26:  VNEG.F64        D17, D16
22DF2A:  IT LT
22DF2C:  VMOVLT.F64      D16, D17
22DF30:  VMUL.F64        D16, D8, D16
22DF34:  VSTR            D16, [R3]
22DF38:  LDR.W           R10, [SP,#0x90+var_5C]
22DF3C:  B               loc_22E152
22DF3E:  CMP.W           R12, #0
22DF42:  BNE             loc_22DF8C
22DF44:  LDR             R4, [SP,#0x90+var_70]
22DF46:  LDR.W           R1, [R10],#4
22DF4A:  LDRD.W          R12, R2, [R4]
22DF4E:  LDRD.W          R6, R0, [R4,#8]
22DF52:  ADDS            R4, #0x10
22DF54:  STR             R6, [SP,#0x90+var_50]
22DF56:  STR             R0, [SP,#0x90+var_54]
22DF58:  CMP             R6, #3
22DF5A:  LDR             R0, [SP,#0x90+var_6C]
22DF5C:  LSL.W           R1, R1, R0
22DF60:  LDR             R0, [SP,#0x90+var_60]
22DF62:  ADD.W           R3, R0, R6,LSL#2
22DF66:  LDR             R6, [SP,#0x90+var_78]
22DF68:  MOV.W           R0, #3
22DF6C:  IT NE
22DF6E:  ADDNE.W         R6, R3, #0x4C ; 'L'
22DF72:  LDR             R3, [R6]
22DF74:  LDR             R6, [SP,#0x90+var_4C]
22DF76:  IT EQ
22DF78:  MOVEQ           R0, #1
22DF7A:  STR             R0, [SP,#0x90+var_48]
22DF7C:  ADD.W           R1, R3, R1,LSL#3
22DF80:  LDR             R0, [SP,#0x90+var_74]
22DF82:  VLDR            D8, [R1]
22DF86:  ADD.W           R3, R0, R2,LSL#3
22DF8A:  STR             R4, [SP,#0x90+var_70]
22DF8C:  MOV             R8, R12
22DF8E:  CMP.W           R11, #0x17
22DF92:  BHI             loc_22DFD8
22DF94:  LDR             R2, [R5]
22DF96:  RSB.W           R6, R11, #0x17
22DF9A:  LDR             R0, [SP,#0x90+var_58]
22DF9C:  MOV             R12, R3
22DF9E:  RSB.W           R1, R11, #0x18
22DFA2:  BIC.W           R6, R6, #7
22DFA6:  SUB.W           R3, R0, #8
22DFAA:  ADDS            R2, #1
22DFAC:  MOV             R4, R11
22DFAE:  STR             R2, [R5]
22DFB0:  ADDS            R4, #8
22DFB2:  LDRB.W          R0, [R2,#-1]
22DFB6:  ADDS            R2, #1
22DFB8:  CMP             R4, #0x18
22DFBA:  LSL.W           R0, R0, R1
22DFBE:  ORR.W           R9, R9, R0
22DFC2:  SUB.W           R1, R1, #8
22DFC6:  BCC             loc_22DFAE
22DFC8:  SUBS            R0, R3, R6
22DFCA:  ADD.W           R1, R11, R6
22DFCE:  LDR             R6, [SP,#0x90+var_4C]
22DFD0:  ADD.W           R11, R1, #8
22DFD4:  MOV             R3, R12
22DFD6:  STR             R0, [SP,#0x90+var_58]
22DFD8:  LDR             R0, [SP,#0x90+var_64]
22DFDA:  LDRSH.W         R12, [R0]
22DFDE:  MOV             R1, R0
22DFE0:  CMP.W           R12, #0xFFFFFFFF
22DFE4:  BGT             loc_22E006
22DFE6:  CMP.W           R9, #0
22DFEA:  ADD.W           R1, R1, #2
22DFEE:  IT LT
22DFF0:  SUBLT.W         R1, R1, R12,LSL#1
22DFF4:  SUB.W           R11, R11, #1
22DFF8:  LDRSH.W         R12, [R1]
22DFFC:  MOV.W           R9, R9,LSL#1
22E000:  CMP.W           R12, #0
22E004:  BLT             loc_22DFE6
22E006:  CMP             R3, R6
22E008:  BCS.W           loc_22EA50
22E00C:  MOV.W           R1, R12,ASR#4
22E010:  CBZ             R1, loc_22E042
22E012:  CMP             R1, #0xF
22E014:  BNE             loc_22E01C
22E016:  LDR             R0, [SP,#0x90+var_68]
22E018:  CMP             R0, #0x10
22E01A:  BCS             loc_22E04A
22E01C:  ADD             R0, SP, #0x90+var_44
22E01E:  LDRD.W          R4, R2, [SP,#0x90+var_54]
22E022:  CMP.W           R9, #0
22E026:  MOV.W           R9, R9,LSL#1
22E02A:  STR.W           R4, [R0,R2,LSL#2]
22E02E:  SUB.W           R11, R11, #1
22E032:  LDR.W           R0, =(dword_6C0EE0 - 0x22E03A)
22E036:  ADD             R0, PC; dword_6C0EE0
22E038:  ADD.W           R0, R0, R1,LSL#3
22E03C:  VLDR            D16, [R0]
22E040:  B               loc_22E0DE
22E042:  MOVS            R0, #0
22E044:  STRD.W          R0, R0, [R3]
22E048:  B               loc_22E0F0
22E04A:  LDR.W           R0, =(unk_660D2C - 0x22E058)
22E04E:  CMP.W           R11, #0x17
22E052:  LDR             R1, [SP,#0x90+var_68]
22E054:  ADD             R0, PC; unk_660D2C
22E056:  LDRD.W          R4, R2, [SP,#0x90+var_54]
22E05A:  LDR.W           R1, [R0,R1,LSL#3]
22E05E:  ADD             R0, SP, #0x90+var_44
22E060:  STR.W           R4, [R0,R2,LSL#2]
22E064:  BHI             loc_22E0B6
22E066:  STR             R3, [SP,#0x90+var_7C]
22E068:  RSB.W           R3, R11, #0x18
22E06C:  STR.W           R10, [SP,#0x90+var_5C]
22E070:  MOV             R10, R11
22E072:  LDR             R2, [SP,#0x90+var_58]
22E074:  LDR             R0, [R5]
22E076:  SUB.W           R6, R2, #8
22E07A:  RSB.W           R2, R11, #0x17
22E07E:  BIC.W           R4, R2, #7
22E082:  ADDS            R2, R0, #1
22E084:  STR             R2, [R5]
22E086:  ADD.W           R10, R10, #8
22E08A:  LDRB.W          R0, [R2,#-1]
22E08E:  ADDS            R2, #1
22E090:  CMP.W           R10, #0x18
22E094:  LSL.W           R0, R0, R3
22E098:  ORR.W           R9, R9, R0
22E09C:  SUB.W           R3, R3, #8
22E0A0:  BCC             loc_22E084
22E0A2:  SUBS            R0, R6, R4
22E0A4:  STR             R0, [SP,#0x90+var_58]
22E0A6:  ADD.W           R0, R11, R4
22E0AA:  LDR             R6, [SP,#0x90+var_4C]
22E0AC:  LDR.W           R10, [SP,#0x90+var_5C]
22E0B0:  ADD.W           R11, R0, #8
22E0B4:  LDR             R3, [SP,#0x90+var_7C]
22E0B6:  RSB.W           R0, R1, #0x20 ; ' '
22E0BA:  LDR.W           R2, =(dword_6C0EE0 - 0x22E0C6)
22E0BE:  LSR.W           R0, R9, R0
22E0C2:  ADD             R2, PC; dword_6C0EE0
22E0C4:  ADD.W           R0, R2, R0,LSL#3
22E0C8:  SUB.W           R2, R11, #1
22E0CC:  SUB.W           R11, R2, R1
22E0D0:  VLDR            D16, [R0,#0x78]
22E0D4:  LSL.W           R0, R9, R1
22E0D8:  CMP             R0, #0
22E0DA:  MOV.W           R9, R0,LSL#1
22E0DE:  VNEG.F64        D17, D16
22E0E2:  IT LT
22E0E4:  VMOVLT.F64      D16, D17
22E0E8:  VMUL.F64        D16, D8, D16
22E0EC:  VSTR            D16, [R3]
22E0F0:  LDR             R0, [SP,#0x90+var_48]
22E0F2:  ADD.W           R3, R3, R0,LSL#3
22E0F6:  CMP             R3, R6
22E0F8:  BCS.W           loc_22EA88
22E0FC:  ANDS.W          R1, R12, #0xF
22E100:  BEQ             loc_22E14A
22E102:  AND.W           R4, R12, #0xF
22E106:  CMP             R1, #0xF
22E108:  BNE             loc_22E112
22E10A:  LDR             R0, [SP,#0x90+var_68]
22E10C:  CMP             R0, #0x10
22E10E:  BCS.W           loc_22DE94
22E112:  ADD             R0, SP, #0x90+var_44
22E114:  LDRD.W          R2, R1, [SP,#0x90+var_54]
22E118:  CMP.W           R9, #0
22E11C:  MOV.W           R9, R9,LSL#1
22E120:  STR.W           R2, [R0,R1,LSL#2]
22E124:  SUB.W           R11, R11, #1
22E128:  LDR.W           R0, =(dword_6C0EE0 - 0x22E130)
22E12C:  ADD             R0, PC; dword_6C0EE0
22E12E:  ADD.W           R0, R0, R4,LSL#3
22E132:  VLDR            D16, [R0]
22E136:  VNEG.F64        D17, D16
22E13A:  IT LT
22E13C:  VMOVLT.F64      D16, D17
22E140:  VMUL.F64        D16, D8, D16
22E144:  VSTR            D16, [R3]
22E148:  B               loc_22E150
22E14A:  MOVS            R0, #0
22E14C:  STRD.W          R0, R0, [R3]
22E150:  MOV             R12, R8
22E152:  LDR             R0, [SP,#0x90+var_48]
22E154:  SUB.W           R12, R12, #1
22E158:  SUBS.W          LR, LR, #1
22E15C:  ADD.W           R3, R3, R0,LSL#3
22E160:  BNE.W           loc_22DF3E
22E164:  LDR             R0, [SP,#0x90+var_80]
22E166:  MOV             R1, R0
22E168:  CMP             R1, #0
22E16A:  BLE.W           loc_22DE64
22E16E:  LDR.W           LR, [SP,#0x90+var_88]
22E172:  MOV             R8, LR
22E174:  LDR.W           LR, [SP,#0x90+var_60]
22E178:  CMP.W           R8, #0
22E17C:  BEQ.W           loc_22E460
22E180:  LDR             R0, [SP,#0x90+var_58]
22E182:  ADD             R0, R11
22E184:  CMP             R0, #1
22E186:  BLT.W           loc_22E460
22E18A:  LDR             R1, [SP,#0x90+var_84]
22E18C:  MOVW            R0, #0xB33C
22E190:  ADD             R0, R1
22E192:  STR             R0, [SP,#0x90+var_5C]
22E194:  LDR.W           R0, =(off_677664 - 0x22E19C)
22E198:  ADD             R0, PC; off_677664
22E19A:  LDR             R0, [R0]
22E19C:  STR             R0, [SP,#0x90+var_64]
22E19E:  LDR.W           R1, =(unk_660E2C - 0x22E1AE)
22E1A2:  CMP.W           R11, #0x17
22E1A6:  LDR.W           R0, [LR,#0x48]
22E1AA:  ADD             R1, PC; unk_660E2C
22E1AC:  ADD.W           R0, R1, R0,LSL#3
22E1B0:  LDR             R1, [R0,#4]
22E1B2:  BHI             loc_22E20A
22E1B4:  STR.W           R8, [SP,#0x90+var_88]
22E1B8:  MOV             R8, R3
22E1BA:  LDR             R6, [R5]
22E1BC:  RSB.W           R3, R11, #0x17
22E1C0:  LDR             R2, [SP,#0x90+var_58]
22E1C2:  MOV             LR, R12
22E1C4:  RSB.W           R0, R11, #0x18
22E1C8:  BIC.W           R3, R3, #7
22E1CC:  SUB.W           R12, R2, #8
22E1D0:  ADDS            R6, #1
22E1D2:  MOV             R4, R11
22E1D4:  STR             R6, [R5]
22E1D6:  ADDS            R4, #8
22E1D8:  LDRB.W          R2, [R6,#-1]
22E1DC:  ADDS            R6, #1
22E1DE:  CMP             R4, #0x18
22E1E0:  LSL.W           R2, R2, R0
22E1E4:  ORR.W           R9, R9, R2
22E1E8:  SUB.W           R0, R0, #8
22E1EC:  BCC             loc_22E1D4
22E1EE:  SUB.W           R0, R12, R3
22E1F2:  STR             R0, [SP,#0x90+var_58]
22E1F4:  ADD.W           R0, R11, R3
22E1F8:  MOV             R3, R8
22E1FA:  MOV             R12, LR
22E1FC:  LDR             R6, [SP,#0x90+var_4C]
22E1FE:  LDR.W           LR, [SP,#0x90+var_60]
22E202:  ADD.W           R11, R0, #8
22E206:  LDR.W           R8, [SP,#0x90+var_88]
22E20A:  LDRSH.W         R0, [R1]
22E20E:  CMP.W           R0, #0xFFFFFFFF
22E212:  BGT             loc_22E232
22E214:  CMP.W           R9, #0
22E218:  ADD.W           R1, R1, #2
22E21C:  IT LT
22E21E:  SUBLT.W         R1, R1, R0,LSL#1
22E222:  SUB.W           R11, R11, #1
22E226:  LDRSH.W         R0, [R1]
22E22A:  MOV.W           R9, R9,LSL#1
22E22E:  CMP             R0, #0
22E230:  BLT             loc_22E214
22E232:  LDR             R2, [SP,#0x90+var_58]
22E234:  ADD.W           R1, R11, R2
22E238:  CMP             R1, #0
22E23A:  BLE             loc_22E29E
22E23C:  CMP.W           R12, #0
22E240:  BNE             loc_22E288
22E242:  LDR             R4, [SP,#0x90+var_70]
22E244:  LDR.W           R1, [R10],#4
22E248:  LDRD.W          R12, R2, [R4]
22E24C:  LDRD.W          R6, R3, [R4,#8]
22E250:  ADDS            R4, #0x10
22E252:  STR             R6, [SP,#0x90+var_50]
22E254:  STR             R3, [SP,#0x90+var_54]
22E256:  CMP             R6, #3
22E258:  LDR             R3, [SP,#0x90+var_6C]
22E25A:  LSL.W           R1, R1, R3
22E25E:  ADD.W           R3, LR, R6,LSL#2
22E262:  LDR             R6, [SP,#0x90+var_78]
22E264:  IT NE
22E266:  ADDNE.W         R6, R3, #0x4C ; 'L'
22E26A:  LDR             R3, [R6]
22E26C:  LDR             R6, [SP,#0x90+var_4C]
22E26E:  ADD.W           R1, R3, R1,LSL#3
22E272:  MOV.W           R3, #3
22E276:  IT EQ
22E278:  MOVEQ           R3, #1
22E27A:  STR             R3, [SP,#0x90+var_48]
22E27C:  LDR             R3, [SP,#0x90+var_74]
22E27E:  VLDR            D8, [R1]
22E282:  ADD.W           R3, R3, R2,LSL#3
22E286:  STR             R4, [SP,#0x90+var_70]
22E288:  SUB.W           R12, R12, #1
22E28C:  CMP             R3, R6
22E28E:  BCS.W           loc_22E3D0
22E292:  LSLS            R1, R0, #0x1C
22E294:  BMI             loc_22E2AE
22E296:  MOVS            R1, #0
22E298:  STRD.W          R1, R1, [R3]
22E29C:  B               loc_22E2D6
22E29E:  RSB.W           R11, R2, #0
22E2A2:  MOVS            R0, #0x10
22E2A4:  ANDS.W          R1, R0, #0x1F
22E2A8:  BEQ.W           loc_22E3E0
22E2AC:  B               loc_22E45A
22E2AE:  VNEG.F64        D16, D8
22E2B2:  CMP.W           R9, #0
22E2B6:  ADD             R1, SP, #0x90+var_44
22E2B8:  MOV.W           R9, R9,LSL#1
22E2BC:  SUB.W           R11, R11, #1
22E2C0:  VMOV.F64        D17, D8
22E2C4:  IT LT
22E2C6:  VMOVLT.F64      D17, D16
22E2CA:  LDRD.W          R4, R2, [SP,#0x90+var_54]
22E2CE:  STR.W           R4, [R1,R2,LSL#2]
22E2D2:  VSTR            D17, [R3]
22E2D6:  LDR             R1, [SP,#0x90+var_48]
22E2D8:  ADD.W           R3, R3, R1,LSL#3
22E2DC:  CMP             R3, R6
22E2DE:  BCS             loc_22E3D0
22E2E0:  LSLS            R1, R0, #0x1D
22E2E2:  BMI             loc_22E2F8
22E2E4:  MOVS            R1, #0
22E2E6:  STRD.W          R1, R1, [R3]
22E2EA:  CMP.W           R12, #0
22E2EE:  BEQ             loc_22E330
22E2F0:  LDR             R1, [SP,#0x90+var_48]
22E2F2:  ADD.W           R3, R3, R1,LSL#3
22E2F6:  B               loc_22E376
22E2F8:  ADD             R1, SP, #0x90+var_44
22E2FA:  LDRD.W          R4, R2, [SP,#0x90+var_54]
22E2FE:  STR.W           R4, [R1,R2,LSL#2]
22E302:  LDR             R1, [SP,#0x90+var_58]
22E304:  ADD             R1, R11
22E306:  CMP             R1, #1
22E308:  BLT.W           loc_22E452
22E30C:  VNEG.F64        D16, D8
22E310:  CMP.W           R9, #0
22E314:  MOV.W           R9, R9,LSL#1
22E318:  SUB.W           R11, R11, #1
22E31C:  VMOV.F64        D17, D8
22E320:  IT LT
22E322:  VMOVLT.F64      D17, D16
22E326:  VSTR            D17, [R3]
22E32A:  CMP.W           R12, #0
22E32E:  BNE             loc_22E2F0
22E330:  LDR             R4, [SP,#0x90+var_70]
22E332:  LDR.W           R1, [R10],#4
22E336:  LDRD.W          R12, R2, [R4]
22E33A:  LDRD.W          R6, R3, [R4,#8]
22E33E:  ADDS            R4, #0x10
22E340:  STR             R6, [SP,#0x90+var_50]
22E342:  STR             R3, [SP,#0x90+var_54]
22E344:  CMP             R6, #3
22E346:  LDR             R3, [SP,#0x90+var_6C]
22E348:  LSL.W           R1, R1, R3
22E34C:  ADD.W           R3, LR, R6,LSL#2
22E350:  LDR             R6, [SP,#0x90+var_78]
22E352:  IT NE
22E354:  ADDNE.W         R6, R3, #0x4C ; 'L'
22E358:  LDR             R3, [R6]
22E35A:  LDR             R6, [SP,#0x90+var_4C]
22E35C:  ADD.W           R1, R3, R1,LSL#3
22E360:  MOV.W           R3, #3
22E364:  IT EQ
22E366:  MOVEQ           R3, #1
22E368:  STR             R3, [SP,#0x90+var_48]
22E36A:  LDR             R3, [SP,#0x90+var_74]
22E36C:  VLDR            D8, [R1]
22E370:  ADD.W           R3, R3, R2,LSL#3
22E374:  STR             R4, [SP,#0x90+var_70]
22E376:  SUB.W           R12, R12, #1
22E37A:  CMP             R3, R6
22E37C:  BCS             loc_22E3D0
22E37E:  LSLS            R1, R0, #0x1E
22E380:  BMI             loc_22E38A
22E382:  MOVS            R1, #0
22E384:  STRD.W          R1, R1, [R3]
22E388:  B               loc_22E3BA
22E38A:  ADD             R1, SP, #0x90+var_44
22E38C:  LDRD.W          R4, R2, [SP,#0x90+var_54]
22E390:  STR.W           R4, [R1,R2,LSL#2]
22E394:  LDR             R1, [SP,#0x90+var_58]
22E396:  ADD             R1, R11
22E398:  CMP             R1, #1
22E39A:  BLT             loc_22E452
22E39C:  VNEG.F64        D16, D8
22E3A0:  CMP.W           R9, #0
22E3A4:  MOV.W           R9, R9,LSL#1
22E3A8:  SUB.W           R11, R11, #1
22E3AC:  VMOV.F64        D17, D8
22E3B0:  IT LT
22E3B2:  VMOVLT.F64      D17, D16
22E3B6:  VSTR            D17, [R3]
22E3BA:  LDR             R1, [SP,#0x90+var_48]
22E3BC:  ADD.W           R3, R3, R1,LSL#3
22E3C0:  CMP             R3, R6
22E3C2:  BCS             loc_22E3D0
22E3C4:  LSLS            R0, R0, #0x1F
22E3C6:  BNE             loc_22E41C
22E3C8:  MOVS            R0, #0
22E3CA:  STRD.W          R0, R0, [R3]
22E3CE:  B               loc_22E44C
22E3D0:  LDR             R0, [SP,#0x90+var_5C]
22E3D2:  LDRB            R0, [R0]
22E3D4:  LSLS            R0, R0, #0x1A
22E3D6:  BPL             loc_22E3F2
22E3D8:  MOVS            R0, #1
22E3DA:  ANDS.W          R1, R0, #0x1F
22E3DE:  BNE             loc_22E45A
22E3E0:  SUBS.W          R8, R8, #1
22E3E4:  BEQ             loc_22E460
22E3E6:  LDR             R0, [SP,#0x90+var_58]
22E3E8:  ADD             R0, R11
22E3EA:  CMP             R0, #0
22E3EC:  BGT.W           loc_22E19E
22E3F0:  B               loc_22E460
22E3F2:  LDR             R0, [SP,#0x90+var_64]
22E3F4:  MOV             R4, R8
22E3F6:  LDR.W           R1, =(aCProjectsOswra_32 - 0x22E408); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22E3FA:  MOVW            R2, #0x3C7
22E3FE:  STR             R4, [SP,#0x90+var_88]
22E400:  MOV             R8, R3
22E402:  LDR             R0, [R0]; stream
22E404:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22E406:  STR             R6, [SP,#0x90+var_90]
22E408:  MOV             R4, R12
22E40A:  BLX             fprintf
22E40E:  MOV             R3, R8
22E410:  LDR.W           LR, [SP,#0x90+var_60]
22E414:  LDR.W           R8, [SP,#0x90+var_88]
22E418:  MOV             R12, R4
22E41A:  B               loc_22E3D8
22E41C:  ADD             R0, SP, #0x90+var_44
22E41E:  LDRD.W          R2, R1, [SP,#0x90+var_54]
22E422:  STR.W           R2, [R0,R1,LSL#2]
22E426:  LDR             R0, [SP,#0x90+var_58]
22E428:  ADD             R0, R11
22E42A:  CMP             R0, #1
22E42C:  BLT             loc_22E452
22E42E:  VNEG.F64        D16, D8
22E432:  CMP.W           R9, #0
22E436:  MOV.W           R9, R9,LSL#1
22E43A:  SUB.W           R11, R11, #1
22E43E:  VMOV.F64        D17, D8
22E442:  IT LT
22E444:  VMOVLT.F64      D17, D16
22E448:  VSTR            D17, [R3]
22E44C:  LDR             R0, [SP,#0x90+var_48]
22E44E:  ADD.W           R3, R3, R0,LSL#3
22E452:  MOVS            R0, #0
22E454:  ANDS.W          R1, R0, #0x1F
22E458:  BEQ             loc_22E3E0
22E45A:  CMP             R1, #0x10
22E45C:  BNE.W           loc_22EC4A
22E460:  LDR             R0, [SP,#0x90+var_50]
22E462:  CMP             R0, #2
22E464:  BGT.W           loc_22EB08
22E468:  LDR.W           R8, [SP,#0x90+var_84]
22E46C:  MOV             R1, R12
22E46E:  LDRD.W          R9, R4, [SP,#0x90+var_74]
22E472:  MOVS            R0, #0
22E474:  LDR.W           R12, [R7,#arg_0]
22E478:  LDR.W           LR, [SP,#0x90+var_8C]
22E47C:  CMP             R1, #1
22E47E:  BGE.W           loc_22EAEA
22E482:  B               loc_22EB02
22E484:  LDR.W           R6, =(unk_6D3860 - 0x22E49C)
22E488:  ADD.W           R3, R0, R0,LSL#1
22E48C:  LDR.W           R1, =(unk_5F2718 - 0x22E4A2)
22E490:  VMOV.I32        D8, #0
22E494:  LDR.W           R2, [R12,#0x40]
22E498:  ADD             R6, PC; unk_6D3860
22E49A:  ADD.W           R0, R6, R3,LSL#2
22E49E:  ADD             R1, PC; unk_5F2718
22E4A0:  MOVS            R3, #0x16
22E4A2:  ADD.W           R6, R4, #0x1200
22E4A6:  MLA.W           R1, R2, R3, R1
22E4AA:  LDR             R0, [R0,#8]
22E4AC:  STR             R0, [SP,#0x90+var_68]
22E4AE:  MOVS            R0, #0
22E4B0:  MOV             R3, R4
22E4B2:  STR             R0, [SP,#0x90+var_48]
22E4B4:  MOVS            R0, #0
22E4B6:  STR             R1, [SP,#0x90+var_64]
22E4B8:  MOV.W           R1, #0xFFFFFFFF
22E4BC:  MOV.W           R10, #0
22E4C0:  MOV             R4, R8
22E4C2:  STR             R1, [SP,#0x90+var_50]
22E4C4:  STR             R0, [SP,#0x90+var_70]
22E4C6:  STR             R6, [SP,#0x90+var_4C]
22E4C8:  CMP.W           LR, #0
22E4CC:  BNE             loc_22E4E4
22E4CE:  B               loc_22E77C
22E4D0:  ADDS            R1, #1
22E4D2:  ADD             R0, SP, #0x90+var_34
22E4D4:  MOV             R2, R1
22E4D6:  LDR.W           LR, [R0,R1,LSL#2]
22E4DA:  STR             R2, [SP,#0x90+var_70]
22E4DC:  CMP.W           LR, #0
22E4E0:  BEQ.W           loc_22E77C
22E4E4:  LDR             R1, [SP,#0x90+var_70]
22E4E6:  LDR             R0, [SP,#0x90+var_60]
22E4E8:  ADD.W           R0, R0, R1,LSL#2
22E4EC:  LDR             R1, [R0,#0x18]
22E4EE:  LDR.W           R0, =(unk_660D2C - 0x22E4F8)
22E4F2:  STR             R1, [SP,#0x90+var_58]
22E4F4:  ADD             R0, PC; unk_660D2C
22E4F6:  ADD.W           R0, R0, R1,LSL#3
22E4FA:  LDR             R0, [R0,#4]
22E4FC:  STR             R0, [SP,#0x90+var_54]
22E4FE:  CMP.W           R10, #0
22E502:  BEQ             loc_22E50C
22E504:  CMP.W           R11, #0x17
22E508:  BLS             loc_22E550
22E50A:  B               loc_22E592
22E50C:  LDR             R0, [SP,#0x90+var_64]
22E50E:  MOV             R12, R5
22E510:  MOV             R5, R4
22E512:  MOV             R4, R6
22E514:  MOV             R6, R3
22E516:  LDRB.W          R1, [R0],#1
22E51A:  STR             R0, [SP,#0x90+var_64]
22E51C:  LDR             R0, [SP,#0x90+var_5C]
22E51E:  LDR.W           R2, [R0],#4
22E522:  STR             R0, [SP,#0x90+var_5C]
22E524:  LDR             R0, [SP,#0x90+var_60]
22E526:  ADD             R1, R2
22E528:  LDR             R2, [SP,#0x90+var_68]
22E52A:  LDR             R3, [R0,#0x58]
22E52C:  LDRD.W          R10, R0, [R2]
22E530:  ADDS            R2, #8
22E532:  STR             R0, [SP,#0x90+var_48]
22E534:  LDR             R0, [SP,#0x90+var_6C]
22E536:  LSLS            R1, R0
22E538:  ADD.W           R1, R3, R1,LSL#3
22E53C:  MOV             R3, R6
22E53E:  MOV             R6, R4
22E540:  MOV             R4, R5
22E542:  VLDR            D8, [R1]
22E546:  MOV             R5, R12
22E548:  STR             R2, [SP,#0x90+var_68]
22E54A:  CMP.W           R11, #0x17
22E54E:  BHI             loc_22E592
22E550:  LDR             R6, [R5]
22E552:  MOV             R12, R3
22E554:  RSB.W           R3, R11, #0x17
22E558:  MOV             R0, R4
22E55A:  RSB.W           R1, R11, #0x18
22E55E:  SUB.W           R2, R0, #8
22E562:  BIC.W           R3, R3, #7
22E566:  ADDS            R6, #1
22E568:  MOV             R4, R11
22E56A:  STR             R6, [R5]
22E56C:  ADDS            R4, #8
22E56E:  LDRB.W          R0, [R6,#-1]
22E572:  ADDS            R6, #1
22E574:  CMP             R4, #0x18
22E576:  LSL.W           R0, R0, R1
22E57A:  ORR.W           R9, R9, R0
22E57E:  SUB.W           R1, R1, #8
22E582:  BCC             loc_22E56A
22E584:  ADD.W           R1, R11, R3
22E588:  LDR             R6, [SP,#0x90+var_4C]
22E58A:  SUBS            R4, R2, R3
22E58C:  ADD.W           R11, R1, #8
22E590:  MOV             R3, R12
22E592:  LDR             R0, [SP,#0x90+var_54]
22E594:  LDRSH.W         R12, [R0]
22E598:  MOV             R1, R0
22E59A:  CMP.W           R12, #0xFFFFFFFF
22E59E:  BGT             loc_22E5C0
22E5A0:  CMP.W           R9, #0
22E5A4:  ADD.W           R1, R1, #2
22E5A8:  IT LT
22E5AA:  SUBLT.W         R1, R1, R12,LSL#1
22E5AE:  SUB.W           R11, R11, #1
22E5B2:  LDRSH.W         R12, [R1]
22E5B6:  MOV.W           R9, R9,LSL#1
22E5BA:  CMP.W           R12, #0
22E5BE:  BLT             loc_22E5A0
22E5C0:  CMP             R3, R6
22E5C2:  BCS.W           loc_22EA6C
22E5C6:  MOV.W           R1, R12,ASR#4
22E5CA:  CBZ             R1, loc_22E5F2
22E5CC:  CMP             R1, #0xF
22E5CE:  BNE             loc_22E5D6
22E5D0:  LDR             R0, [SP,#0x90+var_58]
22E5D2:  CMP             R0, #0x10
22E5D4:  BCS             loc_22E5FA
22E5D6:  LDR.W           R0, =(dword_6C0EE0 - 0x22E5EA)
22E5DA:  CMP.W           R9, #0
22E5DE:  SUB.W           R11, R11, #1
22E5E2:  MOV.W           R9, R9,LSL#1
22E5E6:  ADD             R0, PC; dword_6C0EE0
22E5E8:  ADD.W           R0, R0, R1,LSL#3
22E5EC:  VLDR            D16, [R0]
22E5F0:  B               loc_22E678
22E5F2:  MOVS            R0, #0
22E5F4:  STRD.W          R0, R0, [R3]
22E5F8:  B               loc_22E68E
22E5FA:  LDR.W           R0, =(unk_660D2C - 0x22E608)
22E5FE:  CMP.W           R11, #0x17
22E602:  LDR             R1, [SP,#0x90+var_58]
22E604:  ADD             R0, PC; unk_660D2C
22E606:  LDR.W           R1, [R0,R1,LSL#3]
22E60A:  BHI             loc_22E650
22E60C:  STR             R3, [SP,#0x90+var_7C]
22E60E:  RSB.W           R3, R11, #0x17
22E612:  LDR             R0, [R5]
22E614:  BIC.W           R6, R3, #7
22E618:  RSB.W           R2, R11, #0x18
22E61C:  SUBS            R4, #8
22E61E:  ADDS            R3, R0, #1
22E620:  MOV             R8, R11
22E622:  STR             R3, [R5]
22E624:  ADD.W           R8, R8, #8
22E628:  LDRB.W          R0, [R3,#-1]
22E62C:  ADDS            R3, #1
22E62E:  CMP.W           R8, #0x18
22E632:  LSL.W           R0, R0, R2
22E636:  ORR.W           R9, R9, R0
22E63A:  SUB.W           R2, R2, #8
22E63E:  BCC             loc_22E622
22E640:  SUBS            R2, R4, R6
22E642:  ADD.W           R0, R11, R6
22E646:  LDR             R6, [SP,#0x90+var_4C]
22E648:  ADD.W           R11, R0, #8
22E64C:  LDR             R3, [SP,#0x90+var_7C]
22E64E:  MOV             R4, R2
22E650:  RSB.W           R0, R1, #0x20 ; ' '
22E654:  LDR.W           R2, =(dword_6C0EE0 - 0x22E660)
22E658:  LSR.W           R0, R9, R0
22E65C:  ADD             R2, PC; dword_6C0EE0
22E65E:  ADD.W           R0, R2, R0,LSL#3
22E662:  SUB.W           R2, R11, #1
22E666:  SUB.W           R11, R2, R1
22E66A:  VLDR            D16, [R0,#0x78]
22E66E:  LSL.W           R0, R9, R1
22E672:  CMP             R0, #0
22E674:  MOV.W           R9, R0,LSL#1
22E678:  VNEG.F64        D17, D16
22E67C:  IT LT
22E67E:  VMOVLT.F64      D16, D17
22E682:  VMUL.F64        D16, D8, D16
22E686:  VSTR            D16, [R3]
22E68A:  LDR             R0, [SP,#0x90+var_48]
22E68C:  STR             R0, [SP,#0x90+var_50]
22E68E:  MOV             R8, R3
22E690:  ADDS            R3, #8
22E692:  CMP             R3, R6
22E694:  BCS.W           loc_22EAA4
22E698:  ANDS.W          R1, R12, #0xF
22E69C:  BEQ             loc_22E6C8
22E69E:  AND.W           R2, R12, #0xF
22E6A2:  CMP             R1, #0xF
22E6A4:  BNE             loc_22E6AC
22E6A6:  LDR             R0, [SP,#0x90+var_58]
22E6A8:  CMP             R0, #0x10
22E6AA:  BCS             loc_22E6D0
22E6AC:  LDR.W           R0, =(dword_6C0EE0 - 0x22E6C0)
22E6B0:  CMP.W           R9, #0
22E6B4:  SUB.W           R11, R11, #1
22E6B8:  MOV.W           R9, R9,LSL#1
22E6BC:  ADD             R0, PC; dword_6C0EE0
22E6BE:  ADD.W           R0, R0, R2,LSL#3
22E6C2:  VLDR            D16, [R0]
22E6C6:  B               loc_22E754
22E6C8:  MOVS            R0, #0
22E6CA:  STRD.W          R0, R0, [R3]
22E6CE:  B               loc_22E76A
22E6D0:  LDR.W           R0, =(unk_660D2C - 0x22E6DE)
22E6D4:  CMP.W           R11, #0x17
22E6D8:  LDR             R1, [SP,#0x90+var_58]
22E6DA:  ADD             R0, PC; unk_660D2C
22E6DC:  LDR.W           R1, [R0,R1,LSL#3]
22E6E0:  BHI             loc_22E72A
22E6E2:  LDR             R0, [R5]
22E6E4:  SUBS            R4, #8
22E6E6:  STR             R4, [SP,#0x90+var_50]
22E6E8:  RSB.W           R4, R11, #0x17
22E6EC:  BIC.W           R4, R4, #7
22E6F0:  RSB.W           R6, R11, #0x18
22E6F4:  ADD.W           R12, R0, #1
22E6F8:  STR             R4, [SP,#0x90+var_78]
22E6FA:  MOV             R4, R11
22E6FC:  STR.W           R12, [R5]
22E700:  ADDS            R4, #8
22E702:  LDRB.W          R0, [R12,#-1]
22E706:  ADD.W           R12, R12, #1
22E70A:  CMP             R4, #0x18
22E70C:  LSL.W           R0, R0, R6
22E710:  ORR.W           R9, R9, R0
22E714:  SUB.W           R6, R6, #8
22E718:  BCC             loc_22E6FC
22E71A:  LDR             R0, [SP,#0x90+var_50]
22E71C:  LDR             R6, [SP,#0x90+var_78]
22E71E:  SUBS            R4, R0, R6
22E720:  ADD.W           R0, R11, R6
22E724:  LDR             R6, [SP,#0x90+var_4C]
22E726:  ADD.W           R11, R0, #8
22E72A:  RSB.W           R0, R1, #0x20 ; ' '
22E72E:  LSR.W           R0, R9, R0
22E732:  ADD             R0, R2
22E734:  LDR.W           R2, =(dword_6C0EE0 - 0x22E73C)
22E738:  ADD             R2, PC; dword_6C0EE0
22E73A:  ADD.W           R0, R2, R0,LSL#3
22E73E:  SUB.W           R2, R11, #1
22E742:  SUB.W           R11, R2, R1
22E746:  VLDR            D16, [R0]
22E74A:  LSL.W           R0, R9, R1
22E74E:  CMP             R0, #0
22E750:  MOV.W           R9, R0,LSL#1
22E754:  VNEG.F64        D17, D16
22E758:  IT LT
22E75A:  VMOVLT.F64      D16, D17
22E75E:  VMUL.F64        D16, D8, D16
22E762:  VSTR            D16, [R3]
22E766:  LDR             R0, [SP,#0x90+var_48]
22E768:  STR             R0, [SP,#0x90+var_50]
22E76A:  MOV             R3, R8
22E76C:  SUB.W           R10, R10, #1
22E770:  SUBS.W          LR, LR, #1
22E774:  ADD.W           R3, R3, #0x10
22E778:  BNE.W           loc_22E4FE
22E77C:  LDR             R0, [SP,#0x90+var_70]
22E77E:  MOV             R1, R0
22E780:  CMP             R1, #1
22E782:  BLE.W           loc_22E4D0
22E786:  LDR.W           LR, [SP,#0x90+var_88]
22E78A:  CMP.W           LR, #0
22E78E:  BEQ.W           loc_22EA2A
22E792:  ADD.W           R0, R4, R11
22E796:  CMP             R0, #1
22E798:  BLT.W           loc_22EA2A
22E79C:  LDR             R1, [SP,#0x90+var_84]
22E79E:  MOVW            R0, #0xB33C
22E7A2:  ADD             R0, R1
22E7A4:  STR             R0, [SP,#0x90+var_54]
22E7A6:  LDR.W           R0, =(off_677664 - 0x22E7AE)
22E7AA:  ADD             R0, PC; off_677664
22E7AC:  LDR             R0, [R0]
22E7AE:  STR             R0, [SP,#0x90+var_70]
22E7B0:  LDR             R0, [SP,#0x90+var_60]
22E7B2:  CMP.W           R11, #0x17
22E7B6:  LDR.W           R1, =(unk_660E2C - 0x22E7C0)
22E7BA:  LDR             R0, [R0,#0x48]
22E7BC:  ADD             R1, PC; unk_660E2C
22E7BE:  ADD.W           R0, R1, R0,LSL#3
22E7C2:  LDR             R1, [R0,#4]
22E7C4:  BHI             loc_22E80A
22E7C6:  LDR             R6, [R5]
22E7C8:  MOV             R8, R3
22E7CA:  RSB.W           R3, R11, #0x17
22E7CE:  MOV             R2, R4
22E7D0:  RSB.W           R0, R11, #0x18
22E7D4:  SUB.W           R12, R2, #8
22E7D8:  BIC.W           R3, R3, #7
22E7DC:  ADDS            R6, #1
22E7DE:  MOV             R4, R11
22E7E0:  STR             R6, [R5]
22E7E2:  ADDS            R4, #8
22E7E4:  LDRB.W          R2, [R6,#-1]
22E7E8:  ADDS            R6, #1
22E7EA:  CMP             R4, #0x18
22E7EC:  LSL.W           R2, R2, R0
22E7F0:  ORR.W           R9, R9, R2
22E7F4:  SUB.W           R0, R0, #8
22E7F8:  BCC             loc_22E7E0
22E7FA:  ADD.W           R0, R11, R3
22E7FE:  LDR             R6, [SP,#0x90+var_4C]
22E800:  SUB.W           R4, R12, R3
22E804:  ADD.W           R11, R0, #8
22E808:  MOV             R3, R8
22E80A:  LDRSH.W         R0, [R1]
22E80E:  CMP.W           R0, #0xFFFFFFFF
22E812:  BGT             loc_22E832
22E814:  CMP.W           R9, #0
22E818:  ADD.W           R1, R1, #2
22E81C:  IT LT
22E81E:  SUBLT.W         R1, R1, R0,LSL#1
22E822:  SUB.W           R11, R11, #1
22E826:  LDRSH.W         R0, [R1]
22E82A:  MOV.W           R9, R9,LSL#1
22E82E:  CMP             R0, #0
22E830:  BLT             loc_22E814
22E832:  ADD.W           R1, R11, R4
22E836:  CMP             R1, #0
22E838:  BLE             loc_22E890
22E83A:  CMP.W           R10, #0
22E83E:  BNE             loc_22E87A
22E840:  LDR             R2, [SP,#0x90+var_64]
22E842:  MOV             R12, R3
22E844:  LDR             R3, [SP,#0x90+var_5C]
22E846:  MOV             R8, R6
22E848:  MOV             R6, R4
22E84A:  LDR             R4, [SP,#0x90+var_68]
22E84C:  LDRB.W          R1, [R2],#1
22E850:  STR             R2, [SP,#0x90+var_64]
22E852:  LDR.W           R2, [R3],#4
22E856:  STR             R3, [SP,#0x90+var_5C]
22E858:  LDR             R3, [SP,#0x90+var_60]
22E85A:  ADD             R1, R2
22E85C:  LDR             R3, [R3,#0x58]
22E85E:  LDRD.W          R10, R2, [R4]
22E862:  ADDS            R4, #8
22E864:  STR             R2, [SP,#0x90+var_48]
22E866:  LDR             R2, [SP,#0x90+var_6C]
22E868:  LSLS            R1, R2
22E86A:  ADD.W           R1, R3, R1,LSL#3
22E86E:  MOV             R3, R12
22E870:  VLDR            D8, [R1]
22E874:  STR             R4, [SP,#0x90+var_68]
22E876:  MOV             R4, R6
22E878:  MOV             R6, R8
22E87A:  SUB.W           R10, R10, #1
22E87E:  CMP             R3, R6
22E880:  BCS.W           loc_22E998
22E884:  LSLS            R1, R0, #0x1C
22E886:  BMI             loc_22E8A0
22E888:  MOVS            R1, #0
22E88A:  STRD.W          R1, R1, [R3]
22E88E:  B               loc_22E8C2
22E890:  RSB.W           R11, R4, #0
22E894:  MOVS            R0, #0x2D ; '-'
22E896:  ANDS.W          R1, R0, #0x3F ; '?'
22E89A:  BEQ.W           loc_22E9A8
22E89E:  B               loc_22EA24
22E8A0:  VNEG.F64        D16, D8
22E8A4:  CMP.W           R9, #0
22E8A8:  MOV.W           R9, R9,LSL#1
22E8AC:  SUB.W           R11, R11, #1
22E8B0:  VMOV.F64        D17, D8
22E8B4:  IT LT
22E8B6:  VMOVLT.F64      D17, D16
22E8BA:  VSTR            D17, [R3]
22E8BE:  LDR             R1, [SP,#0x90+var_48]
22E8C0:  STR             R1, [SP,#0x90+var_50]
22E8C2:  ADD.W           R1, R3, #8
22E8C6:  CMP             R1, R6
22E8C8:  BCS             loc_22E996
22E8CA:  LSLS            R2, R0, #0x1D
22E8CC:  BMI             loc_22E8D6
22E8CE:  MOVS            R2, #0
22E8D0:  STRD.W          R2, R2, [R1]
22E8D4:  B               loc_22E902
22E8D6:  ADD.W           R2, R11, R4
22E8DA:  CMP             R2, #1
22E8DC:  BLT.W           loc_22EA16
22E8E0:  VNEG.F64        D16, D8
22E8E4:  CMP.W           R9, #0
22E8E8:  MOV.W           R9, R9,LSL#1
22E8EC:  SUB.W           R11, R11, #1
22E8F0:  VMOV.F64        D17, D8
22E8F4:  IT LT
22E8F6:  VMOVLT.F64      D17, D16
22E8FA:  VSTR            D17, [R1]
22E8FE:  LDR             R1, [SP,#0x90+var_48]
22E900:  STR             R1, [SP,#0x90+var_50]
22E902:  ADD.W           R1, R3, #0x10
22E906:  CMP.W           R10, #0
22E90A:  BNE             loc_22E944
22E90C:  LDR             R6, [SP,#0x90+var_64]
22E90E:  MOV             R8, R3
22E910:  MOV             R12, R4
22E912:  LDR             R4, [SP,#0x90+var_68]
22E914:  LDRB.W          R2, [R6],#1
22E918:  STR             R6, [SP,#0x90+var_64]
22E91A:  LDR             R6, [SP,#0x90+var_5C]
22E91C:  LDR.W           R3, [R6],#4
22E920:  STR             R6, [SP,#0x90+var_5C]
22E922:  LDR             R6, [SP,#0x90+var_60]
22E924:  ADD             R2, R3
22E926:  LDR             R6, [R6,#0x58]
22E928:  LDRD.W          R10, R3, [R4]
22E92C:  ADDS            R4, #8
22E92E:  STR             R3, [SP,#0x90+var_48]
22E930:  LDR             R3, [SP,#0x90+var_6C]
22E932:  LSLS            R2, R3
22E934:  MOV             R3, R8
22E936:  ADD.W           R2, R6, R2,LSL#3
22E93A:  LDR             R6, [SP,#0x90+var_4C]
22E93C:  VLDR            D8, [R2]
22E940:  STR             R4, [SP,#0x90+var_68]
22E942:  MOV             R4, R12
22E944:  SUB.W           R10, R10, #1
22E948:  CMP             R1, R6
22E94A:  BCS             loc_22E996
22E94C:  LSLS            R2, R0, #0x1E
22E94E:  BMI             loc_22E958
22E950:  MOVS            R2, #0
22E952:  STRD.W          R2, R2, [R1]
22E956:  B               loc_22E982
22E958:  ADD.W           R2, R11, R4
22E95C:  CMP             R2, #1
22E95E:  BLT             loc_22EA16
22E960:  VNEG.F64        D16, D8
22E964:  CMP.W           R9, #0
22E968:  MOV.W           R9, R9,LSL#1
22E96C:  SUB.W           R11, R11, #1
22E970:  VMOV.F64        D17, D8
22E974:  IT LT
22E976:  VMOVLT.F64      D17, D16
22E97A:  VSTR            D17, [R1]
22E97E:  LDR             R1, [SP,#0x90+var_48]
22E980:  STR             R1, [SP,#0x90+var_50]
22E982:  ADD.W           R1, R3, #0x18
22E986:  CMP             R1, R6
22E988:  BCS             loc_22E996
22E98A:  LSLS            R0, R0, #0x1F
22E98C:  BNE             loc_22E9E0
22E98E:  MOVS            R0, #0
22E990:  STRD.W          R0, R0, [R1]
22E994:  B               loc_22EA0A
22E996:  MOV             R3, R1
22E998:  LDR             R0, [SP,#0x90+var_54]
22E99A:  LDRB            R0, [R0]
22E99C:  LSLS            R0, R0, #0x1A
22E99E:  BPL             loc_22E9BA
22E9A0:  MOVS            R0, #1
22E9A2:  ANDS.W          R1, R0, #0x3F ; '?'
22E9A6:  BNE             loc_22EA24
22E9A8:  SUBS.W          LR, LR, #1
22E9AC:  BEQ             loc_22EA2A
22E9AE:  ADD.W           R0, R4, R11
22E9B2:  CMP             R0, #0
22E9B4:  BGT.W           loc_22E7B0
22E9B8:  B               loc_22EA2A
22E9BA:  LDR             R0, [SP,#0x90+var_70]
22E9BC:  MOVW            R2, #0x497
22E9C0:  LDR             R1, =(aCProjectsOswra_32 - 0x22E9CA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22E9C2:  STR             R3, [SP,#0x90+var_7C]
22E9C4:  LDR             R0, [R0]; stream
22E9C6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22E9C8:  LDR             R3, [SP,#0x90+var_7C]
22E9CA:  STR             R4, [SP,#0x90+var_58]
22E9CC:  MOV             R4, R6
22E9CE:  STR             R6, [SP,#0x90+var_90]
22E9D0:  MOV             R6, LR
22E9D2:  BLX             fprintf
22E9D6:  MOV             LR, R6
22E9D8:  MOV             R6, R4
22E9DA:  LDR             R3, [SP,#0x90+var_7C]
22E9DC:  LDR             R4, [SP,#0x90+var_58]
22E9DE:  B               loc_22E9A0
22E9E0:  ADD.W           R0, R11, R4
22E9E4:  CMP             R0, #1
22E9E6:  BLT             loc_22EA16
22E9E8:  VNEG.F64        D16, D8
22E9EC:  CMP.W           R9, #0
22E9F0:  MOV.W           R9, R9,LSL#1
22E9F4:  SUB.W           R11, R11, #1
22E9F8:  VMOV.F64        D17, D8
22E9FC:  IT LT
22E9FE:  VMOVLT.F64      D17, D16
22EA02:  VSTR            D17, [R1]
22EA06:  LDR             R0, [SP,#0x90+var_48]
22EA08:  STR             R0, [SP,#0x90+var_50]
22EA0A:  ADDS            R3, #0x20 ; ' '
22EA0C:  MOVS            R0, #0
22EA0E:  ANDS.W          R1, R0, #0x3F ; '?'
22EA12:  BEQ             loc_22E9A8
22EA14:  B               loc_22EA24
22EA16:  LDR             R2, [SP,#0x90+var_48]
22EA18:  MOVS            R0, #0
22EA1A:  STR             R2, [SP,#0x90+var_50]
22EA1C:  MOV             R3, R1
22EA1E:  ANDS.W          R1, R0, #0x3F ; '?'
22EA22:  BEQ             loc_22E9A8
22EA24:  CMP             R1, #0x2D ; '-'
22EA26:  BNE.W           loc_22EC54
22EA2A:  LDR             R1, [R7,#arg_0]
22EA2C:  MOVS            R0, #0x5C ; '\'
22EA2E:  LDR.W           R8, [SP,#0x90+var_84]
22EA32:  LDR             R2, [SP,#0x90+var_60]
22EA34:  MLA.W           R0, R1, R0, R8
22EA38:  LDR             R1, [SP,#0x90+var_50]
22EA3A:  ADDS            R1, #1
22EA3C:  STR             R1, [R2,#0x30]
22EA3E:  ADD.W           R0, R0, R1,LSL#2
22EA42:  MOV.W           R1, #0x4A80
22EA46:  LDR             R0, [R0,R1]
22EA48:  STR             R0, [R2,#0x34]
22EA4A:  LDR.W           R9, [SP,#0x90+var_74]
22EA4E:  B               loc_22EB78
22EA50:  LDR             R1, [SP,#0x90+var_84]
22EA52:  MOVW            R0, #0xB33C
22EA56:  LDRB            R0, [R1,R0]
22EA58:  LSLS            R0, R0, #0x1A
22EA5A:  BMI             loc_22EAC6
22EA5C:  LDR             R0, =(off_677664 - 0x22EA68)
22EA5E:  MOVW            R2, #0x35E
22EA62:  LDR             R1, =(aCProjectsOswra_32 - 0x22EA6C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EA64:  ADD             R0, PC; off_677664
22EA66:  STR             R6, [SP,#0x90+var_90]
22EA68:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EA6A:  B               loc_22EABE
22EA6C:  LDR             R1, [SP,#0x90+var_84]
22EA6E:  MOVW            R0, #0xB33C
22EA72:  LDRB            R0, [R1,R0]
22EA74:  LSLS            R0, R0, #0x1A
22EA76:  BMI             loc_22EAC6
22EA78:  LDR             R0, =(off_677664 - 0x22EA84)
22EA7A:  MOVW            R2, #0x43A
22EA7E:  LDR             R1, =(aCProjectsOswra_32 - 0x22EA88); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EA80:  ADD             R0, PC; off_677664
22EA82:  STR             R6, [SP,#0x90+var_90]
22EA84:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EA86:  B               loc_22EABE
22EA88:  LDR             R1, [SP,#0x90+var_84]
22EA8A:  MOVW            R0, #0xB33C
22EA8E:  LDRB            R0, [R1,R0]
22EA90:  LSLS            R0, R0, #0x1A
22EA92:  BMI             loc_22EAC6
22EA94:  LDR             R0, =(off_677664 - 0x22EAA0)
22EA96:  MOVW            R2, #0x377
22EA9A:  LDR             R1, =(aCProjectsOswra_32 - 0x22EAA4); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EA9C:  ADD             R0, PC; off_677664
22EA9E:  STR             R6, [SP,#0x90+var_90]
22EAA0:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EAA2:  B               loc_22EABE
22EAA4:  LDR             R1, [SP,#0x90+var_84]
22EAA6:  MOVW            R0, #0xB33C
22EAAA:  LDRB            R0, [R1,R0]
22EAAC:  LSLS            R0, R0, #0x1A
22EAAE:  BMI             loc_22EAC6
22EAB0:  LDR             R0, =(off_677664 - 0x22EABC)
22EAB2:  MOVW            R2, #0x452
22EAB6:  LDR             R1, =(aCProjectsOswra_32 - 0x22EAC0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EAB8:  ADD             R0, PC; off_677664
22EABA:  STR             R6, [SP,#0x90+var_90]
22EABC:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EABE:  LDR             R0, [R0]
22EAC0:  LDR             R0, [R0]; stream
22EAC2:  BLX             fprintf
22EAC6:  MOVS            R0, #1
22EAC8:  ADD             SP, SP, #0x68 ; 'h'
22EACA:  VPOP            {D8}
22EACE:  ADD             SP, SP, #4
22EAD0:  POP.W           {R8-R11}
22EAD4:  POP             {R4-R7,PC}
22EAD6:  LDRD.W          R1, R2, [R4,#4]
22EADA:  CMP             R2, #0
22EADC:  ADD.W           R3, R9, R1,LSL#3
22EAE0:  BEQ             loc_22EB14
22EAE2:  LDR.W           R1, [R4],#0x10
22EAE6:  CMP             R1, #1
22EAE8:  BLT             loc_22EB02
22EAEA:  ADDS            R1, #1
22EAEC:  CMP             R3, R6
22EAEE:  BCS.W           loc_22EC2C
22EAF2:  STRD.W          R0, R0, [R3]
22EAF6:  SUBS            R1, #1
22EAF8:  STRD.W          R0, R0, [R3,#0x18]
22EAFC:  ADDS            R3, #0x30 ; '0'
22EAFE:  CMP             R1, #1
22EB00:  BGT             loc_22EAEC
22EB02:  CMP             R4, LR
22EB04:  BCC             loc_22EAD6
22EB06:  B               loc_22EB14
22EB08:  LDR.W           R8, [SP,#0x90+var_84]
22EB0C:  LDR.W           R12, [R7,#arg_0]
22EB10:  LDR.W           R9, [SP,#0x90+var_74]
22EB14:  LDR             R2, [SP,#0x90+var_60]
22EB16:  MOV             LR, R3
22EB18:  LDR             R0, [SP,#0x90+var_44]
22EB1A:  MOVS            R6, #0
22EB1C:  MOV             R4, R2
22EB1E:  ADDS            R1, R0, #1
22EB20:  STR             R1, [R4,#0x24]
22EB22:  LDR             R1, [SP,#0x90+var_40]
22EB24:  ADDS            R2, R1, #1
22EB26:  STR             R2, [R4,#0x28]
22EB28:  LDR             R2, [SP,#0x90+var_3C]
22EB2A:  CMP             R0, R1
22EB2C:  ADD             R1, SP, #0x90+var_44
22EB2E:  MOV.W           R0, #0x5C ; '\'
22EB32:  ADD.W           R3, R2, #1
22EB36:  STR             R3, [R4,#0x2C]
22EB38:  LDR             R3, [SP,#0x90+var_38]
22EB3A:  MLA.W           R0, R12, R0, R8
22EB3E:  ADD.W           R3, R3, #1
22EB42:  STR             R3, [R4,#0x30]
22EB44:  IT LE
22EB46:  MOVLE           R6, #1
22EB48:  LDR.W           R1, [R1,R6,LSL#2]
22EB4C:  ADD.W           R0, R0, R3,LSL#2
22EB50:  CMP             R1, R2
22EB52:  MOV             R3, LR
22EB54:  IT GT
22EB56:  MOVGT           R2, R1
22EB58:  ADDS            R1, R2, #1
22EB5A:  RSB.W           R2, R12, R12,LSL#3
22EB5E:  ADD.W           R2, R8, R2,LSL#3
22EB62:  ADD.W           R1, R2, R1,LSL#2
22EB66:  MOVW            R2, #0x4DBC
22EB6A:  ADD             R1, R2
22EB6C:  IT EQ
22EB6E:  ADDEQ.W         R1, R0, #0x4A80
22EB72:  LDR             R0, [R1]
22EB74:  STR             R0, [R4,#0x34]
22EB76:  LDR             R4, [SP,#0x90+var_58]
22EB78:  MOV             R2, R4
22EB7A:  MOVW            R0, #0x9330
22EB7E:  ADD.W           R4, R8, R0
22EB82:  LDR             R1, [R5]
22EB84:  ADD.W           R6, R2, R11
22EB88:  LDR             R0, [R4]
22EB8A:  SUB.W           R0, R0, R11
22EB8E:  ADD.W           R1, R1, R0,ASR#3
22EB92:  STR             R1, [R5]
22EB94:  AND.W           R0, R0, #7
22EB98:  STR             R0, [R4]
22EB9A:  LDR             R0, [SP,#0x90+var_4C]
22EB9C:  CMP             R3, R0
22EB9E:  BCS             loc_22EBD8
22EBA0:  RSB.W           R0, R3, #7
22EBA4:  ADD             R0, R9
22EBA6:  ADD.W           R0, R0, #0x1200
22EBAA:  BIC.W           R1, R0, #7
22EBAE:  MOV             R0, R3
22EBB0:  BLX             j___aeabi_memclr8
22EBB4:  CMP             R6, #0x11
22EBB6:  BGE             loc_22EBDC
22EBB8:  CMP             R6, #1
22EBBA:  BLT             loc_22EC22
22EBBC:  LDR             R0, [R4]
22EBBE:  LDR             R1, [R5]
22EBC0:  ADD             R0, R6
22EBC2:  ADD.W           R1, R1, R0,ASR#3
22EBC6:  STR             R1, [R5]
22EBC8:  MOVW            R1, #0x9338
22EBCC:  AND.W           R0, R0, #7
22EBD0:  STR             R0, [R4]
22EBD2:  STR.W           R0, [R8,R1]
22EBD6:  B               loc_22EC28
22EBD8:  CMP             R6, #0x11
22EBDA:  BLT             loc_22EBB8
22EBDC:  MOVW            R0, #0x9338
22EBE0:  ADD.W           R12, R8, R0
22EBE4:  MVNS            R0, R6
22EBE6:  CMN.W           R0, #0x21 ; '!'
22EBEA:  LDR             R1, [R4]
22EBEC:  ADD.W           R3, R6, #0x10
22EBF0:  LDR             R2, [R5]
22EBF2:  IT LE
22EBF4:  MOVLE           R0, #0xFFFFFFDF
22EBF8:  ADD             R0, R6
22EBFA:  ADDS            R0, #0x10
22EBFC:  BIC.W           R0, R0, #0xF
22EC00:  ADDS            R1, #0x10
22EC02:  SUBS            R3, #0x10
22EC04:  CMP             R3, #0x20 ; ' '
22EC06:  ADD.W           R2, R2, R1,ASR#3
22EC0A:  AND.W           R1, R1, #7
22EC0E:  BGT             loc_22EC00
22EC10:  STR             R2, [R5]
22EC12:  STR             R1, [R4]
22EC14:  STR.W           R1, [R12]
22EC18:  SUB.W           R1, R6, #0x10
22EC1C:  SUBS            R6, R1, R0
22EC1E:  CMP             R6, #1
22EC20:  BGE             loc_22EBBC
22EC22:  CMP             R6, #0
22EC24:  BLT.W           loc_22EAC6
22EC28:  MOVS            R0, #0
22EC2A:  B               loc_22EAC8
22EC2C:  MOVW            R0, #0xB33C
22EC30:  LDRB.W          R0, [R8,R0]
22EC34:  LSLS            R0, R0, #0x1A
22EC36:  BMI.W           loc_22EAC6
22EC3A:  LDR             R0, =(off_677664 - 0x22EC46)
22EC3C:  MOV.W           R2, #0x3E0
22EC40:  LDR             R1, =(aCProjectsOswra_32 - 0x22EC4A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EC42:  ADD             R0, PC; off_677664
22EC44:  STR             R6, [SP,#0x90+var_90]
22EC46:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22EC48:  B               loc_22EABE
22EC4A:  CMP             R0, #0
22EC4C:  LDR.W           R8, [SP,#0x90+var_84]
22EC50:  LDR             R4, [SP,#0x90+var_58]
22EC52:  B               loc_22EC5A
22EC54:  LDR.W           R8, [SP,#0x90+var_84]
22EC58:  CMP             R0, #0
22EC5A:  LDR.W           R9, [SP,#0x90+var_74]
22EC5E:  BNE.W           loc_22EAC6
22EC62:  B               loc_22EB78
