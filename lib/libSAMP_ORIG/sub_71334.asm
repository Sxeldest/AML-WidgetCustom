; =========================================================
; Game Engine Function: sub_71334
; Address            : 0x71334 - 0x713F6
; =========================================================

71334:  PUSH            {R4-R7,LR}
71336:  ADD             R7, SP, #0xC
71338:  PUSH.W          {R8-R11}
7133C:  SUB             SP, SP, #4
7133E:  MOV             R5, R0
71340:  LDR             R0, [R1,#4]
71342:  MOV             R4, R1
71344:  CMP             R0, #0xD
71346:  BHI             loc_7135A
71348:  MOVW            R0, #0x1C05
7134C:  MOV             R6, R5
7134E:  STRH            R0, [R5,#0xE]
71350:  LDRB            R0, [R4,#4]
71352:  RSB.W           R0, R0, #0xD
71356:  STRB            R0, [R5,#0xD]
71358:  B               loc_713DE
7135A:  MOVW            R0, #0xC05
7135E:  STRH            R0, [R5,#0xE]
71360:  LDR             R0, [R4,#4]
71362:  STR             R0, [R5]
71364:  LDR             R0, [R4,#4]
71366:  ADDS            R1, R0, #1
71368:  BEQ             loc_713DA
7136A:  LDR.W           R11, [R2,#8]
7136E:  ADDS            R0, #8
71370:  BIC.W           R9, R0, #7
71374:  MOV             R8, R2
71376:  LDR.W           R10, [R11]
7137A:  LDRD.W          R1, R6, [R10]
7137E:  ADD.W           R0, R6, R9
71382:  CMP             R0, R1
71384:  BHI             loc_7139A
71386:  ADD.W           R1, R10, #4
7138A:  ADD.W           R0, R6, R9
7138E:  STR             R0, [R1]
71390:  ADD.W           R0, R10, R6
71394:  ADD.W           R6, R0, #0x10
71398:  B               loc_713DC
7139A:  LDRD.W          R6, R0, [R8]
7139E:  CMP             R6, R9
713A0:  IT LS
713A2:  MOVLS           R6, R9
713A4:  CBNZ            R0, loc_713B4
713A6:  MOVS            R0, #1; unsigned int
713A8:  BLX             j__Znwj; operator new(uint)
713AC:  STR.W           R0, [R8,#4]
713B0:  STR.W           R0, [R11,#4]
713B4:  ADDS.W          R0, R6, #0x10; size
713B8:  BEQ             loc_713DA
713BA:  MOV             R8, R6
713BC:  BLX             malloc
713C0:  MOVS            R6, #0
713C2:  CBZ             R0, loc_713DC
713C4:  MOV             R1, R0
713C6:  STR.W           R10, [R0,#8]
713CA:  STR.W           R6, [R1,#4]!
713CE:  MOV             R10, R0
713D0:  STR.W           R8, [R0]
713D4:  STR.W           R0, [R11]
713D8:  B               loc_7138A
713DA:  MOVS            R6, #0
713DC:  STR             R6, [R5,#8]
713DE:  LDRD.W          R1, R2, [R4]; n
713E2:  MOV             R0, R6; dest
713E4:  BLX             j_memcpy
713E8:  LDR             R0, [R4,#4]
713EA:  MOVS            R1, #0
713EC:  STRB            R1, [R6,R0]
713EE:  ADD             SP, SP, #4
713F0:  POP.W           {R8-R11}
713F4:  POP             {R4-R7,PC}
