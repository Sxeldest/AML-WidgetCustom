; =========================================================
; Game Engine Function: sub_181338
; Address            : 0x181338 - 0x181434
; =========================================================

181338:  PUSH            {R4-R7,LR}
18133A:  ADD             R7, SP, #0xC
18133C:  PUSH.W          {R8}
181340:  SUB             SP, SP, #0x10
181342:  MOV             R5, R3
181344:  LDR             R3, =(unk_BE944 - 0x18134E)
181346:  MOV             R4, R0
181348:  ADD             R0, SP, #0x20+var_18
18134A:  ADD             R3, PC; unk_BE944
18134C:  STRD.W          R1, R2, [SP,#0x20+var_18]
181350:  MOV             R1, R3
181352:  BL              sub_17E580
181356:  CMP             R0, #0
181358:  BNE             loc_1813E2
18135A:  LDR.W           R0, [R4,#0x340]
18135E:  CMP             R0, #0
181360:  BEQ             loc_1813E2
181362:  LDRB            R1, [R4,#4]
181364:  CBNZ            R1, loc_1813E2
181366:  LDRD.W          R3, R6, [R7,#arg_0]
18136A:  CBZ             R5, loc_18137A
18136C:  LDRD.W          R1, R2, [SP,#0x20+var_18]
181370:  MOV             R0, R4
181372:  STR             R6, [SP,#0x20+var_20]
181374:  BL              sub_1804E8
181378:  B               loc_1813E2
18137A:  CBZ             R3, loc_1813AA
18137C:  LDRH            R1, [R4,#8]
18137E:  CBZ             R1, loc_1813E2
181380:  ADD.W           R8, SP, #0x20+var_18
181384:  MOVS            R6, #0
181386:  MOVS            R5, #1
181388:  LDRB            R2, [R0,R6]
18138A:  CBZ             R2, loc_18139A
18138C:  ADD             R0, R6
18138E:  MOV             R1, R8
181390:  ADDS            R0, #4
181392:  BL              sub_17E580
181396:  CBNZ            R0, loc_1813EA
181398:  LDRH            R1, [R4,#8]
18139A:  CMP             R5, R1
18139C:  BCS             loc_1813E2
18139E:  ADDS            R5, #1
1813A0:  LDR.W           R0, [R4,#0x340]
1813A4:  ADD.W           R6, R6, #0x840
1813A8:  B               loc_181388
1813AA:  ADDW            R0, R4, #0x7BC
1813AE:  BL              sub_182F10
1813B2:  LDR.W           R1, [R4,#0x7C8]
1813B6:  MOV.W           R12, #1
1813BA:  MOVS            R2, #0
1813BC:  LDRH.W          R5, [SP,#0x20+var_14]
1813C0:  LDR             R3, [SP,#0x20+var_18]
1813C2:  LDR.W           LR, [R4,#0x7D0]
1813C6:  STRD.W          R2, R12, [R0,#0x30]
1813CA:  STRB.W          R12, [R1,#0x38]
1813CE:  STRB            R6, [R0,#0xC]
1813D0:  STR             R3, [R0,#0x10]
1813D2:  STRH            R5, [R0,#0x14]
1813D4:  LDR             R0, [R1,#0x3C]
1813D6:  ADD.W           R1, LR, #1
1813DA:  STR.W           R1, [R4,#0x7D0]
1813DE:  STR.W           R0, [R4,#0x7C8]
1813E2:  ADD             SP, SP, #0x10
1813E4:  POP.W           {R8}
1813E8:  POP             {R4-R7,PC}
1813EA:  LDR.W           R1, [R4,#0x384]
1813EE:  MOVS            R2, #0
1813F0:  LDR.W           R0, [R4,#0x340]
1813F4:  STRB            R2, [R0,R6]
1813F6:  CBZ             R1, loc_18141E
1813F8:  MOVS            R5, #0
1813FA:  LDR.W           R0, [R4,#0x380]
1813FE:  LDRD.W          R2, R3, [SP,#0x20+var_18]
181402:  LDR.W           R0, [R0,R5,LSL#2]
181406:  LDR             R1, [R0]
181408:  LDR.W           R12, [R1,#0x18]
18140C:  MOV             R1, R4
18140E:  BLX             R12
181410:  LDR.W           R0, [R4,#0x384]
181414:  ADDS            R5, #1
181416:  CMP             R5, R0
181418:  BCC             loc_1813FA
18141A:  LDR.W           R0, [R4,#0x340]
18141E:  ADD             R0, R6
181420:  MOVS            R1, #0
181422:  ADDS            R0, #0x18
181424:  BL              sub_1876AE
181428:  ADD.W           R0, R4, #0x344
18142C:  ADD             R1, SP, #0x20+var_18
18142E:  BL              sub_182EE6
181432:  B               loc_1813E2
