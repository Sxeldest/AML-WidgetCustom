; =========================================================
; Game Engine Function: INT123_frame_output_format
; Address            : 0x223E70 - 0x22444E
; =========================================================

223E70:  PUSH            {R4-R7,LR}
223E72:  ADD             R7, SP, #0xC
223E74:  PUSH.W          {R8-R11}
223E78:  SUB             SP, SP, #0x24
223E7A:  MOV             R8, R0
223E7C:  MOVW            R0, #0x92B4
223E80:  LDR.W           R0, [R8,R0]
223E84:  MOVW            R3, #0xB33C
223E88:  STR             R0, [SP,#0x40+var_24]
223E8A:  LDR.W           R4, [R8,R3]
223E8E:  MOVS            R1, #8
223E90:  ADD.W           R9, R8, R3
223E94:  ANDS.W          R2, R4, #0x400
223E98:  MOV.W           R3, #0xC
223E9C:  AND.W           R1, R1, R4,LSR#1
223EA0:  EOR.W           R11, R3, R2,LSR#8
223EA4:  MOVW            R2, #0xB340
223EA8:  MOV             R10, R1
223EAA:  IT NE
223EAC:  MOVNE.W         R10, #6
223EB0:  ANDS.W          R6, R4, #7
223EB4:  IT NE
223EB6:  MOVNE           R0, #1
223EB8:  ANDS.W          LR, R4, #8
223EBC:  IT NE
223EBE:  MOVNE           R0, #2
223EC0:  TST.W           R4, #0xF
223EC4:  IT NE
223EC6:  STRNE           R0, [SP,#0x40+var_24]
223EC8:  LDR.W           R3, [R8,R2]
223ECC:  CBZ             R3, loc_223EFC
223ECE:  MOVW            R2, #0x5621
223ED2:  CMP             R3, R2
223ED4:  STR             R3, [SP,#0x40+var_20]
223ED6:  STR             R6, [SP,#0x40+var_30]
223ED8:  BLE             loc_223F46
223EDA:  CMP.W           R3, #0x7D00
223EDE:  BLT             loc_223F66
223EE0:  BEQ             loc_223F98
223EE2:  MOVW            R2, #0xAC44
223EE6:  CMP             R3, R2
223EE8:  BEQ             loc_223FA2
223EEA:  MOVW            R2, #0xBB80
223EEE:  CMP             R3, R2
223EF0:  BNE             loc_223FCA
223EF2:  MOVS            R2, #8
223EF4:  CMP.W           R10, #1
223EF8:  BLS             loc_223FD2
223EFA:  B               loc_223FFA
223EFC:  ADD             R1, SP, #0x40+var_2C
223EFE:  MOV             R0, R8
223F00:  MOV             R2, R10
223F02:  MOVS            R3, #2
223F04:  MOVS            R4, #2
223F06:  BL              sub_2244A4
223F0A:  CMP             R0, #0
223F0C:  BNE.W           loc_2242EE
223F10:  CMP.W           R10, #2
223F14:  ADD             R1, SP, #0x40+var_2C
223F16:  IT HI
223F18:  MOVHI           R4, R10
223F1A:  MOV             R0, R8
223F1C:  MOV             R2, R4
223F1E:  MOV             R3, R11
223F20:  BL              sub_2244A4
223F24:  CMP             R0, #0
223F26:  BNE.W           loc_2242EE
223F2A:  LDR             R0, [SP,#0x40+var_24]
223F2C:  CMP             R0, #1
223F2E:  BEQ.W           loc_224368
223F32:  CMP             R0, #2
223F34:  BNE.W           loc_224374
223F38:  LDRB.W          R0, [R9]
223F3C:  LSLS            R0, R0, #0x1C
223F3E:  BMI.W           loc_224374
223F42:  MOVS            R0, #1
223F44:  B               loc_224372
223F46:  MOVW            R2, #0x2EDF
223F4A:  CMP             R3, R2
223F4C:  BGT             loc_223F80
223F4E:  CMP.W           R3, #0x1F40
223F52:  BEQ             loc_223FAC
223F54:  MOVW            R2, #0x2B11
223F58:  CMP             R3, R2
223F5A:  BNE             loc_223FCA
223F5C:  MOVS            R2, #1
223F5E:  CMP.W           R10, #1
223F62:  BLS             loc_223FD2
223F64:  B               loc_223FFA
223F66:  MOVW            R2, #0x5622
223F6A:  CMP             R3, R2
223F6C:  BEQ             loc_223FB6
223F6E:  MOVW            R2, #0x5DC0
223F72:  CMP             R3, R2
223F74:  BNE             loc_223FCA
223F76:  MOVS            R2, #5
223F78:  CMP.W           R10, #1
223F7C:  BLS             loc_223FD2
223F7E:  B               loc_223FFA
223F80:  MOVW            R2, #0x2EE0
223F84:  CMP             R3, R2
223F86:  BEQ             loc_223FC0
223F88:  CMP.W           R3, #0x3E80
223F8C:  BNE             loc_223FCA
223F8E:  MOVS            R2, #3
223F90:  CMP.W           R10, #1
223F94:  BLS             loc_223FD2
223F96:  B               loc_223FFA
223F98:  MOVS            R2, #6
223F9A:  CMP.W           R10, #1
223F9E:  BLS             loc_223FD2
223FA0:  B               loc_223FFA
223FA2:  MOVS            R2, #7
223FA4:  CMP.W           R10, #1
223FA8:  BLS             loc_223FD2
223FAA:  B               loc_223FFA
223FAC:  MOVS            R2, #0
223FAE:  CMP.W           R10, #1
223FB2:  BLS             loc_223FD2
223FB4:  B               loc_223FFA
223FB6:  MOVS            R2, #4
223FB8:  CMP.W           R10, #1
223FBC:  BLS             loc_223FD2
223FBE:  B               loc_223FFA
223FC0:  MOVS            R2, #2
223FC2:  CMP.W           R10, #1
223FC6:  BLS             loc_223FD2
223FC8:  B               loc_223FFA
223FCA:  MOVS            R2, #9
223FCC:  CMP.W           R10, #1
223FD0:  BHI             loc_223FFA
223FD2:  RSB.W           R5, R0, R0,LSL#4
223FD6:  ADD.W           R2, R2, R2,LSL#1
223FDA:  LSLS            R5, R5, #3
223FDC:  ADD.W           R2, R5, R2,LSL#2
223FE0:  ADD             R2, R1
223FE2:  MOVW            R5, #0xB2E0
223FE6:  ADD             R2, R8
223FE8:  ADD             R2, R5
223FEA:  MOV             R5, R1
223FEC:  LDRB            R6, [R2]
223FEE:  CBNZ            R6, loc_22404E
223FF0:  ADDS            R6, R5, #1
223FF2:  ADDS            R2, #1
223FF4:  CMP             R5, #1
223FF6:  MOV             R5, R6
223FF8:  BLT             loc_223FEC
223FFA:  CMP.W           R10, #2
223FFE:  MOV             R5, R10
224000:  IT LS
224002:  MOVLS           R5, #2
224004:  MOVW            R2, #0x5621
224008:  CMP             R3, R2
22400A:  BLE             loc_22402E
22400C:  CMP.W           R3, #0x7D00
224010:  BLT             loc_224056
224012:  BEQ             loc_224088
224014:  MOVW            R2, #0xAC44
224018:  CMP             R3, R2
22401A:  BEQ             loc_224092
22401C:  MOVW            R2, #0xBB80
224020:  CMP             R3, R2
224022:  BNE             loc_2240BA
224024:  MOV             R12, R9
224026:  MOVS            R2, #8
224028:  CMP             R5, R11
22402A:  BLT             loc_2240C2
22402C:  B               loc_2240EE
22402E:  MOVW            R2, #0x2EDF
224032:  CMP             R3, R2
224034:  BGT             loc_224070
224036:  CMP.W           R3, #0x1F40
22403A:  BEQ             loc_22409C
22403C:  MOVW            R2, #0x2B11
224040:  CMP             R3, R2
224042:  BNE             loc_2240BA
224044:  MOV             R12, R9
224046:  MOVS            R2, #1
224048:  CMP             R5, R11
22404A:  BLT             loc_2240C2
22404C:  B               loc_2240EE
22404E:  LDR.W           R0, =(unk_5F0740 - 0x224056)
224052:  ADD             R0, PC; unk_5F0740
224054:  B               loc_2242E8
224056:  MOVW            R2, #0x5622
22405A:  CMP             R3, R2
22405C:  BEQ             loc_2240A6
22405E:  MOVW            R2, #0x5DC0
224062:  CMP             R3, R2
224064:  BNE             loc_2240BA
224066:  MOV             R12, R9
224068:  MOVS            R2, #5
22406A:  CMP             R5, R11
22406C:  BLT             loc_2240C2
22406E:  B               loc_2240EE
224070:  MOVW            R2, #0x2EE0
224074:  CMP             R3, R2
224076:  BEQ             loc_2240B0
224078:  CMP.W           R3, #0x3E80
22407C:  BNE             loc_2240BA
22407E:  MOV             R12, R9
224080:  MOVS            R2, #3
224082:  CMP             R5, R11
224084:  BLT             loc_2240C2
224086:  B               loc_2240EE
224088:  MOV             R12, R9
22408A:  MOVS            R2, #6
22408C:  CMP             R5, R11
22408E:  BLT             loc_2240C2
224090:  B               loc_2240EE
224092:  MOV             R12, R9
224094:  MOVS            R2, #7
224096:  CMP             R5, R11
224098:  BLT             loc_2240C2
22409A:  B               loc_2240EE
22409C:  MOV             R12, R9
22409E:  MOVS            R2, #0
2240A0:  CMP             R5, R11
2240A2:  BLT             loc_2240C2
2240A4:  B               loc_2240EE
2240A6:  MOV             R12, R9
2240A8:  MOVS            R2, #4
2240AA:  CMP             R5, R11
2240AC:  BLT             loc_2240C2
2240AE:  B               loc_2240EE
2240B0:  MOV             R12, R9
2240B2:  MOVS            R2, #2
2240B4:  CMP             R5, R11
2240B6:  BLT             loc_2240C2
2240B8:  B               loc_2240EE
2240BA:  MOV             R12, R9
2240BC:  MOVS            R2, #9
2240BE:  CMP             R5, R11
2240C0:  BGE             loc_2240EE
2240C2:  RSB.W           R6, R0, R0,LSL#4
2240C6:  ADD.W           R2, R2, R2,LSL#1
2240CA:  ADD.W           R6, R5, R6,LSL#3
2240CE:  ADD.W           R2, R6, R2,LSL#2
2240D2:  MOVW            R6, #0xB2E0
2240D6:  ADD             R2, R8
2240D8:  ADD             R2, R6
2240DA:  MOV             R6, R5
2240DC:  LDRB.W          R9, [R2]
2240E0:  CMP.W           R9, #0
2240E4:  BNE             loc_224102
2240E6:  ADDS            R6, #1
2240E8:  ADDS            R2, #1
2240EA:  CMP             R6, R11
2240EC:  BLT             loc_2240DC
2240EE:  CMP             R0, #1
2240F0:  BEQ             loc_224110
2240F2:  CMP             R0, #2
2240F4:  MOV             R9, R12
2240F6:  BNE             loc_224122
2240F8:  CMP.W           LR, #0
2240FC:  BNE             loc_22411A
2240FE:  MOVS            R0, #1
224100:  B               loc_224120
224102:  LDR.W           R0, =(unk_5F0740 - 0x22410C)
224106:  MOV             R9, R12
224108:  ADD             R0, PC; unk_5F0740
22410A:  LDR.W           R0, [R0,R6,LSL#2]
22410E:  B               loc_2242EC
224110:  LDR             R0, [SP,#0x40+var_30]
224112:  MOV             R9, R12
224114:  CBZ             R0, loc_22411E
224116:  MOVS            R0, #1
224118:  B               loc_224122
22411A:  MOVS            R0, #2
22411C:  B               loc_224122
22411E:  MOVS            R0, #2
224120:  STR             R0, [SP,#0x40+var_24]
224122:  MOVW            R2, #0x5621
224126:  CMP             R3, R2
224128:  BLE             loc_22414C
22412A:  CMP.W           R3, #0x7D00
22412E:  BLT             loc_22416C
224130:  BEQ             loc_22419E
224132:  MOVW            R2, #0xAC44
224136:  CMP             R3, R2
224138:  BEQ             loc_2241A8
22413A:  MOVW            R2, #0xBB80
22413E:  CMP             R3, R2
224140:  BNE             loc_2241D0
224142:  MOVS            R2, #8
224144:  CMP.W           R10, #1
224148:  BLS             loc_2241D8
22414A:  B               loc_2241FE
22414C:  MOVW            R2, #0x2EDF
224150:  CMP             R3, R2
224152:  BGT             loc_224186
224154:  CMP.W           R3, #0x1F40
224158:  BEQ             loc_2241B2
22415A:  MOVW            R2, #0x2B11
22415E:  CMP             R3, R2
224160:  BNE             loc_2241D0
224162:  MOVS            R2, #1
224164:  CMP.W           R10, #1
224168:  BLS             loc_2241D8
22416A:  B               loc_2241FE
22416C:  MOVW            R2, #0x5622
224170:  CMP             R3, R2
224172:  BEQ             loc_2241BC
224174:  MOVW            R2, #0x5DC0
224178:  CMP             R3, R2
22417A:  BNE             loc_2241D0
22417C:  MOVS            R2, #5
22417E:  CMP.W           R10, #1
224182:  BLS             loc_2241D8
224184:  B               loc_2241FE
224186:  MOVW            R2, #0x2EE0
22418A:  CMP             R3, R2
22418C:  BEQ             loc_2241C6
22418E:  CMP.W           R3, #0x3E80
224192:  BNE             loc_2241D0
224194:  MOVS            R2, #3
224196:  CMP.W           R10, #1
22419A:  BLS             loc_2241D8
22419C:  B               loc_2241FE
22419E:  MOVS            R2, #6
2241A0:  CMP.W           R10, #1
2241A4:  BLS             loc_2241D8
2241A6:  B               loc_2241FE
2241A8:  MOVS            R2, #7
2241AA:  CMP.W           R10, #1
2241AE:  BLS             loc_2241D8
2241B0:  B               loc_2241FE
2241B2:  MOVS            R2, #0
2241B4:  CMP.W           R10, #1
2241B8:  BLS             loc_2241D8
2241BA:  B               loc_2241FE
2241BC:  MOVS            R2, #4
2241BE:  CMP.W           R10, #1
2241C2:  BLS             loc_2241D8
2241C4:  B               loc_2241FE
2241C6:  MOVS            R2, #2
2241C8:  CMP.W           R10, #1
2241CC:  BLS             loc_2241D8
2241CE:  B               loc_2241FE
2241D0:  MOVS            R2, #9
2241D2:  CMP.W           R10, #1
2241D6:  BHI             loc_2241FE
2241D8:  RSB.W           R6, R0, R0,LSL#4
2241DC:  ADD.W           R2, R2, R2,LSL#1
2241E0:  LSLS            R6, R6, #3
2241E2:  ADD.W           R2, R6, R2,LSL#2
2241E6:  ADD             R2, R1
2241E8:  MOVW            R6, #0xB2E0
2241EC:  ADD             R2, R8
2241EE:  ADD             R2, R6
2241F0:  LDRB            R6, [R2]
2241F2:  CBNZ            R6, loc_224244
2241F4:  ADDS            R6, R1, #1
2241F6:  ADDS            R2, #1
2241F8:  CMP             R1, #1
2241FA:  MOV             R1, R6
2241FC:  BLT             loc_2241F0
2241FE:  MOVW            R1, #0x5621
224202:  CMP             R3, R1
224204:  BLE             loc_224226
224206:  CMP.W           R3, #0x7D00
22420A:  BLT             loc_22424E
22420C:  BEQ             loc_22427C
22420E:  MOVW            R1, #0xAC44
224212:  CMP             R3, R1
224214:  BEQ             loc_224284
224216:  MOVW            R1, #0xBB80
22421A:  CMP             R3, R1
22421C:  BNE             loc_2242A4
22421E:  MOVS            R1, #8
224220:  CMP             R5, R11
224222:  BLT             loc_2242AA
224224:  B               loc_2242CE
224226:  MOVW            R1, #0x2EDF
22422A:  CMP             R3, R1
22422C:  BGT             loc_224266
22422E:  CMP.W           R3, #0x1F40
224232:  BEQ             loc_22428C
224234:  MOVW            R1, #0x2B11
224238:  CMP             R3, R1
22423A:  BNE             loc_2242A4
22423C:  MOVS            R1, #1
22423E:  CMP             R5, R11
224240:  BLT             loc_2242AA
224242:  B               loc_2242CE
224244:  LDR             R0, =(unk_5F0740 - 0x22424A)
224246:  ADD             R0, PC; unk_5F0740
224248:  LDR.W           R0, [R0,R1,LSL#2]
22424C:  B               loc_2242EC
22424E:  MOVW            R1, #0x5622
224252:  CMP             R3, R1
224254:  BEQ             loc_224294
224256:  MOVW            R1, #0x5DC0
22425A:  CMP             R3, R1
22425C:  BNE             loc_2242A4
22425E:  MOVS            R1, #5
224260:  CMP             R5, R11
224262:  BLT             loc_2242AA
224264:  B               loc_2242CE
224266:  MOVW            R1, #0x2EE0
22426A:  CMP             R3, R1
22426C:  BEQ             loc_22429C
22426E:  CMP.W           R3, #0x3E80
224272:  BNE             loc_2242A4
224274:  MOVS            R1, #3
224276:  CMP             R5, R11
224278:  BLT             loc_2242AA
22427A:  B               loc_2242CE
22427C:  MOVS            R1, #6
22427E:  CMP             R5, R11
224280:  BLT             loc_2242AA
224282:  B               loc_2242CE
224284:  MOVS            R1, #7
224286:  CMP             R5, R11
224288:  BLT             loc_2242AA
22428A:  B               loc_2242CE
22428C:  MOVS            R1, #0
22428E:  CMP             R5, R11
224290:  BLT             loc_2242AA
224292:  B               loc_2242CE
224294:  MOVS            R1, #4
224296:  CMP             R5, R11
224298:  BLT             loc_2242AA
22429A:  B               loc_2242CE
22429C:  MOVS            R1, #2
22429E:  CMP             R5, R11
2242A0:  BLT             loc_2242AA
2242A2:  B               loc_2242CE
2242A4:  MOVS            R1, #9
2242A6:  CMP             R5, R11
2242A8:  BGE             loc_2242CE
2242AA:  RSB.W           R0, R0, R0,LSL#4
2242AE:  ADD.W           R1, R1, R1,LSL#1
2242B2:  ADD.W           R0, R5, R0,LSL#3
2242B6:  ADD.W           R0, R0, R1,LSL#2
2242BA:  MOVW            R1, #0xB2E0
2242BE:  ADD             R0, R8
2242C0:  ADD             R0, R1
2242C2:  LDRB            R1, [R0]
2242C4:  CBNZ            R1, loc_2242E4
2242C6:  ADDS            R5, #1
2242C8:  ADDS            R0, #1
2242CA:  CMP             R5, R11
2242CC:  BLT             loc_2242C2
2242CE:  LSLS            R0, R4, #0x1A
2242D0:  BPL.W           loc_2243DE
2242D4:  MOVW            R0, #0xB468
2242D8:  MOVS            R1, #1
2242DA:  STR.W           R1, [R8,R0]
2242DE:  MOV.W           R0, #0xFFFFFFFF
2242E2:  B               loc_224360
2242E4:  LDR             R0, =(unk_5F0740 - 0x2242EA)
2242E6:  ADD             R0, PC; unk_5F0740
2242E8:  LDR.W           R0, [R0,R5,LSL#2]
2242EC:  STR             R0, [SP,#0x40+var_2C]
2242EE:  MOVW            R1, #0xB2BC
2242F2:  MOVW            R3, #0xB2B8
2242F6:  LDR.W           R5, [R8,R1]
2242FA:  ADD             R3, R8
2242FC:  LDRD.W          R0, R2, [SP,#0x40+var_24]
224300:  CMP             R2, R5
224302:  MOVW            R6, #0xB2B0
224306:  ADD             R6, R8
224308:  ITT EQ
22430A:  LDREQ           R5, [R3]
22430C:  CMPEQ           R0, R5
22430E:  BNE             loc_22431C
224310:  LDR             R5, [SP,#0x40+var_2C]
224312:  LDR             R4, [R6]
224314:  CMP             R5, R4
224316:  BNE             loc_22431C
224318:  MOVS            R0, #0
22431A:  B               loc_224360
22431C:  ADD             R1, R8
22431E:  STR             R2, [R1]
224320:  STR             R0, [R3]
224322:  LDR             R3, [SP,#0x40+var_2C]
224324:  STR             R3, [R6]
224326:  TST.W           R3, #0xF
22432A:  BEQ             loc_224330
22432C:  MOVS            R0, #1
22432E:  B               loc_224356
224330:  LSLS            R0, R3, #0x19
224332:  BMI             loc_224350
224334:  LSLS            R0, R3, #0x11
224336:  BMI             loc_224354
224338:  MOVS            R0, #4
22433A:  CMP.W           R3, #0x200
22433E:  BEQ             loc_224356
224340:  ANDS.W          R1, R3, #0x100
224344:  BNE             loc_224356
224346:  CMP.W           R3, #0x400
22434A:  BNE             loc_2243B8
22434C:  MOVS            R0, #8
22434E:  B               loc_224356
224350:  MOVS            R0, #2
224352:  B               loc_224356
224354:  MOVS            R0, #3
224356:  MOVW            R1, #0xB2B4
22435A:  STR.W           R0, [R8,R1]
22435E:  MOVS            R0, #1
224360:  ADD             SP, SP, #0x24 ; '$'
224362:  POP.W           {R8-R11}
224366:  POP             {R4-R7,PC}
224368:  LDRB.W          R0, [R9]
22436C:  LSLS            R0, R0, #0x1D
22436E:  BNE             loc_224374
224370:  MOVS            R0, #2
224372:  STR             R0, [SP,#0x40+var_24]
224374:  ADD             R1, SP, #0x40+var_2C
224376:  MOV             R0, R8
224378:  MOV             R2, R10
22437A:  MOVS            R3, #2
22437C:  BL              sub_2244A4
224380:  CMP             R0, #0
224382:  BNE             loc_2242EE
224384:  ADD             R1, SP, #0x40+var_2C
224386:  MOV             R0, R8
224388:  MOV             R2, R4
22438A:  MOV             R3, R11
22438C:  BL              sub_2244A4
224390:  CMP             R0, #0
224392:  BNE             loc_2242EE
224394:  LDR.W           R2, [R9]
224398:  TST.W           R2, #0x20
22439C:  BNE             loc_2242D4
22439E:  LDR             R0, =(off_677664 - 0x2243A6)
2243A0:  LSLS            R1, R2, #0x1C
2243A2:  ADD             R0, PC; off_677664
2243A4:  LDR             R0, [R0]
2243A6:  LDR             R0, [R0]
2243A8:  BMI             loc_224416
2243AA:  LDR             R1, =(byte_61CD7E - 0x2243B4)
2243AC:  LSLS            R3, R2, #0x1D
2243AE:  ADR             R3, aMono; "mono, "
2243B0:  ADD             R1, PC; byte_61CD7E
2243B2:  IT EQ
2243B4:  MOVEQ           R3, R1
2243B6:  B               loc_224418
2243B8:  MOVW            R0, #0xB2B4
2243BC:  MOVS            R1, #0
2243BE:  STR.W           R1, [R8,R0]
2243C2:  LDRB.W          R0, [R9]
2243C6:  LSLS            R0, R0, #0x1A
2243C8:  BMI.W           loc_2242D4
2243CC:  LDR             R0, =(off_677664 - 0x2243D8)
2243CE:  MOVW            R2, #0x121
2243D2:  LDR             R1, =(aCProjectsOswra_1 - 0x2243DA); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2243D4:  ADD             R0, PC; off_677664
2243D6:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2243D8:  LDR             R0, [R0]
2243DA:  LDR             R0, [R0]
2243DC:  B               loc_224410
2243DE:  LDR             R0, =(off_677664 - 0x2243EA)
2243E0:  LSLS            R5, R4, #0x1B
2243E2:  LDR             R2, =(byte_61CD7E - 0x2243EE)
2243E4:  ADR             R5, a8bit; "8bit, "
2243E6:  ADD             R0, PC; off_677664
2243E8:  LDR             R1, =(aCProjectsOswra_2 - 0x2243F2); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2243EA:  ADD             R2, PC; byte_61CD7E
2243EC:  LDR             R0, [R0]
2243EE:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2243F0:  LDR             R0, [R0]; stream
2243F2:  IT PL
2243F4:  MOVPL           R5, R2
2243F6:  STRD.W          R5, R3, [SP,#0x40+var_40]
2243FA:  ADR             R5, aMono; "mono, "
2243FC:  LDR             R3, [SP,#0x40+var_30]
2243FE:  CMP             R3, #0
224400:  ADR             R3, aStereo; "stereo, "
224402:  IT EQ
224404:  MOVEQ           R5, R2
224406:  CMP.W           LR, #0
22440A:  IT EQ
22440C:  MOVEQ           R3, R5
22440E:  MOVS            R2, #0xF0
224410:  BLX             fprintf
224414:  B               loc_2242D4
224416:  ADR             R3, aStereo; "stereo, "
224418:  LDR.W           R12, =(unk_5F11C0 - 0x22442A)
22441C:  MOVW            R1, #0x92E8
224420:  LDR.W           R6, [R8,R1]
224424:  LSLS            R2, R2, #0x1B
224426:  ADD             R12, PC; unk_5F11C0
224428:  LDR             R5, =(byte_61CD7E - 0x224434)
22442A:  ADR             R2, a8bit; "8bit, "
22442C:  LDR.W           R6, [R12,R6,LSL#2]
224430:  ADD             R5, PC; byte_61CD7E
224432:  LDR             R1, =(aCProjectsOswra_3 - 0x224446); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
224434:  IT PL
224436:  MOVPL           R2, R5
224438:  MOV.W           R12, R6,ASR#2
22443C:  ASRS            R5, R6, #1
22443E:  STRD.W          R2, R6, [SP,#0x40+var_40]
224442:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
224444:  STRD.W          R5, R12, [SP,#0x40+var_38]
224448:  MOVW            R2, #0x109
22444C:  B               loc_224410
