; =========================================================
; Game Engine Function: sub_233E10
; Address            : 0x233E10 - 0x2342B0
; =========================================================

233E10:  PUSH            {R4-R7,LR}
233E12:  ADD             R7, SP, #0xC
233E14:  PUSH.W          {R8-R11}
233E18:  SUB             SP, SP, #0x14
233E1A:  MOV             R4, R0
233E1C:  AND.W           R0, R1, #0xC00
233E20:  CMP.W           R0, #0xC00
233E24:  ITT NE
233E26:  ANDNE.W         R0, R1, #0xF000
233E2A:  CMPNE.W         R0, #0xF000
233E2E:  BEQ             loc_233EB2
233E30:  MOV             R9, #0xFFE00000
233E38:  CMP             R1, R9
233E3A:  BCC             loc_233EB2
233E3C:  ANDS.W          R0, R1, #0x60000
233E40:  BEQ             loc_233EB2
233E42:  LSLS            R0, R1, #0xB
233E44:  MOV.W           R2, #1
233E48:  MOV.W           R6, #1
233E4C:  MOVW            R10, #0x92CC
233E50:  ITT MI
233E52:  BICMI.W         R2, R2, R1,LSR#19
233E56:  MOVMI           R6, #0
233E58:  MOVW            R5, #0xB33C
233E5C:  MOVW            LR, #0x92C8
233E60:  STR.W           R6, [R4,R10]
233E64:  LDR.W           R8, [R4,R5]
233E68:  STR.W           R2, [R4,LR]
233E6C:  TST.W           R8, #0x80
233E70:  BNE             loc_233E84
233E72:  MOVW            R12, #0xB294
233E76:  LDR.W           R3, [R4,R12]
233E7A:  CBZ             R3, loc_233E84
233E7C:  EORS            R3, R1
233E7E:  TST.W           R3, #0x180000
233E82:  BEQ             loc_233EE4
233E84:  UBFX.W          R3, R1, #0x11, #2
233E88:  MOVW            R0, #0x92D8
233E8C:  RSB.W           R3, R3, #4
233E90:  STR             R3, [R4,R0]
233E92:  UBFX.W          R3, R1, #0xA, #2
233E96:  CMP             R3, #3
233E98:  BNE             loc_233ECA
233E9A:  MOVS.W          R0, R8,LSL#26
233E9E:  BMI             loc_233EBE
233EA0:  LDR.W           R0, =(off_677664 - 0x233EB0)
233EA4:  MOVW            R2, #0x38F
233EA8:  LDR.W           R1, =(aCProjectsOswra_52 - 0x233EB2); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233EAC:  ADD             R0, PC; off_677664
233EAE:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233EB0:  B               loc_234220
233EB2:  MOVW            R0, #0xB33C
233EB6:  LDRB            R0, [R4,R0]
233EB8:  LSLS            R0, R0, #0x1A
233EBA:  BPL.W           loc_234214
233EBE:  MOVS            R5, #0
233EC0:  MOV             R0, R5
233EC2:  ADD             SP, SP, #0x14
233EC4:  POP.W           {R8-R11}
233EC8:  POP             {R4-R7,PC}
233ECA:  MOVS            R0, #6
233ECC:  CMP             R6, #0
233ECE:  IT EQ
233ED0:  ADDEQ.W         R0, R2, R2,LSL#1
233ED4:  MOVW            R2, #0x92E8
233ED8:  ADD             R0, R3
233EDA:  STR             R0, [R4,R2]
233EDC:  MOVW            R0, #0xB294
233EE0:  ADDS            R2, R4, R0
233EE2:  B               loc_233EE8
233EE4:  ADD.W           R2, R4, R12
233EE8:  ADR.W           R0, dword_2342B0
233EEC:  VDUP.32         Q9, R1
233EF0:  VLD1.64         {D16-D17}, [R0@128]
233EF4:  ADR.W           R0, dword_2342C0
233EF8:  MOVS            R3, #1
233EFA:  MOVW            R6, #0x92E0
233EFE:  VNEG.S32        Q8, Q8
233F02:  BIC.W           R3, R3, R1,LSR#16
233F06:  STR             R3, [R4,R6]
233F08:  UBFX.W          R3, R1, #3, #1
233F0C:  MOVW            R6, #0x92FC
233F10:  STR             R3, [R4,R6]
233F12:  UBFX.W          R3, R1, #2, #1
233F16:  VSHL.U32        Q8, Q8, Q9
233F1A:  VLD1.64         {D18-D19}, [R0@128]
233F1E:  MOV.W           R6, #0x9300
233F22:  ADD.W           R11, R4, R5
233F26:  MOVW            R5, #0x9328
233F2A:  VAND            Q8, Q8, Q9
233F2E:  STR             R3, [R4,R6]
233F30:  AND.W           R3, R1, #3
233F34:  MOVW            R6, #0x9304
233F38:  ADD             LR, R4
233F3A:  VMOV.32         R0, D17[0]
233F3E:  STR             R3, [R4,R6]
233F40:  UBFX.W          R3, R1, #0xC, #4
233F44:  MOVS            R6, #0
233F46:  CMP             R3, #0
233F48:  IT EQ
233F4A:  MOVEQ           R6, #1
233F4C:  STR             R6, [R4,R5]
233F4E:  MOVS            R6, #2
233F50:  CMP             R0, #3
233F52:  MOVW            R0, #0x92B4
233F56:  IT EQ
233F58:  MOVEQ           R6, #1
233F5A:  CMP             R3, #0
233F5C:  STR             R6, [R4,R0]
233F5E:  MOVW            R0, #0x92EC
233F62:  ADD             R0, R4
233F64:  MOVW            R6, #0x92E4
233F68:  STR             R3, [R4,R6]
233F6A:  STR             R0, [SP,#0x30+var_24]
233F6C:  VST1.32         {D16-D17}, [R0]
233F70:  STR             R1, [R2]
233F72:  BNE             loc_233F8E
233F74:  MOVW            R0, #0x932C
233F78:  LDR             R1, [R4,R0]
233F7A:  CMP.W           R1, #0xFFFFFFFF
233F7E:  BLE.W           loc_234122
233F82:  VMOV.32         R0, D16[0]
233F86:  ADD             R0, R1
233F88:  MOVW            R1, #0x9308
233F8C:  STR             R0, [R4,R1]
233F8E:  MOVW            R1, #0x92D8
233F92:  MOVW            R12, #:lower16:(elf_hash_chain+0x13118)
233F96:  LDR             R3, [R4,R1]
233F98:  ADDS            R2, R4, R5
233F9A:  ADDS            R0, R4, R6
233F9C:  MOVT            R12, #:upper16:(elf_hash_chain+0x13118)
233FA0:  CMP             R3, #3
233FA2:  BEQ             loc_234000
233FA4:  CMP             R3, #2
233FA6:  BEQ             loc_234082
233FA8:  CMP             R3, #1
233FAA:  BNE.W           loc_234102
233FAE:  LDR             R1, =(INT123_do_layer1_ptr - 0x233FB8)
233FB0:  MOVW            R3, #0x92DC
233FB4:  ADD             R1, PC; INT123_do_layer1_ptr
233FB6:  LDR             R1, [R1]; INT123_do_layer1
233FB8:  STR             R1, [R4,R3]
233FBA:  LDR             R1, [R2]
233FBC:  CMP             R1, #0
233FBE:  BNE.W           loc_2340CE
233FC2:  LDR.W           R1, [LR]
233FC6:  MOVW            R3, #0x2EE0
233FCA:  LDR             R2, =(unk_5F1040 - 0x233FD6)
233FCC:  LDR             R0, [R0]
233FCE:  ADD.W           R1, R1, R1,LSL#1
233FD2:  ADD             R2, PC; unk_5F1040
233FD4:  ADD.W           R1, R2, R1,LSL#6
233FD8:  MOVW            R2, #0x92E8
233FDC:  LDR             R2, [R4,R2]
233FDE:  LDR.W           R0, [R1,R0,LSL#2]
233FE2:  LDR             R1, =(unk_5F11C0 - 0x233FE8)
233FE4:  ADD             R1, PC; unk_5F11C0
233FE6:  MULS            R0, R3
233FE8:  LDR.W           R1, [R1,R2,LSL#2]
233FEC:  BLX             __aeabi_idiv
233FF0:  LDR             R1, [SP,#0x30+var_24]
233FF2:  LDR             R1, [R1]
233FF4:  ADD             R0, R1
233FF6:  MOV             R1, #0xFFFFFFFC
233FFA:  ADD.W           R0, R1, R0,LSL#2
233FFE:  B               loc_2340C8
234000:  LDR             R6, =(INT123_do_layer3_ptr - 0x234012)
234002:  MOVW            R3, #0x92B4
234006:  MOVW            R5, #0x92E0
23400A:  ADD.W           R8, R4, R5
23400E:  ADD             R6, PC; INT123_do_layer3_ptr
234010:  ADD             R3, R4
234012:  MOVW            R5, #0x92DC
234016:  MOV             R1, LR
234018:  LDR             R6, [R6]; INT123_do_layer3
23401A:  MOV             LR, R11
23401C:  STR             R6, [R4,R5]
23401E:  MOVS            R5, #0x11
234020:  MOV             R11, LR
234022:  LDR             R6, [R3]
234024:  LDR             R3, [R1]
234026:  CMP             R6, #1
234028:  MOV.W           R6, #0x20 ; ' '
23402C:  IT EQ
23402E:  MOVEQ           R5, #9
234030:  IT EQ
234032:  MOVEQ           R6, #0x11
234034:  CMP             R3, #0
234036:  IT NE
234038:  MOVNE           R6, R5
23403A:  MOVW            R5, #0x9380
23403E:  STR             R6, [R4,R5]
234040:  LDR.W           R1, [R8]
234044:  CMP             R1, #0
234046:  ITTT NE
234048:  ADDNE           R1, R4, R5
23404A:  ORRNE.W         R6, R6, #2
23404E:  STRNE           R6, [R1]
234050:  LDR             R1, [R2]
234052:  CBNZ            R1, loc_2340CE
234054:  LDR             R2, =(unk_5F1040 - 0x234066)
234056:  ADD.W           R5, R3, R3,LSL#1
23405A:  LDR             R0, [R0]
23405C:  MOVW            R6, #0x92E8
234060:  LDR             R1, =(unk_5F11C0 - 0x23406E)
234062:  ADD             R2, PC; unk_5F1040
234064:  ADD.W           R2, R2, R5,LSL#6
234068:  LDR             R6, [R4,R6]
23406A:  ADD             R1, PC; unk_5F11C0
23406C:  ADD.W           R0, R2, R0,LSL#2
234070:  MOV             R11, LR
234072:  LDR.W           R1, [R1,R6,LSL#2]
234076:  LDR.W           R0, [R0,#0x80]
23407A:  LSLS            R1, R3
23407C:  MUL.W           R0, R0, R12
234080:  B               loc_2340BC
234082:  LDR             R3, =(INT123_do_layer2_ptr - 0x23408C)
234084:  MOVW            R6, #0x92DC
234088:  ADD             R3, PC; INT123_do_layer2_ptr
23408A:  LDR             R3, [R3]; INT123_do_layer2
23408C:  STR             R3, [R4,R6]
23408E:  LDR             R2, [R2]
234090:  CBNZ            R2, loc_2340CE
234092:  LDR.W           R2, [LR]
234096:  LDR             R3, =(unk_5F1040 - 0x2340A2)
234098:  LDR             R0, [R0]
23409A:  ADD.W           R2, R2, R2,LSL#1
23409E:  ADD             R3, PC; unk_5F1040
2340A0:  ADD.W           R2, R3, R2,LSL#6
2340A4:  MOVW            R3, #0x92E8
2340A8:  ADD.W           R0, R2, R0,LSL#2
2340AC:  LDR             R2, =(unk_5F11C0 - 0x2340B6)
2340AE:  LDR             R3, [R4,R3]
2340B0:  LDR             R0, [R0,#0x40]
2340B2:  ADD             R2, PC; unk_5F11C0
2340B4:  MUL.W           R0, R0, R12
2340B8:  LDR.W           R1, [R2,R3,LSL#2]
2340BC:  BLX             __aeabi_idiv
2340C0:  LDR             R1, [SP,#0x30+var_24]
2340C2:  LDR             R1, [R1]
2340C4:  ADD             R0, R1
2340C6:  SUBS            R0, #4
2340C8:  MOVW            R1, #0x9308
2340CC:  STR             R0, [R4,R1]
2340CE:  MOVW            R0, #0x9308
2340D2:  LDR             R2, [R4,R0]
2340D4:  CMP.W           R2, #0xD80
2340D8:  BLE             loc_2340FE
2340DA:  LDRB.W          R0, [R11]
2340DE:  LSLS            R0, R0, #0x1A
2340E0:  BMI.W           loc_233EBE
2340E4:  LDR             R0, =(off_677664 - 0x2340EE)
2340E6:  ADDS            R2, #4
2340E8:  LDR             R3, [SP,#0x30+var_24]
2340EA:  ADD             R0, PC; off_677664
2340EC:  LDR             R1, =(aCProjectsOswra_53 - 0x2340F4); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2340EE:  LDR             R0, [R0]
2340F0:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2340F2:  LDR             R3, [R3]
2340F4:  LDR             R0, [R0]
2340F6:  SUBS            R3, R2, R3
2340F8:  MOV.W           R2, #0x3FC
2340FC:  B               loc_23411C
2340FE:  MOVS            R5, #1
234100:  B               loc_233EC0
234102:  LDRB.W          R0, [R11]
234106:  LSLS            R0, R0, #0x1A
234108:  BMI.W           loc_233EBE
23410C:  LDR             R0, =(off_677664 - 0x234118)
23410E:  MOVW            R2, #0x3F6
234112:  LDR             R1, =(aCProjectsOswra_54 - 0x23411A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234114:  ADD             R0, PC; off_677664
234116:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234118:  LDR             R0, [R0]
23411A:  LDR             R0, [R0]; stream
23411C:  BLX             fprintf
234120:  B               loc_233EBE
234122:  MOVW            R0, #0xB2F4
234126:  LDRB            R0, [R4,R0]
234128:  TST.W           R0, #0xC
23412C:  BEQ.W           loc_234236
234130:  STR.W           R11, [SP,#0x30+var_30]
234134:  MOVW            R0, #0xB2E0
234138:  LDR             R0, [R4,R0]
23413A:  ADD             R1, SP, #0x30+var_20
23413C:  MOVW            R6, #0x932C
234140:  MOV             R8, LR
234142:  LDR             R2, [R0,#0xC]
234144:  MOV             R0, R4
234146:  BLX             R2
234148:  MOV             R5, R0
23414A:  CMP             R5, #1
23414C:  BLT             loc_23422A
23414E:  ADD.W           R0, R4, R10
234152:  STR             R0, [SP,#0x30+var_28]
234154:  MOVW            R0, #0xB2E0
234158:  ADD.W           R10, R4, R0
23415C:  MOVW            R0, #0x92E8
234160:  ADD.W           R11, R4, R6
234164:  ADD             R0, R4
234166:  STR             R0, [SP,#0x30+var_2C]
234168:  LDR.W           R0, [R10]
23416C:  MOVS            R1, #5
23416E:  LDR             R2, [R0,#0x10]
234170:  MOV             R6, R1
234172:  ADD             R1, SP, #0x30+var_20
234174:  MOV             R0, R4
234176:  BLX             R2
234178:  MOV             R5, R0
23417A:  CMP             R5, #1
23417C:  BLT             loc_23422A
23417E:  LDR             R0, [SP,#0x30+var_20]
234180:  AND.W           R1, R0, #0xC00
234184:  CMP.W           R1, #0xC00
234188:  ITT NE
23418A:  ANDNE.W         R1, R0, #0xF000
23418E:  CMPNE.W         R1, #0xF000
234192:  BEQ             loc_2341E4
234194:  CMP             R0, R9
234196:  BCC             loc_2341E4
234198:  ANDS.W          R1, R0, #0x60000
23419C:  BEQ             loc_2341E4
23419E:  LSLS            R1, R0, #0xB
2341A0:  BMI             loc_2341AA
2341A2:  MOV.W           R12, #1
2341A6:  MOVS            R2, #1
2341A8:  B               loc_2341B4
2341AA:  MOVS            R1, #1
2341AC:  BIC.W           R2, R1, R0,LSR#19
2341B0:  MOV.W           R12, #0
2341B4:  MOV             R1, R8
2341B6:  CMP.W           R12, #0
2341BA:  LDR             R5, [R1]
2341BC:  RSB.W           R1, R2, #0
2341C0:  MOV.W           R3, #6
2341C4:  IT EQ
2341C6:  ANDEQ.W         R3, R1, #3
2341CA:  UBFX.W          R0, R0, #0xA, #2
2341CE:  CMP             R2, R5
2341D0:  BNE             loc_2341E4
2341D2:  LDR             R1, [SP,#0x30+var_28]
2341D4:  LDR             R1, [R1]
2341D6:  CMP             R12, R1
2341D8:  BNE             loc_2341E4
2341DA:  LDR             R1, [SP,#0x30+var_2C]
2341DC:  ADD             R0, R3
2341DE:  LDR             R1, [R1]
2341E0:  CMP             R0, R1
2341E2:  BEQ             loc_234252
2341E4:  LDR.W           R0, [R10]
2341E8:  ADDS            R1, R6, #1
2341EA:  SUBS            R2, R6, #1
2341EC:  MOVW            R3, #0xFFFF
2341F0:  CMP             R2, R3
2341F2:  BLT             loc_23416E
2341F4:  LDR             R2, [R0,#0x1C]
2341F6:  SUBS            R1, #1
2341F8:  MOV             R0, R4
2341FA:  BLX             R2
2341FC:  MOVS            R5, #0
2341FE:  LDR             R0, =(off_677664 - 0x23420A)
234200:  MOVW            R2, #0x3BE
234204:  LDR             R1, =(aCProjectsOswra_55 - 0x23420C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234206:  ADD             R0, PC; off_677664
234208:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23420A:  LDR             R0, [R0]
23420C:  LDR             R0, [R0]; stream
23420E:  BLX             fprintf
234212:  B               loc_233EC0
234214:  LDR             R0, =(off_677664 - 0x234220)
234216:  MOVW            R2, #0x376
23421A:  LDR             R1, =(aCProjectsOswra_56 - 0x234222); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23421C:  ADD             R0, PC; off_677664
23421E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234220:  LDR             R0, [R0]
234222:  LDR             R0, [R0]; stream
234224:  BLX             fprintf
234228:  B               loc_233EBE
23422A:  ADDS.W          R0, R5, #0xA
23422E:  BNE             loc_2341FE
234230:  MOV             R5, #0xFFFFFFF6
234234:  B               loc_233EC0
234236:  MOVS.W          R0, R8,LSL#26
23423A:  BMI             loc_2341FC
23423C:  LDR             R0, =(off_677664 - 0x234248)
23423E:  MOVW            R2, #0x33B
234242:  LDR             R1, =(aCProjectsOswra_57 - 0x23424A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234244:  ADD             R0, PC; off_677664
234246:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
234248:  LDR             R0, [R0]
23424A:  LDR             R0, [R0]; stream
23424C:  BLX             fprintf
234250:  B               loc_2341FC
234252:  LDR.W           R0, [R10]
234256:  MOV             R1, R6
234258:  LDR             R2, [R0,#0x1C]
23425A:  MOV             R0, R4
23425C:  BLX             R2
23425E:  MOVW            R1, #0x9308
234262:  SUBS            R0, R6, #4
234264:  STR             R0, [R4,R1]
234266:  MOV             LR, R8
234268:  MOVW            R5, #0x9328
23426C:  LDR             R0, [SP,#0x30+var_24]
23426E:  LDR             R0, [R0]
234270:  SUBS            R0, R6, R0
234272:  MOVW            R6, #0x92E4
234276:  SUBS            R2, R0, #4
234278:  STR.W           R2, [R11]
23427C:  LDR.W           R11, [SP,#0x30+var_30]
234280:  LDRB.W          R0, [R11]
234284:  LSLS            R0, R0, #0x1A
234286:  BMI.W           loc_233F8E
23428A:  MOVW            R0, #0xB338
23428E:  LDR             R0, [R4,R0]
234290:  CMP             R0, #2
234292:  BLT.W           loc_233F8E
234296:  LDR             R0, =(off_677664 - 0x23429E)
234298:  ADR             R1, aNoteFreeFormat; "Note: free format frame size %li\n"
23429A:  ADD             R0, PC; off_677664
23429C:  LDR             R0, [R0]
23429E:  LDR             R0, [R0]; stream
2342A0:  BLX             fprintf
2342A4:  MOVW            R6, #0x92E4
2342A8:  MOVW            R5, #0x9328
2342AC:  MOV             LR, R8
2342AE:  B               loc_233F8E
