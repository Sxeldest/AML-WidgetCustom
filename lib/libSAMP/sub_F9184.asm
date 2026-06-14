; =========================================================
; Game Engine Function: sub_F9184
; Address            : 0xF9184 - 0xF935A
; =========================================================

F9184:  PUSH            {R4-R7,LR}
F9186:  ADD             R7, SP, #0xC
F9188:  PUSH.W          {R8-R10}
F918C:  MOV             R5, R0
F918E:  LDR             R0, =(off_23496C - 0xF9194)
F9190:  ADD             R0, PC; off_23496C
F9192:  LDR             R0, [R0]; dword_23DEF4
F9194:  LDR             R0, [R0]
F9196:  CMP             R0, #0
F9198:  BEQ.W           def_F91BE; jumptable 000F91BE default case
F919C:  MOV             R4, R3
F919E:  LDR             R3, =(off_234A78 - 0xF91A4)
F91A0:  ADD             R3, PC; off_234A78
F91A2:  LDR             R3, [R3]; byte_239030
F91A4:  LDRB            R3, [R3]
F91A6:  CMP             R3, #0
F91A8:  BNE.W           def_F91BE; jumptable 000F91BE default case
F91AC:  SUBS            R1, #1; switch 4 cases
F91AE:  CMP             R1, #3
F91B0:  BHI.W           def_F91BE; jumptable 000F91BE default case
F91B4:  LDR.W           R0, [R0,#0x3B0]
F91B8:  LDR.W           R8, [R7,#arg_0]
F91BC:  LDR             R6, [R0,#4]
F91BE:  TBB.W           [PC,R1]; switch jump
F91C2:  DCB 2; jump table for switch statement
F91C3:  DCB 0x1A
F91C4:  DCB 0x45
F91C5:  DCB 0x5C
F91C6:  UXTH            R5, R2; jumptable 000F91BE case 1
F91C8:  LSRS            R0, R5, #4
F91CA:  CMP             R0, #0x7C ; '|'
F91CC:  BHI.W           def_F91BE; jumptable 000F91BE default case
F91D0:  MOV             R0, R6
F91D2:  MOV             R1, R5
F91D4:  BL              sub_F2396
F91D8:  CMP             R0, #0
F91DA:  BEQ.W           def_F91BE; jumptable 000F91BE default case
F91DE:  LDR.W           R0, [R6,R5,LSL#2]
F91E2:  CMP             R0, #0
F91E4:  BEQ.W           def_F91BE; jumptable 000F91BE default case
F91E8:  UXTB            R1, R4
F91EA:  POP.W           {R8-R10}
F91EE:  POP.W           {R4-R7,LR}
F91F2:  B.W             sub_109B90
F91F6:  UXTH            R5, R2; jumptable 000F91BE case 2
F91F8:  LSRS            R0, R5, #4
F91FA:  CMP             R0, #0x7C ; '|'
F91FC:  BHI.W           def_F91BE; jumptable 000F91BE default case
F9200:  MOV             R0, R6
F9202:  MOV             R1, R5
F9204:  BL              sub_F2396
F9208:  CMP             R0, #0
F920A:  BEQ.W           def_F91BE; jumptable 000F91BE default case
F920E:  LDR.W           R5, [R6,R5,LSL#2]
F9212:  CMP             R5, #0
F9214:  BEQ.W           def_F91BE; jumptable 000F91BE default case
F9218:  BL              sub_F74A4
F921C:  CBNZ            R0, loc_F922C
F921E:  BL              sub_F541C
F9222:  CBNZ            R0, loc_F922C
F9224:  BL              sub_F4270
F9228:  CMP             R0, #0
F922A:  BEQ             loc_F9328
F922C:  BL              sub_F61A4
F9230:  LDR             R1, [R5,#0xC]
F9232:  BL              sub_15E858
F9236:  MOV             R0, R5
F9238:  MOV             R1, R4
F923A:  BL              sub_109ADC
F923E:  LDR             R0, [R5,#0xC]
F9240:  POP.W           {R8-R10}
F9244:  POP.W           {R4-R7,LR}
F9248:  B.W             sub_F7290
F924C:  UXTH            R5, R2; jumptable 000F91BE case 3
F924E:  LSRS            R0, R5, #4
F9250:  CMP             R0, #0x7C ; '|'
F9252:  BHI             def_F91BE; jumptable 000F91BE default case
F9254:  MOV             R0, R6
F9256:  MOV             R1, R5
F9258:  BL              sub_F2396
F925C:  CMP             R0, #0
F925E:  BEQ             def_F91BE; jumptable 000F91BE default case
F9260:  LDR.W           R0, [R6,R5,LSL#2]
F9264:  CMP             R0, #0
F9266:  BEQ             def_F91BE; jumptable 000F91BE default case
F9268:  UXTB            R1, R4
F926A:  UXTB.W          R2, R8
F926E:  POP.W           {R8-R10}
F9272:  POP.W           {R4-R7,LR}
F9276:  B.W             sub_109BC8
F927A:  CMP.W           R5, #0x3EC; jumptable 000F91BE case 4
F927E:  BHI             def_F91BE; jumptable 000F91BE default case
F9280:  LDR.W           R10, [R0]
F9284:  UXTH.W          R9, R2
F9288:  MOV.W           R0, R9,LSR#4
F928C:  CMP             R0, #0x7C ; '|'
F928E:  BHI             loc_F92A0
F9290:  MOV             R0, R6
F9292:  MOV             R1, R9
F9294:  BL              sub_F2396
F9298:  CBZ             R0, loc_F92A0
F929A:  LDR.W           R0, [R6,R9,LSL#2]
F929E:  B               loc_F92A2
F92A0:  MOVS            R0, #0
F92A2:  ADD.W           R1, R10, R5
F92A6:  LDRB.W          R1, [R1,#0xFB4]
F92AA:  CBZ             R1, def_F91BE; jumptable 000F91BE default case
F92AC:  ADD.W           R1, R10, R5,LSL#2
F92B0:  LDR             R1, [R1,#4]
F92B2:  CBZ             R1, def_F91BE; jumptable 000F91BE default case
F92B4:  CBZ             R0, def_F91BE; jumptable 000F91BE default case
F92B6:  LDR             R6, [R1]
F92B8:  CBZ             R6, def_F91BE; jumptable 000F91BE default case
F92BA:  LDR.W           R5, [R6,#0x128]
F92BE:  CBZ             R5, def_F91BE; jumptable 000F91BE default case
F92C0:  MOVW            R0, #0x13BC
F92C4:  LDR.W           R0, [R10,R0]
F92C8:  LDR.W           R9, [R0,#0x1C]
F92CC:  CMP.W           R9, #0
F92D0:  BEQ             def_F91BE; jumptable 000F91BE default case
F92D2:  MOV             R0, R5
F92D4:  BL              sub_104108
F92D8:  CBZ             R0, def_F91BE; jumptable 000F91BE default case
F92DA:  MOV             R0, R9
F92DC:  BL              sub_104108
F92E0:  CBZ             R0, def_F91BE; jumptable 000F91BE default case
F92E2:  MOV             R0, R5
F92E4:  BL              sub_10411A
F92E8:  CBNZ            R0, def_F91BE; jumptable 000F91BE default case
F92EA:  MOV             R0, R9
F92EC:  BL              sub_10411A
F92F0:  CBZ             R0, def_F91BE; jumptable 000F91BE default case
F92F2:  MOV             R0, R5
F92F4:  BL              sub_105464
F92F8:  UXTH            R5, R0
F92FA:  MOV             R0, R9
F92FC:  BL              sub_105464
F9300:  CMP             R5, R0
F9302:  BNE             def_F91BE; jumptable 000F91BE default case
F9304:  LDR             R0, [R6,#4]
F9306:  CBZ             R4, loc_F9338
F9308:  CBZ             R0, loc_F9310
F930A:  MOV             R1, R8
F930C:  BL              sub_109C04
F9310:  UXTB.W          R1, R8
F9314:  MOV             R0, R9
F9316:  MOVS            R2, #0
F9318:  BL              sub_105034
F931C:  MOV             R0, R9
F931E:  MOVS            R1, #0
F9320:  B               loc_F934E
F9322:  POP.W           {R8-R10}; jumptable 000F91BE default case
F9326:  POP             {R4-R7,PC}
F9328:  MOV             R0, R5
F932A:  MOV             R1, R4
F932C:  POP.W           {R8-R10}
F9330:  POP.W           {R4-R7,LR}
F9334:  B.W             sub_109ADC
F9338:  CBZ             R0, loc_F9340
F933A:  MOVS            R1, #0
F933C:  BL              sub_109C04
F9340:  MOV             R0, R9
F9342:  MOVS            R1, #0
F9344:  MOVS            R2, #0
F9346:  BL              sub_105034
F934A:  MOV             R0, R9
F934C:  MOVS            R1, #1
F934E:  POP.W           {R8-R10}
F9352:  POP.W           {R4-R7,LR}
F9356:  B.W             sub_10421C
