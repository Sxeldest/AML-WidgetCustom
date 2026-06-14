; =========================================================
; Game Engine Function: sub_1070F0
; Address            : 0x1070F0 - 0x1073B4
; =========================================================

1070F0:  PUSH            {R4-R7,LR}
1070F2:  ADD             R7, SP, #0xC
1070F4:  PUSH.W          {R8-R11}
1070F8:  SUB             SP, SP, #0x44
1070FA:  MOV             R6, R0
1070FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x107108)
1070FE:  VMOV.I32        Q8, #0
107102:  MOV             R5, R1
107104:  ADD             R0, PC; __stack_chk_guard_ptr
107106:  MOVS            R1, #3
107108:  MOV             R9, R3
10710A:  MOV             R10, R2
10710C:  LDR             R0, [R0]; __stack_chk_guard
10710E:  LDR             R0, [R0]
107110:  STR             R0, [SP,#0x60+var_20]
107112:  MOVS            R0, #0
107114:  STRD.W          R0, R1, [R6,#0x14]
107118:  MOV             R1, R6
10711A:  VST1.64         {D16-D17}, [R1]!
10711E:  ANDS.W          R11, R5, #1
107122:  STR             R0, [R1]
107124:  BNE             loc_107138
107126:  LSLS            R0, R5, #0x1E
107128:  BPL.W           loc_107328
10712C:  LSLS            R0, R5, #0x1D
10712E:  BPL             loc_107140
107130:  LSLS            R0, R5, #0x1C
107132:  BPL             loc_107140
107134:  MOVS            R0, #2
107136:  B               loc_1071A6
107138:  TST.W           R5, #0xE
10713C:  BNE.W           loc_107328
107140:  LDR.W           R8, [R7,#arg_0]
107144:  MOV             R0, R8
107146:  BLX             sub_10AA08
10714A:  CBZ             R0, loc_1071A4
10714C:  MOV             R4, R0
10714E:  STR             R0, [R6,#0xC]
107150:  MOV             R0, R8
107152:  MOVS            R1, #0xF
107154:  STR             R5, [SP,#0x60+var_4C]
107156:  BL              sub_1073C0
10715A:  STR             R0, [SP,#0x60+var_34]
10715C:  MOV             R0, R8
10715E:  BLX             sub_10AA34
107162:  LDRB.W          R1, [R4],#1
107166:  MOV             R5, R0
107168:  STR             R4, [SP,#0x60+var_24]
10716A:  ADD             R0, SP, #0x60+var_24
10716C:  BL              sub_1075C0
107170:  LDR             R1, [SP,#0x60+var_24]
107172:  MVNS            R4, R5
107174:  LDR             R3, [SP,#0x60+var_34]
107176:  CMP             R0, #0
107178:  LDRB.W          R2, [R1],#1
10717C:  BIC.W           R8, R3, #1
107180:  STR             R1, [SP,#0x60+var_24]
107182:  IT EQ
107184:  MOVEQ           R0, R5
107186:  CMP             R2, #0xFF
107188:  STR             R0, [SP,#0x60+var_40]
10718A:  STR.W           R9, [SP,#0x60+var_50]
10718E:  STR.W           R10, [SP,#0x60+var_3C]
107192:  STRD.W          R11, R6, [SP,#0x60+var_48]
107196:  BEQ             loc_1071AA
107198:  ADD             R0, SP, #0x60+var_24
10719A:  BL              sub_107664
10719E:  LDR             R1, [SP,#0x60+var_24]
1071A0:  ADD             R0, R1
1071A2:  B               loc_1071AC
1071A4:  MOVS            R0, #8
1071A6:  STR             R0, [R6,#0x18]
1071A8:  B               loc_107328
1071AA:  MOVS            R0, #0
1071AC:  LDRB.W          R5, [R1],#1
1071B0:  ADD.W           R9, R8, R4
1071B4:  STR             R0, [SP,#0x60+var_38]
1071B6:  STR             R1, [SP,#0x60+var_24]
1071B8:  ADD             R0, SP, #0x60+var_24
1071BA:  BL              sub_107664
1071BE:  LDR             R1, [SP,#0x60+var_24]
1071C0:  ADD.W           R11, SP, #0x60+var_28
1071C4:  STR             R1, [SP,#0x60+var_28]
1071C6:  ADD             R0, R1
1071C8:  STR             R0, [SP,#0x60+var_34]
1071CA:  LDR             R4, =(sub_1075C0+1 - 0x1071D0)
1071CC:  ADD             R4, PC; sub_1075C0
1071CE:  B               loc_1071D8
1071D0:  CMP             R9, R6
1071D2:  BCC.W           loc_10739C
1071D6:  LDR             R1, [SP,#0x60+var_28]
1071D8:  LDR             R0, [SP,#0x60+var_34]
1071DA:  CMP             R1, R0
1071DC:  BCS.W           loc_10739C
1071E0:  MOV             R0, R11
1071E2:  MOV             R1, R5
1071E4:  BLX             R4; sub_1075C0
1071E6:  MOV             R6, R0
1071E8:  MOV             R0, R11
1071EA:  MOV             R1, R5
1071EC:  BLX             R4; sub_1075C0
1071EE:  MOV             R8, R0
1071F0:  MOV             R0, R11
1071F2:  MOV             R1, R5
1071F4:  BLX             R4; sub_1075C0
1071F6:  MOV             R10, R0
1071F8:  MOV             R0, R11
1071FA:  BL              sub_107664
1071FE:  CMP             R6, R9
107200:  ITT LS
107202:  ADDLS.W         R1, R8, R6
107206:  CMPLS           R9, R1
107208:  BCS             loc_1071D0
10720A:  CMP.W           R10, #0
10720E:  BEQ.W           loc_107322
107212:  LDR             R1, [SP,#0x60+var_40]
107214:  CMP             R0, #0
107216:  ADD.W           R2, R10, R1
10721A:  BEQ             loc_107308
10721C:  LDR             R1, [SP,#0x60+var_34]
10721E:  ADD.W           R11, SP, #0x60+var_30
107222:  LDR.W           R9, [SP,#0x60+var_50]
107226:  ADD             R0, R1
107228:  STR             R2, [SP,#0x60+var_54]
10722A:  SUB.W           R8, R0, #1
10722E:  LDR             R0, [SP,#0x60+var_4C]
107230:  STR.W           R8, [SP,#0x60+var_2C]
107234:  AND.W           R10, R0, #8
107238:  AND.W           R1, R0, #5
10723C:  AND.W           R0, R0, #6
107240:  STR             R1, [SP,#0x60+var_34]
107242:  STR             R0, [SP,#0x60+var_40]
107244:  ADD             R0, SP, #0x60+var_2C
107246:  BL              sub_1076F8
10724A:  MOV             R6, R0
10724C:  CMP             R0, #1
10724E:  BLT             loc_1072A2
107250:  LDR             R0, [SP,#0x60+var_38]
107252:  CMP             R0, #0
107254:  BEQ.W           loc_1073A4
107258:  SUB.W           R0, R0, R6,LSL#2
10725C:  LDR             R1, [R0]
10725E:  CBZ             R1, loc_107294
107260:  LDR             R4, [R1,R0]
107262:  CBZ             R4, loc_107294
107264:  LDR             R0, [SP,#0x60+var_3C]
107266:  CMP             R0, #0
107268:  BEQ             loc_1072F2
10726A:  MOV             R0, R9
10726C:  BL              sub_107730
107270:  CMP             R0, #0
107272:  STR             R0, [SP,#0x60+var_30]
107274:  BEQ.W           loc_1073A8
107278:  LDR.W           R1, [R9,#-0x20]
10727C:  CMP             R1, #0
10727E:  BEQ.W           loc_1073A8
107282:  LDR             R0, [R4]
107284:  MOV             R2, R11
107286:  LDR             R3, [R0,#0x10]
107288:  MOV             R0, R4
10728A:  BLX             R3
10728C:  CBZ             R0, loc_1072F2
10728E:  LDR             R0, [SP,#0x60+var_48]
107290:  CBZ             R0, loc_1072E0
107292:  B               loc_10736C
107294:  LDR             R0, [SP,#0x60+var_34]
107296:  CMP             R0, #0
107298:  BNE             loc_107342
10729A:  CMP.W           R10, #0
10729E:  BNE             loc_1072F2
1072A0:  B               loc_1073A4
1072A2:  CMP.W           R6, #0xFFFFFFFF
1072A6:  BLE             loc_1072B0
1072A8:  LDR             R0, [SP,#0x60+var_40]
1072AA:  CMP             R0, #2
1072AC:  BNE             loc_1072F2
1072AE:  B               loc_10734E
1072B0:  LDR             R0, [SP,#0x60+var_3C]
1072B2:  CBZ             R0, loc_1072E8
1072B4:  MOV             R0, R9
1072B6:  BL              sub_107730
1072BA:  CMP             R0, #0
1072BC:  BEQ             loc_1073A8
1072BE:  LDR.W           R3, [R9,#-0x20]; int
1072C2:  CMP             R3, #0
1072C4:  BEQ             loc_1073A8
1072C6:  LDR             R2, [SP,#0x60+var_38]; int
1072C8:  ASRS            R5, R6, #0x1F
1072CA:  MOV             R4, R0
1072CC:  STRD.W          R0, R9, [SP,#0x60+var_60]; int
1072D0:  MOV             R0, R6; int
1072D2:  MOV             R1, R5; int
1072D4:  BL              sub_107688
1072D8:  CBZ             R0, loc_1072F2
1072DA:  LDR             R0, [SP,#0x60+var_48]
1072DC:  CMP             R0, #0
1072DE:  BNE             loc_107386
1072E0:  CMP.W           R10, #0
1072E4:  BNE             loc_1072F2
1072E6:  B               loc_1073A8
1072E8:  LDR             R0, [SP,#0x60+var_34]
1072EA:  CBNZ            R0, loc_107342
1072EC:  CMP.W           R10, #0
1072F0:  BEQ             loc_1073B0
1072F2:  LDR             R4, [SP,#0x60+var_2C]
1072F4:  MOV             R0, R11
1072F6:  STR             R4, [SP,#0x60+var_30]
1072F8:  BL              sub_1076F8
1072FC:  CBZ             R0, loc_107322
1072FE:  ADD.W           R8, R4, R0
107302:  STR.W           R8, [SP,#0x60+var_2C]
107306:  B               loc_107244
107308:  LDR             R0, [SP,#0x60+var_4C]
10730A:  AND.W           R0, R0, #6
10730E:  CMP             R0, #2
107310:  BNE             loc_107322
107312:  LDR             R1, [SP,#0x60+var_44]
107314:  MOVS            R0, #0
107316:  STRD.W          R0, R0, [R1]
10731A:  MOVS            R0, #6
10731C:  STR             R0, [R1,#0x18]
10731E:  STR             R2, [R1,#0x10]
107320:  B               loc_107328
107322:  LDR             R1, [SP,#0x60+var_44]
107324:  MOVS            R0, #8
107326:  STR             R0, [R1,#0x18]
107328:  LDR             R0, [SP,#0x60+var_20]
10732A:  LDR             R1, =(__stack_chk_guard_ptr - 0x107330)
10732C:  ADD             R1, PC; __stack_chk_guard_ptr
10732E:  LDR             R1, [R1]; __stack_chk_guard
107330:  LDR             R1, [R1]
107332:  CMP             R1, R0
107334:  ITTT EQ
107336:  ADDEQ           SP, SP, #0x44 ; 'D'
107338:  POPEQ.W         {R8-R11}
10733C:  POPEQ           {R4-R7,PC}
10733E:  BLX             __stack_chk_fail
107342:  LDR             R4, [SP,#0x60+var_44]
107344:  LDR             R0, [SP,#0x60+var_54]
107346:  STR             R0, [R4,#0x10]
107348:  ASRS            R0, R6, #0x1F
10734A:  STR             R6, [R4]
10734C:  B               loc_107358
10734E:  LDR             R4, [SP,#0x60+var_44]
107350:  MOVS            R0, #0
107352:  LDR             R1, [SP,#0x60+var_54]
107354:  STR             R1, [R4,#0x10]
107356:  STR             R0, [R4]
107358:  STR             R0, [R4,#4]
10735A:  MOV             R0, R9
10735C:  STR.W           R8, [R4,#8]
107360:  BL              sub_107730
107364:  MOVS            R1, #6
107366:  STR             R0, [R4,#0x14]
107368:  STR             R1, [R4,#0x18]
10736A:  B               loc_107328
10736C:  LDR             R2, [SP,#0x60+var_44]
10736E:  MOVS            R0, #6
107370:  LDR             R1, [SP,#0x60+var_30]
107372:  LDR             R3, [SP,#0x60+var_54]
107374:  STR             R0, [R2,#0x18]
107376:  ASRS            R0, R6, #0x1F
107378:  STRD.W          R3, R1, [R2,#0x10]
10737C:  STRD.W          R6, R0, [R2]
107380:  STR.W           R8, [R2,#8]
107384:  B               loc_107328
107386:  LDR             R1, [SP,#0x60+var_44]
107388:  MOVS            R0, #6
10738A:  LDR             R2, [SP,#0x60+var_54]
10738C:  STRD.W          R2, R4, [R1,#0x10]
107390:  STR             R0, [R1,#0x18]
107392:  STRD.W          R6, R5, [R1]
107396:  STR.W           R8, [R1,#8]
10739A:  B               loc_107328
10739C:  LDR             R0, [SP,#0x60+var_3C]; int
10739E:  LDR             R1, [SP,#0x60+var_50]; void *
1073A0:  BL              sub_1073FC
1073A4:  LDR             R0, [SP,#0x60+var_3C]
1073A6:  B               loc_1073AA
1073A8:  MOVS            R0, #1; int
1073AA:  MOV             R1, R9; void *
1073AC:  BL              sub_1073FC
1073B0:  MOVS            R0, #0
1073B2:  B               loc_1073AA
