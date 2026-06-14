; =========================================================
; Game Engine Function: sub_150224
; Address            : 0x150224 - 0x15042A
; =========================================================

150224:  PUSH            {R4-R7,LR}
150226:  ADD             R7, SP, #0xC
150228:  PUSH.W          {R8-R11}
15022C:  SUB             SP, SP, #4
15022E:  VPUSH           {D8-D10}
150232:  SUB             SP, SP, #0x10
150234:  MOV             R10, R0
150236:  BL              sub_F0B30
15023A:  STR             R0, [SP,#0x48+var_3C]
15023C:  MOVW            R0, #0xEA60
150240:  LDR.W           R4, [R10,R0]
150244:  ADD             R0, R10
150246:  LDR.W           R11, [R0,#4]
15024A:  CMP             R4, R11
15024C:  BEQ.W           loc_15041C
150250:  LDR             R0, =(off_23496C - 0x150262)
150252:  MOVW            R1, #0x13BC
150256:  VLDR            S16, =200.0
15025A:  MOVW            R8, #0x9C40
15025E:  ADD             R0, PC; off_23496C
150260:  VLDR            S18, =90.0
150264:  MOVW            R6, #0xA410
150268:  LDR             R0, [R0]; dword_23DEF4
15026A:  STR             R0, [SP,#0x48+var_40]
15026C:  LDR             R0, [R0]
15026E:  LDR.W           R0, [R0,#0x3B0]
150272:  LDR             R0, [R0]
150274:  LDR             R0, [R0,R1]
150276:  STR             R0, [SP,#0x48+var_48]
150278:  MOVS            R0, #0
15027A:  STR             R0, [SP,#0x48+var_44]
15027C:  LDR.W           R9, [R4]
150280:  ADD.W           R5, R10, R9
150284:  LDRB.W          R0, [R5,R8]
150288:  CMP             R0, #0
15028A:  BEQ.W           loc_150390
15028E:  LDRB            R0, [R5,R6]
150290:  CBZ             R0, loc_1502B4
150292:  ADD.W           R0, R10, R9,LSL#2
150296:  MOVW            R1, #0xABE0
15029A:  LDR             R0, [R0,R1]
15029C:  LDR             R1, [SP,#0x48+var_3C]
15029E:  SUBS            R0, R1, R0
1502A0:  MOVW            R1, #0x3A99
1502A4:  CMP             R0, R1
1502A6:  BCC             loc_1502B4
1502A8:  UXTH.W          R1, R9
1502AC:  MOV             R0, R10
1502AE:  BL              sub_14FEB6
1502B2:  B               loc_150390
1502B4:  LDR.W           R6, [R10,R9,LSL#2]
1502B8:  MOV             R0, R6
1502BA:  BL              sub_10A128
1502BE:  EOR.W           R1, R0, #1
1502C2:  MOV             R0, R6
1502C4:  BL              sub_10A144
1502C8:  MOV             R0, R6
1502CA:  BL              sub_109AB4
1502CE:  VMOV            S0, R0
1502D2:  VCMP.F32        S0, #0.0
1502D6:  VMRS            APSR_nzcv, FPSCR
1502DA:  BNE             loc_150304
1502DC:  UXTH.W          R1, R9
1502E0:  MOVW            R6, #0xA410
1502E4:  ADD             R5, R6
1502E6:  BL              sub_150438
1502EA:  LDRB            R0, [R5]
1502EC:  CMP             R0, #0
1502EE:  BNE             loc_150390
1502F0:  MOVS            R0, #1
1502F2:  STRB            R0, [R5]
1502F4:  ADD.W           R5, R10, R9,LSL#2
1502F8:  BL              sub_F0B30
1502FC:  MOVW            R1, #0xABE0
150300:  STR             R0, [R5,R1]
150302:  B               loc_150390
150304:  MOV             R0, R6
150306:  BL              sub_F8E1C
15030A:  MOV             R5, R0
15030C:  MOV             R0, R6
15030E:  BL              sub_109864
150312:  VMOV            S20, R5
150316:  VCMP.F32        S20, S16
15031A:  VMRS            APSR_nzcv, FPSCR
15031E:  BPL             loc_150336
150320:  CMP             R0, #4
150322:  BEQ             loc_150336
150324:  MOV             R0, R6
150326:  BL              sub_10A1C0
15032A:  CBZ             R0, loc_150336
15032C:  UXTH.W          R1, R9
150330:  BL              sub_150438
150334:  B               loc_15038C
150336:  MOV             R0, R6
150338:  BL              sub_109F36
15033C:  CBZ             R0, loc_15039A
15033E:  LDR             R0, [SP,#0x48+var_40]
150340:  LDR             R0, [R0]
150342:  LDR.W           R1, [R0,#0x20C]
150346:  LDR             R0, [R6,#0x18]
150348:  LDRB.W          R1, [R1,#0x24]
15034C:  CMP             R1, #0
15034E:  BEQ             loc_1503EC
150350:  CMP             R0, #0
150352:  MOV.W           R1, #0
150356:  MOV             R0, R6
150358:  IT GT
15035A:  MOVGT           R1, #1
15035C:  BL              sub_10A214
150360:  LDR             R0, [R6,#0x1C]
150362:  MOVS            R1, #0
150364:  CMP             R0, #0
150366:  IT GT
150368:  MOVGT           R1, #1
15036A:  MOV             R0, R6
15036C:  BL              sub_10A22A
150370:  ADD.W           R1, R10, R9,LSL#2
150374:  MOV.W           R0, #0x1F40
150378:  LDR             R2, [R1,R0]
15037A:  LDR             R0, [R6,#0xC]
15037C:  CMP             R0, R2
15037E:  ITT NE
150380:  ADDNE.W         R1, R1, #0x1F40
150384:  STRNE           R0, [R1]
150386:  MOV             R0, R6
150388:  BL              sub_10A23C
15038C:  MOVW            R6, #0xA410
150390:  ADDS            R4, #4
150392:  CMP             R4, R11
150394:  BNE.W           loc_15027C
150398:  B               loc_15041C
15039A:  MOV             R0, R6
15039C:  BL              sub_109F60
1503A0:  VCMP.F32        S20, S18
1503A4:  VMRS            APSR_nzcv, FPSCR
1503A8:  BHI             loc_15033E
1503AA:  CMP             R0, #0
1503AC:  BNE             loc_15033E
1503AE:  LDR             R0, [SP,#0x48+var_44]
1503B0:  CMP             R0, #2
1503B2:  BGT             loc_15033E
1503B4:  ADD.W           R5, R10, R9,LSL#2
1503B8:  BL              sub_F0B30
1503BC:  MOVW            R1, #0xCB20
1503C0:  LDR             R1, [R5,R1]
1503C2:  SUBS            R0, R0, R1
1503C4:  CMP             R0, #0x65 ; 'e'
1503C6:  BCC             loc_15033E
1503C8:  LDR             R0, [SP,#0x48+var_48]
1503CA:  UXTH.W          R1, R9
1503CE:  MOV             R2, R6
1503D0:  BL              sub_141580
1503D4:  CMP             R0, #0
1503D6:  BEQ             loc_15033E
1503D8:  MOVW            R0, #0xCB20
1503DC:  ADD             R5, R0
1503DE:  BL              sub_F0B30
1503E2:  STR             R0, [R5]
1503E4:  LDR             R0, [SP,#0x48+var_44]
1503E6:  ADDS            R0, #1
1503E8:  STR             R0, [SP,#0x48+var_44]
1503EA:  B               loc_15033E
1503EC:  CMP             R0, #1
1503EE:  BEQ             loc_150400
1503F0:  CBZ             R0, loc_150404
1503F2:  ADDS            R0, #1
1503F4:  BNE             loc_15040C
1503F6:  MOV             R0, R6
1503F8:  BL              sub_10A1E4
1503FC:  MOV             R1, R0
1503FE:  B               loc_150406
150400:  MOVS            R1, #1
150402:  B               loc_150406
150404:  MOVS            R1, #0
150406:  MOV             R0, R6
150408:  BL              sub_10A214
15040C:  LDR             R0, [R6,#0x1C]
15040E:  CBZ             R0, loc_150418
150410:  CMP             R0, #1
150412:  BNE             loc_150370
150414:  MOVS            R1, #1
150416:  B               loc_15036A
150418:  MOVS            R1, #0
15041A:  B               loc_15036A
15041C:  ADD             SP, SP, #0x10
15041E:  VPOP            {D8-D10}
150422:  ADD             SP, SP, #4
150424:  POP.W           {R8-R11}
150428:  POP             {R4-R7,PC}
