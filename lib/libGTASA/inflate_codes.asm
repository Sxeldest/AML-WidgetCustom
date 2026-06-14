; =========================================================
; Game Engine Function: inflate_codes
; Address            : 0x20DE28 - 0x20E34A
; =========================================================

20DE28:  PUSH            {R4-R7,LR}
20DE2A:  ADD             R7, SP, #0xC
20DE2C:  PUSH.W          {R8-R11}
20DE30:  SUB             SP, SP, #0x24
20DE32:  MOV             R3, R0
20DE34:  LDR.W           R11, [R3,#4]
20DE38:  LDRD.W          R5, R4, [R3,#0x1C]
20DE3C:  LDRD.W          R0, R12, [R3,#0x30]
20DE40:  LDR.W           R10, [R1]
20DE44:  STR             R1, [SP,#0x40+var_28]
20DE46:  CMP             R12, R0
20DE48:  LDR             R6, [R1,#4]
20DE4A:  BCS             loc_20DE5C
20DE4C:  MVN.W           R1, R12
20DE50:  ADD.W           LR, R1, R0
20DE54:  ADD.W           R0, R3, #0x2C ; ','
20DE58:  STR             R0, [SP,#0x40+var_20]
20DE5A:  B               loc_20DE68
20DE5C:  MOV             R1, R3
20DE5E:  LDR.W           R0, [R1,#0x2C]!
20DE62:  STR             R1, [SP,#0x40+var_20]
20DE64:  SUB.W           LR, R0, R12
20DE68:  LDR.W           R1, =(inflate_mask_ptr - 0x20DE74)
20DE6C:  LDR.W           R0, [R11]
20DE70:  ADD             R1, PC; inflate_mask_ptr
20DE72:  LDR             R1, [R1]; inflate_mask
20DE74:  STR             R1, [SP,#0x40+var_30]
20DE76:  LDR.W           R1, =(inflate_mask_ptr - 0x20DE7E)
20DE7A:  ADD             R1, PC; inflate_mask_ptr
20DE7C:  LDR             R1, [R1]; inflate_mask
20DE7E:  STR             R1, [SP,#0x40+var_34]
20DE80:  LDR.W           R1, =(inflate_mask_ptr - 0x20DE88)
20DE84:  ADD             R1, PC; inflate_mask_ptr
20DE86:  LDR             R1, [R1]; inflate_mask
20DE88:  STR             R1, [SP,#0x40+var_2C]
20DE8A:  LDR.W           R1, =(inflate_mask_ptr - 0x20DE92)
20DE8E:  ADD             R1, PC; inflate_mask_ptr
20DE90:  LDR             R1, [R1]; inflate_mask
20DE92:  STR             R1, [SP,#0x40+var_38]
20DE94:  STR             R3, [SP,#0x40+var_24]
20DE96:  CMP             R0, #9
20DE98:  BLS.W           loc_20E288
20DE9C:  B               def_20E28C; jumptable 0020E28C default case
20DE9E:  CMP             R6, #0xA
20DEA0:  IT CS
20DEA2:  CMPCS.W         LR, #0x102
20DEA6:  BCC.W           loc_20E1F8
20DEAA:  STRD.W          R5, R4, [R3,#0x1C]
20DEAE:  LDR.W           R8, [SP,#0x40+var_28]
20DEB2:  LDR.W           R0, [R8]
20DEB6:  LDR.W           R1, [R8,#8]
20DEBA:  SUB.W           R0, R10, R0
20DEBE:  STRD.W          R10, R6, [R8]
20DEC2:  ADD             R0, R1
20DEC4:  STR.W           R0, [R8,#8]
20DEC8:  STR.W           R12, [R3,#0x34]
20DECC:  LDRB.W          R0, [R11,#0x10]
20DED0:  LDRB.W          R1, [R11,#0x11]
20DED4:  LDRD.W          R2, R3, [R11,#0x14]
20DED8:  LDR             R6, [SP,#0x40+var_24]
20DEDA:  STRD.W          R6, R8, [SP,#0x40+var_40]
20DEDE:  BLX             j_inflate_fast
20DEE2:  LDR             R3, [SP,#0x40+var_24]
20DEE4:  MOV             R2, R0
20DEE6:  LDRD.W          R5, R4, [R3,#0x1C]
20DEEA:  LDRD.W          R0, R12, [R3,#0x30]
20DEEE:  LDRD.W          R10, R6, [R8]
20DEF2:  CMP             R12, R0
20DEF4:  BCS.W           loc_20E1E8
20DEF8:  MVN.W           R1, R12
20DEFC:  ADD.W           LR, R1, R0
20DF00:  CMP             R2, #0
20DF02:  BEQ.W           loc_20E1F6
20DF06:  CMP             R2, #1
20DF08:  MOV.W           R0, #9
20DF0C:  IT EQ
20DF0E:  MOVEQ           R0, #7
20DF10:  STR.W           R0, [R11]
20DF14:  CMP             R0, #9
20DF16:  BLS.W           loc_20E288
20DF1A:  B               def_20E28C; jumptable 0020E28C default case
20DF1C:  LDR.W           R0, [R11,#0xC]
20DF20:  CMP             R5, R0
20DF22:  BCS             loc_20DF3C
20DF24:  CMP             R6, #0
20DF26:  BEQ.W           loc_20E2E0
20DF2A:  LDRB.W          R1, [R10],#1
20DF2E:  SUBS            R6, #1
20DF30:  MOVS            R2, #0
20DF32:  LSLS            R1, R5
20DF34:  ORRS            R4, R1
20DF36:  ADDS            R5, #8
20DF38:  CMP             R5, R0
20DF3A:  BCC             loc_20DF24
20DF3C:  LDR             R1, [SP,#0x40+var_30]
20DF3E:  LDR.W           R0, [R1,R0,LSL#2]
20DF42:  LDR.W           R1, [R11,#8]
20DF46:  ANDS            R0, R4
20DF48:  ADD.W           R8, R1, R0,LSL#3
20DF4C:  LDRB.W          R0, [R1,R0,LSL#3]
20DF50:  LDRB.W          R3, [R8,#1]
20DF54:  CMP             R0, #0
20DF56:  SUB.W           R5, R5, R3
20DF5A:  LSR.W           R4, R4, R3
20DF5E:  BEQ.W           loc_20E1BA
20DF62:  LDR             R3, [SP,#0x40+var_24]
20DF64:  LSLS            R1, R0, #0x1B
20DF66:  BMI.W           loc_20E1D0
20DF6A:  LSLS            R1, R0, #0x19
20DF6C:  BMI.W           loc_20E212
20DF70:  STR.W           R0, [R11,#0xC]
20DF74:  LDR.W           R0, [R8,#4]
20DF78:  ADD.W           R0, R8, R0,LSL#3
20DF7C:  STR.W           R0, [R11,#8]
20DF80:  MOVS            R0, #1
20DF82:  CMP             R0, #9
20DF84:  BLS.W           loc_20E288
20DF88:  B               def_20E28C; jumptable 0020E28C default case
20DF8A:  LDR.W           R3, [R11,#8]
20DF8E:  CMP             R5, R3
20DF90:  BCS             loc_20DFAA
20DF92:  CMP             R6, #0
20DF94:  BEQ.W           loc_20E310
20DF98:  LDRB.W          R0, [R10],#1
20DF9C:  SUBS            R6, #1
20DF9E:  MOVS            R2, #0
20DFA0:  LSLS            R0, R5
20DFA2:  ORRS            R4, R0
20DFA4:  ADDS            R5, #8
20DFA6:  CMP             R5, R3
20DFA8:  BCC             loc_20DF92
20DFAA:  LDR             R1, [SP,#0x40+var_34]
20DFAC:  SUBS            R5, R5, R3
20DFAE:  LDR.W           R8, [R11,#4]
20DFB2:  LDRB.W          R0, [R11,#0x11]
20DFB6:  LDR.W           R1, [R1,R3,LSL#2]
20DFBA:  LDR.W           R9, [R11,#0x18]
20DFBE:  ANDS            R1, R4
20DFC0:  LSRS            R4, R3
20DFC2:  ADD             R8, R1
20DFC4:  MOVS            R1, #3
20DFC6:  STM.W           R11, {R1,R8,R9}
20DFCA:  STR.W           R0, [R11,#0xC]
20DFCE:  LDR             R3, [SP,#0x40+var_24]
20DFD0:  CMP             R5, R0
20DFD2:  BCC             loc_20DFDE
20DFD4:  B               loc_20DFF6
20DFD6:  LDR.W           R0, [R11,#0xC]
20DFDA:  CMP             R5, R0
20DFDC:  BCS             loc_20DFF6
20DFDE:  CMP             R6, #0
20DFE0:  BEQ.W           loc_20E2E0
20DFE4:  LDRB.W          R1, [R10],#1
20DFE8:  SUBS            R6, #1
20DFEA:  MOVS            R2, #0
20DFEC:  LSLS            R1, R5
20DFEE:  ORRS            R4, R1
20DFF0:  ADDS            R5, #8
20DFF2:  CMP             R5, R0
20DFF4:  BCC             loc_20DFDE
20DFF6:  LDR             R1, [SP,#0x40+var_2C]
20DFF8:  LDR.W           R0, [R1,R0,LSL#2]
20DFFC:  LDR.W           R1, [R11,#8]
20E000:  AND.W           R3, R0, R4
20E004:  ADD.W           R8, R1, R3,LSL#3
20E008:  LDRB.W          R3, [R1,R3,LSL#3]
20E00C:  LDRB.W          R0, [R8,#1]
20E010:  TST.W           R3, #0x10
20E014:  SUB.W           R5, R5, R0
20E018:  LSR.W           R4, R4, R0
20E01C:  BNE.W           loc_20E19C
20E020:  LSLS            R0, R3, #0x19
20E022:  BMI.W           loc_20E324
20E026:  STR.W           R3, [R11,#0xC]
20E02A:  LDR.W           R0, [R8,#4]
20E02E:  ADD.W           R0, R8, R0,LSL#3
20E032:  STR.W           R0, [R11,#8]
20E036:  MOVS            R0, #3
20E038:  LDR             R3, [SP,#0x40+var_24]
20E03A:  CMP             R0, #9
20E03C:  BLS.W           loc_20E288
20E040:  B               def_20E28C; jumptable 0020E28C default case
20E042:  LDR.W           R0, [R11,#8]
20E046:  CMP             R5, R0
20E048:  BCS             loc_20E062
20E04A:  CMP             R6, #0
20E04C:  BEQ.W           loc_20E2E0
20E050:  LDRB.W          R1, [R10],#1
20E054:  SUBS            R6, #1
20E056:  MOVS            R2, #0
20E058:  LSLS            R1, R5
20E05A:  ORRS            R4, R1
20E05C:  ADDS            R5, #8
20E05E:  CMP             R5, R0
20E060:  BCC             loc_20E04A
20E062:  LDR             R3, [SP,#0x40+var_38]
20E064:  SUBS            R5, R5, R0
20E066:  LDR.W           R8, [R11,#0xC]
20E06A:  MOVS            R1, #5
20E06C:  LDR.W           R3, [R3,R0,LSL#2]
20E070:  STR.W           R1, [R11]
20E074:  ANDS            R3, R4
20E076:  LSRS            R4, R0
20E078:  ADD             R3, R8
20E07A:  STR.W           R3, [R11,#0xC]
20E07E:  LDR             R0, [SP,#0x40+var_24]
20E080:  LDR             R0, [R0,#0x28]
20E082:  SUB.W           R1, R12, R0
20E086:  CMP             R3, R1
20E088:  BLS             loc_20E0D2
20E08A:  LDR             R0, [SP,#0x40+var_20]
20E08C:  SUBS            R3, R3, R1
20E08E:  LDR             R0, [R0]
20E090:  B               loc_20E0D4
20E092:  CMP.W           LR, #0
20E096:  BNE.W           loc_20E252
20E09A:  LDR             R0, [SP,#0x40+var_20]
20E09C:  LDR             R0, [R0]
20E09E:  CMP             R12, R0
20E0A0:  BEQ.W           loc_20E26C
20E0A4:  MOV             R0, R12
20E0A6:  STR             R0, [R3,#0x34]
20E0A8:  MOV             R0, R3
20E0AA:  LDR             R1, [SP,#0x40+var_28]
20E0AC:  BLX             j_inflate_flush
20E0B0:  LDR             R3, [SP,#0x40+var_24]
20E0B2:  MOV             R9, R0
20E0B4:  LDRD.W          R2, R0, [R3,#0x30]
20E0B8:  CMP             R0, R2
20E0BA:  BCS.W           loc_20E224
20E0BE:  LDR             R1, [SP,#0x40+var_20]
20E0C0:  MVNS            R3, R0
20E0C2:  ADD.W           LR, R3, R2
20E0C6:  LDR             R3, [SP,#0x40+var_24]
20E0C8:  LDR             R1, [R1]
20E0CA:  CMP             R0, R1
20E0CC:  BNE.W           loc_20E24A
20E0D0:  B               loc_20E230
20E0D2:  MOV             R0, R12
20E0D4:  LDR.W           R1, [R11,#4]
20E0D8:  CMP             R1, #0
20E0DA:  BEQ             loc_20E18E
20E0DC:  SUB.W           R8, R0, R3
20E0E0:  LDR             R3, [SP,#0x40+var_24]
20E0E2:  B               loc_20E0FE
20E0E4:  LDR             R0, [R3,#0x28]
20E0E6:  LDR             R1, [R3,#0x30]
20E0E8:  CMP             R1, R0
20E0EA:  BEQ             loc_20E10C
20E0EC:  CMP             R0, R1
20E0EE:  IT CC
20E0F0:  SUBCC.W         R12, R1, #1
20E0F4:  SUBS.W          LR, R12, R0
20E0F8:  MOV             R12, R0
20E0FA:  BNE             loc_20E166
20E0FC:  B               loc_20E10E
20E0FE:  CMP.W           LR, #0
20E102:  BNE             loc_20E166
20E104:  LDR             R0, [SP,#0x40+var_20]
20E106:  LDR             R0, [R0]
20E108:  CMP             R12, R0
20E10A:  BEQ             loc_20E0E4
20E10C:  MOV             R0, R12
20E10E:  STR             R0, [R3,#0x34]
20E110:  MOV             R0, R3
20E112:  LDR             R1, [SP,#0x40+var_28]
20E114:  BLX             j_inflate_flush
20E118:  LDR             R3, [SP,#0x40+var_24]
20E11A:  MOV             R9, R0
20E11C:  LDRD.W          R2, R0, [R3,#0x30]
20E120:  CMP             R0, R2
20E122:  BCS             loc_20E136
20E124:  LDR             R1, [SP,#0x40+var_20]
20E126:  MVNS            R3, R0
20E128:  ADD.W           LR, R3, R2
20E12C:  LDR             R3, [SP,#0x40+var_24]
20E12E:  LDR             R1, [R1]
20E130:  CMP             R0, R1
20E132:  BNE             loc_20E15C
20E134:  B               loc_20E142
20E136:  LDR             R1, [SP,#0x40+var_20]
20E138:  LDR             R1, [R1]
20E13A:  SUB.W           LR, R1, R0
20E13E:  CMP             R0, R1
20E140:  BNE             loc_20E15C
20E142:  LDR.W           R12, [R3,#0x28]
20E146:  CMP             R2, R12
20E148:  BEQ             loc_20E15C
20E14A:  CMP             R12, R2
20E14C:  IT CC
20E14E:  SUBCC           R0, R2, #1
20E150:  SUB.W           LR, R0, R12
20E154:  CMP.W           LR, #0
20E158:  BNE             loc_20E166
20E15A:  B               loc_20E2E4; jumptable 0020E28C case 8
20E15C:  MOV             R12, R0
20E15E:  CMP.W           LR, #0
20E162:  BEQ.W           loc_20E2E4; jumptable 0020E28C case 8
20E166:  LDRB.W          R0, [R8],#1
20E16A:  SUB.W           LR, LR, #1
20E16E:  STRB.W          R0, [R12],#1
20E172:  MOVS            R2, #0
20E174:  LDR             R0, [SP,#0x40+var_20]
20E176:  LDR             R0, [R0]
20E178:  CMP             R8, R0
20E17A:  IT EQ
20E17C:  LDREQ.W         R8, [R3,#0x28]
20E180:  LDR.W           R0, [R11,#4]
20E184:  SUBS            R0, #1
20E186:  STR.W           R0, [R11,#4]
20E18A:  BNE             loc_20E0FE
20E18C:  B               loc_20E190
20E18E:  LDR             R3, [SP,#0x40+var_24]
20E190:  MOVS            R0, #0
20E192:  STR.W           R0, [R11]
20E196:  CMP             R0, #9
20E198:  BLS             loc_20E288
20E19A:  B               def_20E28C; jumptable 0020E28C default case
20E19C:  AND.W           R0, R3, #0xF
20E1A0:  STR.W           R0, [R11,#8]
20E1A4:  LDR.W           R1, [R8,#4]
20E1A8:  MOVS            R0, #4
20E1AA:  STR.W           R0, [R11]
20E1AE:  STR.W           R1, [R11,#0xC]
20E1B2:  LDR             R3, [SP,#0x40+var_24]
20E1B4:  CMP             R0, #9
20E1B6:  BLS             loc_20E288
20E1B8:  B               def_20E28C; jumptable 0020E28C default case
20E1BA:  MOVS            R0, #6
20E1BC:  LDR.W           R1, [R8,#4]
20E1C0:  STR.W           R0, [R11]
20E1C4:  STR.W           R1, [R11,#8]
20E1C8:  LDR             R3, [SP,#0x40+var_24]
20E1CA:  CMP             R0, #9
20E1CC:  BLS             loc_20E288
20E1CE:  B               def_20E28C; jumptable 0020E28C default case
20E1D0:  AND.W           R0, R0, #0xF
20E1D4:  STR.W           R0, [R11,#8]
20E1D8:  LDR.W           R1, [R8,#4]
20E1DC:  MOVS            R0, #2
20E1DE:  STRD.W          R0, R1, [R11]
20E1E2:  CMP             R0, #9
20E1E4:  BLS             loc_20E288
20E1E6:  B               def_20E28C; jumptable 0020E28C default case
20E1E8:  LDR             R0, [SP,#0x40+var_20]
20E1EA:  LDR             R0, [R0]
20E1EC:  SUB.W           LR, R0, R12
20E1F0:  CMP             R2, #0
20E1F2:  BNE.W           loc_20DF06
20E1F6:  MOVS            R2, #0
20E1F8:  LDRB.W          R0, [R11,#0x10]
20E1FC:  MOVS            R1, #1
20E1FE:  LDR.W           R8, [R11,#0x14]
20E202:  STR.W           R1, [R11]
20E206:  STRD.W          R8, R0, [R11,#8]
20E20A:  CMP             R5, R0
20E20C:  BCC.W           loc_20DF24
20E210:  B               loc_20DF3C
20E212:  LSLS            R0, R0, #0x1A
20E214:  BPL.W           loc_20E338
20E218:  MOVS            R0, #7
20E21A:  STR.W           R0, [R11]
20E21E:  CMP             R0, #9
20E220:  BLS             loc_20E288
20E222:  B               def_20E28C; jumptable 0020E28C default case
20E224:  LDR             R1, [SP,#0x40+var_20]
20E226:  LDR             R1, [R1]
20E228:  SUB.W           LR, R1, R0
20E22C:  CMP             R0, R1
20E22E:  BNE             loc_20E24A
20E230:  LDR.W           R12, [R3,#0x28]
20E234:  CMP             R2, R12
20E236:  BEQ             loc_20E24A
20E238:  CMP             R12, R2
20E23A:  IT CC
20E23C:  SUBCC           R0, R2, #1
20E23E:  SUB.W           LR, R0, R12
20E242:  CMP.W           LR, #0
20E246:  BNE             loc_20E252
20E248:  B               loc_20E2E4; jumptable 0020E28C case 8
20E24A:  MOV             R12, R0
20E24C:  CMP.W           LR, #0
20E250:  BEQ             loc_20E2E4; jumptable 0020E28C case 8
20E252:  LDR.W           R0, [R11,#8]
20E256:  SUB.W           LR, LR, #1
20E25A:  STRB.W          R0, [R12],#1
20E25E:  MOVS            R0, #0
20E260:  STR.W           R0, [R11]
20E264:  MOVS            R2, #0
20E266:  CMP             R0, #9; switch 10 cases
20E268:  BLS             loc_20E288
20E26A:  B               def_20E28C; jumptable 0020E28C default case
20E26C:  LDR             R0, [R3,#0x28]
20E26E:  LDR             R1, [R3,#0x30]
20E270:  CMP             R1, R0
20E272:  BEQ.W           loc_20E0A4
20E276:  CMP             R0, R1
20E278:  IT CC
20E27A:  SUBCC.W         R12, R1, #1
20E27E:  SUBS.W          LR, R12, R0
20E282:  MOV             R12, R0
20E284:  BNE             loc_20E252
20E286:  B               loc_20E0A6
20E288:  MOV.W           R9, #1
20E28C:  TBB.W           [PC,R0]; switch jump
20E290:  DCB 0xD; jump table for switch statement
20E291:  DCB 0xC
20E292:  DCB 0xB
20E293:  DCB 0xA
20E294:  DCB 9
20E295:  DCB 6
20E296:  DCB 5
20E297:  DCB 0xE
20E298:  DCB 0x2A
20E299:  DCB 0x47
20E29A:  B               loc_20E092; jumptable 0020E28C case 6
20E29C:  LDR.W           R3, [R11,#0xC]; jumptable 0020E28C case 5
20E2A0:  B               loc_20E07E
20E2A2:  B               loc_20E042; jumptable 0020E28C case 4
20E2A4:  B               loc_20DFD6; jumptable 0020E28C case 3
20E2A6:  B               loc_20DF8A; jumptable 0020E28C case 2
20E2A8:  B               loc_20DF1C; jumptable 0020E28C case 1
20E2AA:  B               loc_20DE9E; jumptable 0020E28C case 0
20E2AC:  CMP             R5, #7; jumptable 0020E28C case 7
20E2AE:  STR.W           R12, [R3,#0x34]
20E2B2:  ITT HI
20E2B4:  ADDHI           R6, #1
20E2B6:  SUBHI.W         R10, R10, #1
20E2BA:  LDR             R1, [SP,#0x40+var_28]
20E2BC:  MOV             R0, R3
20E2BE:  BLX             j_inflate_flush
20E2C2:  LDR             R3, [SP,#0x40+var_24]
20E2C4:  MOV             R9, R0
20E2C6:  CMP             R5, #7
20E2C8:  LDRD.W          R0, R12, [R3,#0x30]
20E2CC:  IT HI
20E2CE:  SUBHI           R5, #8
20E2D0:  CMP             R0, R12
20E2D2:  BNE             loc_20E2E4; jumptable 0020E28C case 8
20E2D4:  MOVS            R0, #8
20E2D6:  MOV.W           R9, #1
20E2DA:  STR.W           R0, [R11]
20E2DE:  B               loc_20E2E4; jumptable 0020E28C case 8
20E2E0:  MOVS            R6, #0
20E2E2:  MOV             R9, R2
20E2E4:  STRD.W          R5, R4, [R3,#0x1C]; jumptable 0020E28C case 8
20E2E8:  LDR             R1, [SP,#0x40+var_28]
20E2EA:  LDR             R0, [R1]
20E2EC:  LDR             R2, [R1,#8]
20E2EE:  SUB.W           R0, R10, R0
20E2F2:  STRD.W          R10, R6, [R1]
20E2F6:  ADD             R0, R2
20E2F8:  STR             R0, [R1,#8]
20E2FA:  STR.W           R12, [R3,#0x34]
20E2FE:  MOV             R0, R3
20E300:  MOV             R2, R9
20E302:  ADD             SP, SP, #0x24 ; '$'
20E304:  POP.W           {R8-R11}
20E308:  POP.W           {R4-R7,LR}
20E30C:  B.W             j_j_inflate_flush
20E310:  MOVS            R6, #0
20E312:  MOV             R9, R2
20E314:  LDR             R3, [SP,#0x40+var_24]
20E316:  B               loc_20E2E4; jumptable 0020E28C case 8
20E318:  MOV             R9, #0xFFFFFFFE; jumptable 0020E28C default case
20E31C:  B               loc_20E2E4; jumptable 0020E28C case 8
20E31E:  MOV             R9, #0xFFFFFFFD; jumptable 0020E28C case 9
20E322:  B               loc_20E2E4; jumptable 0020E28C case 8
20E324:  MOVS            R0, #9
20E326:  MOV             R9, #0xFFFFFFFD
20E32A:  STR.W           R0, [R11]
20E32E:  ADR             R0, aInvalidDistanc; "invalid distance code"
20E330:  LDR             R1, [SP,#0x40+var_28]
20E332:  STR             R0, [R1,#0x18]
20E334:  LDR             R3, [SP,#0x40+var_24]
20E336:  B               loc_20E2E4; jumptable 0020E28C case 8
20E338:  MOVS            R0, #9
20E33A:  MOV             R9, #0xFFFFFFFD
20E33E:  STR.W           R0, [R11]
20E342:  ADR             R0, aInvalidLiteral; "invalid literal/length code"
20E344:  LDR             R1, [SP,#0x40+var_28]
20E346:  STR             R0, [R1,#0x18]
20E348:  B               loc_20E2E4; jumptable 0020E28C case 8
