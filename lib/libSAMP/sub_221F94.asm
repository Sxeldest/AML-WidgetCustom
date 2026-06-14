; =========================================================
; Game Engine Function: sub_221F94
; Address            : 0x221F94 - 0x22249C
; =========================================================

221F94:  PUSH            {R4-R11,LR}
221F98:  ADD             R11, SP, #0x1C
221F9C:  SUB             SP, SP, #0x14
221FA0:  MOV             R7, R3
221FA4:  MOV             R5, R2
221FA8:  MOV             R8, R0
221FAC:  CMP             R1, #5
221FB0:  BEQ             loc_221FF8
221FB4:  CMP             R1, #1
221FB8:  BEQ             loc_222040
221FBC:  CMP             R1, #0
221FC0:  BNE             loc_222464
221FC4:  MOV             R6, #2
221FC8:  CMP             R7, #0
221FCC:  BNE             loc_22206C
221FD0:  ADD             R2, SP, #0x30+var_20
221FD4:  MOV             R0, R8
221FD8:  MOV             R1, #0xD
221FDC:  BL              sub_222C8C
221FE0:  CMP             R0, #0
221FE4:  BEQ             loc_222108
221FE8:  MOV             R6, #2
221FEC:  MOV             R0, R6
221FF0:  SUB             SP, R11, #0x1C
221FF4:  POP             {R4-R11,PC}
221FF8:  ORRS            R0, R7, R5
221FFC:  MOV             R6, #2
222000:  BNE             loc_22206C
222004:  ADD             R2, SP, #0x30+var_28
222008:  MOV             R0, R8
22200C:  MOV             R1, #0xD
222010:  BL              sub_222C8C
222014:  CMP             R0, #0
222018:  BNE             loc_22206C
22201C:  LDR             R0, [SP,#0x30+var_28]
222020:  MOV             R1, #0xD
222024:  ADD             R2, R0, #4
222028:  MOV             R0, R8
22202C:  STR             R2, [SP,#0x30+var_28]
222030:  BL              sub_222CE4
222034:  MOV             R0, R6
222038:  SUB             SP, R11, #0x1C
22203C:  POP             {R4-R11,PC}
222040:  BIC             R0, R7, #4
222044:  MOV             R6, #2
222048:  CMP             R0, #1
22204C:  BNE             loc_22206C
222050:  ADD             R2, SP, #0x30+var_24
222054:  MOV             R0, R8
222058:  MOV             R1, #0xD
22205C:  BL              sub_222C8C
222060:  MOV             R6, #2
222064:  CMP             R0, #0
222068:  BEQ             loc_222078
22206C:  MOV             R0, R6
222070:  SUB             SP, R11, #0x1C
222074:  POP             {R4-R11,PC}
222078:  UXTH            R0, R5
22207C:  CMP             R0, #0
222080:  BEQ             loc_2223D0
222084:  MOV             R6, R5,LSR#16
222088:  UXTAH           R5, R6, R5
22208C:  CMP             R7, #1
222090:  BNE             loc_222380
222094:  MOV             R0, #0x10
222098:  RSB             R10, R6, #0x10
22209C:  CMP             R0, R6
2220A0:  MOVCC           R10, #0
2220A4:  LDR             R0, [SP,#0x30+var_24]
2220A8:  MOV             R4, R5
2220AC:  CMP             R10, #0
2220B0:  MOV             R1, R0
2220B4:  LDR             R5, [R1],#8
2220B8:  STR             R1, [SP,#0x30+var_24]
2220BC:  BEQ             loc_221FE8
2220C0:  LDR             R0, [R0,#4]
2220C4:  MOV             R9, R8
2220C8:  STR             R0, [SP,#0x30+var_2C]
2220CC:  MOV             R0, R8
2220D0:  BL              sub_222EF0
2220D4:  LDR             R3, [SP,#0x30+var_2C]
2220D8:  ADD             R1, R6, #0x100
2220DC:  MOV             R0, R8
2220E0:  MOV             R2, R5
2220E4:  BL              sub_222E24
2220E8:  CMP             R0, #0
2220EC:  BNE             loc_221FE8
2220F0:  ADD             R6, R6, #1
2220F4:  SUB             R10, R10, #1
2220F8:  MOV             R5, R4
2220FC:  CMP             R6, R4
222100:  BCC             loc_2220A4
222104:  B               loc_2223D0
222108:  TST             R5, #1
22210C:  BEQ             loc_222130
222110:  LDR             R0, [SP,#0x30+var_20]
222114:  MOV             R1, #0
222118:  LDR             R2, [R0],#4
22211C:  STR             R0, [SP,#0x30+var_20]
222120:  MOV             R0, R8
222124:  BL              sub_222CE4
222128:  CMP             R0, #0
22212C:  BNE             loc_221FE8
222130:  TST             R5, #2
222134:  BEQ             loc_222158
222138:  LDR             R0, [SP,#0x30+var_20]
22213C:  MOV             R1, #1
222140:  LDR             R2, [R0],#4
222144:  STR             R0, [SP,#0x30+var_20]
222148:  MOV             R0, R8
22214C:  BL              sub_222CE4
222150:  CMP             R0, #0
222154:  BNE             loc_221FE8
222158:  TST             R5, #4
22215C:  BEQ             loc_222184
222160:  LDR             R0, [SP,#0x30+var_20]
222164:  MOV             R1, #2
222168:  MOV             R6, #2
22216C:  LDR             R2, [R0],#4
222170:  STR             R0, [SP,#0x30+var_20]
222174:  MOV             R0, R8
222178:  BL              sub_222CE4
22217C:  CMP             R0, #0
222180:  BNE             loc_22206C
222184:  TST             R5, #8
222188:  BEQ             loc_2221AC
22218C:  LDR             R0, [SP,#0x30+var_20]
222190:  MOV             R1, #3
222194:  LDR             R2, [R0],#4
222198:  STR             R0, [SP,#0x30+var_20]
22219C:  MOV             R0, R8
2221A0:  BL              sub_222CE4
2221A4:  CMP             R0, #0
2221A8:  BNE             loc_221FE8
2221AC:  TST             R5, #0x10
2221B0:  BEQ             loc_2221D4
2221B4:  LDR             R0, [SP,#0x30+var_20]
2221B8:  MOV             R1, #4
2221BC:  LDR             R2, [R0],#4
2221C0:  STR             R0, [SP,#0x30+var_20]
2221C4:  MOV             R0, R8
2221C8:  BL              sub_222CE4
2221CC:  CMP             R0, #0
2221D0:  BNE             loc_221FE8
2221D4:  TST             R5, #0x20
2221D8:  BEQ             loc_2221FC
2221DC:  LDR             R0, [SP,#0x30+var_20]
2221E0:  MOV             R1, #5
2221E4:  LDR             R2, [R0],#4
2221E8:  STR             R0, [SP,#0x30+var_20]
2221EC:  MOV             R0, R8
2221F0:  BL              sub_222CE4
2221F4:  CMP             R0, #0
2221F8:  BNE             loc_221FE8
2221FC:  TST             R5, #0x40
222200:  BEQ             loc_222224
222204:  LDR             R0, [SP,#0x30+var_20]
222208:  MOV             R1, #6
22220C:  LDR             R2, [R0],#4
222210:  STR             R0, [SP,#0x30+var_20]
222214:  MOV             R0, R8
222218:  BL              sub_222CE4
22221C:  CMP             R0, #0
222220:  BNE             loc_221FE8
222224:  TST             R5, #0x80
222228:  BEQ             loc_22224C
22222C:  LDR             R0, [SP,#0x30+var_20]
222230:  MOV             R1, #7
222234:  LDR             R2, [R0],#4
222238:  STR             R0, [SP,#0x30+var_20]
22223C:  MOV             R0, R8
222240:  BL              sub_222CE4
222244:  CMP             R0, #0
222248:  BNE             loc_221FE8
22224C:  TST             R5, #0x100
222250:  BEQ             loc_222274
222254:  LDR             R0, [SP,#0x30+var_20]
222258:  MOV             R1, #8
22225C:  LDR             R2, [R0],#4
222260:  STR             R0, [SP,#0x30+var_20]
222264:  MOV             R0, R8
222268:  BL              sub_222CE4
22226C:  CMP             R0, #0
222270:  BNE             loc_221FE8
222274:  TST             R5, #0x200
222278:  BEQ             loc_22229C
22227C:  LDR             R0, [SP,#0x30+var_20]
222280:  MOV             R1, #9
222284:  LDR             R2, [R0],#4
222288:  STR             R0, [SP,#0x30+var_20]
22228C:  MOV             R0, R8
222290:  BL              sub_222CE4
222294:  CMP             R0, #0
222298:  BNE             loc_221FE8
22229C:  TST             R5, #0x400
2222A0:  BEQ             loc_2222C4
2222A4:  LDR             R0, [SP,#0x30+var_20]
2222A8:  MOV             R1, #0xA
2222AC:  LDR             R2, [R0],#4
2222B0:  STR             R0, [SP,#0x30+var_20]
2222B4:  MOV             R0, R8
2222B8:  BL              sub_222CE4
2222BC:  CMP             R0, #0
2222C0:  BNE             loc_221FE8
2222C4:  TST             R5, #0x800
2222C8:  BEQ             loc_2222EC
2222CC:  LDR             R0, [SP,#0x30+var_20]
2222D0:  MOV             R1, #0xB
2222D4:  LDR             R2, [R0],#4
2222D8:  STR             R0, [SP,#0x30+var_20]
2222DC:  MOV             R0, R8
2222E0:  BL              sub_222CE4
2222E4:  CMP             R0, #0
2222E8:  BNE             loc_221FE8
2222EC:  TST             R5, #0x1000
2222F0:  BEQ             loc_222314
2222F4:  LDR             R0, [SP,#0x30+var_20]
2222F8:  MOV             R1, #0xC
2222FC:  LDR             R2, [R0],#4
222300:  STR             R0, [SP,#0x30+var_20]
222304:  MOV             R0, R8
222308:  BL              sub_222CE4
22230C:  CMP             R0, #0
222310:  BNE             loc_221FE8
222314:  ANDS            R4, R5, #0x2000
222318:  BEQ             loc_22233C
22231C:  LDR             R0, [SP,#0x30+var_20]
222320:  MOV             R1, #0xD
222324:  LDR             R2, [R0],#4
222328:  STR             R0, [SP,#0x30+var_20]
22232C:  MOV             R0, R8
222330:  BL              sub_222CE4
222334:  CMP             R0, #0
222338:  BNE             loc_221FE8
22233C:  TST             R5, #0x4000
222340:  BEQ             loc_222368
222344:  LDR             R0, [SP,#0x30+var_20]
222348:  MOV             R1, #0xE
22234C:  LDR             R2, [R0],#4
222350:  STR             R0, [SP,#0x30+var_20]
222354:  MOV             R0, R8
222358:  BL              sub_222CE4
22235C:  CMP             R0, #0
222360:  MOV             R6, #2
222364:  BNE             loc_22206C
222368:  TST             R5, #0x8000
22236C:  BNE             loc_222410
222370:  MOV             R6, #0
222374:  CMP             R4, #0
222378:  BNE             loc_22206C
22237C:  B               loc_22243C
222380:  MOV             R0, #0x20 ; ' '
222384:  RSB             R4, R6, #0x20 ; ' '
222388:  CMP             R0, R6
22238C:  MOVCC           R4, #0
222390:  LDR             R0, [SP,#0x30+var_24]
222394:  CMP             R4, #0
222398:  MOV             R1, R0
22239C:  LDR             R2, [R1],#8
2223A0:  STR             R1, [SP,#0x30+var_24]
2223A4:  BEQ             loc_221FE8
2223A8:  LDR             R3, [R0,#4]
2223AC:  ADD             R1, R6, #0x100
2223B0:  MOV             R0, R8
2223B4:  BL              sub_222E24
2223B8:  CMP             R0, #0
2223BC:  BNE             loc_221FE8
2223C0:  ADD             R6, R6, #1
2223C4:  SUB             R4, R4, #1
2223C8:  CMP             R6, R5
2223CC:  BCC             loc_222390
2223D0:  CMP             R7, #1
2223D4:  BNE             loc_2223E8
2223D8:  LDR             R0, [SP,#0x30+var_24]
2223DC:  ADD             R2, R0, #4
2223E0:  STR             R2, [SP,#0x30+var_24]
2223E4:  B               loc_2223EC
2223E8:  LDR             R2, [SP,#0x30+var_24]
2223EC:  MOV             R0, R8
2223F0:  MOV             R1, #0xD
2223F4:  BL              sub_222CE4
2223F8:  CMP             R0, #0
2223FC:  MOVWNE          R0, #1
222400:  MOV             R6, R0,LSL#1
222404:  MOV             R0, R6
222408:  SUB             SP, R11, #0x1C
22240C:  POP             {R4-R11,PC}
222410:  LDR             R0, [SP,#0x30+var_20]
222414:  MOV             R1, #0xF
222418:  LDR             R2, [R0],#4
22241C:  STR             R0, [SP,#0x30+var_20]
222420:  MOV             R0, R8
222424:  BL              sub_222CE4
222428:  ORR             R1, R0, R4
22242C:  CMP             R0, #0
222430:  MOVWNE          R0, #1
222434:  CMP             R1, #0
222438:  BNE             loc_222454
22243C:  LDR             R2, [SP,#0x30+var_20]
222440:  MOV             R0, R8
222444:  MOV             R1, #0xD
222448:  BL              sub_222CE4
22244C:  CMP             R0, #0
222450:  MOVWNE          R0, #1
222454:  MOV             R6, R0,LSL#1
222458:  MOV             R0, R6
22245C:  SUB             SP, R11, #0x1C
222460:  POP             {R4-R11,PC}
222464:  LDR             R1, =(aLibunwindSS - 0x222478); "libunwind: %s - %s\n" ...
222468:  LDR             R2, =(aUnwindVrsPop - 0x222480); "_Unwind_VRS_Pop" ...
22246C:  LDR             R3, =(aUnsupportedReg - 0x222484); "unsupported register class" ...
222470:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
222474:  LDR             R0, =(__sF_ptr - 0x222488)
222478:  ADD             R2, PC, R2; "_Unwind_VRS_Pop"
22247C:  ADD             R3, PC, R3; "unsupported register class"
222480:  LDR             R0, [PC,R0]; __sF
222484:  ADD             R4, R0, #0xA8
222488:  MOV             R0, R4; stream
22248C:  BL              fprintf
222490:  MOV             R0, R4; stream
222494:  BL              fflush
222498:  BL              abort
