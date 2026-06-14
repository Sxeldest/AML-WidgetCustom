; =========================================================
; Game Engine Function: _Z13RtCharsetOpenv
; Address            : 0x1ED330 - 0x1ED3A2
; =========================================================

1ED330:  PUSH            {R4,R6,R7,LR}
1ED332:  ADD             R7, SP, #8
1ED334:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED33A)
1ED336:  ADD             R0, PC; RwEngineInstance_ptr
1ED338:  LDR             R0, [R0]; RwEngineInstance
1ED33A:  LDR             R0, [R0]
1ED33C:  LDR.W           R1, [R0,#0x12C]
1ED340:  MOV.W           R0, #0x1C000
1ED344:  BLX             R1
1ED346:  LDR             R1, =(_rtgBuffer_ptr - 0x1ED34E)
1ED348:  CMP             R0, #0
1ED34A:  ADD             R1, PC; _rtgBuffer_ptr
1ED34C:  LDR             R1, [R1]; _rtgBuffer
1ED34E:  STR             R0, [R1,#(dword_6BD520 - 0x6BD514)]
1ED350:  BEQ             loc_1ED382
1ED352:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED358)
1ED354:  ADD             R0, PC; RwEngineInstance_ptr
1ED356:  LDR             R0, [R0]; RwEngineInstance
1ED358:  LDR             R0, [R0]
1ED35A:  LDR.W           R1, [R0,#0x12C]
1ED35E:  MOV.W           R0, #0x3000
1ED362:  BLX             R1
1ED364:  LDR             R1, =(_rtgBuffer_ptr - 0x1ED36C)
1ED366:  CMP             R0, #0
1ED368:  ADD             R1, PC; _rtgBuffer_ptr
1ED36A:  LDR             R1, [R1]; _rtgBuffer
1ED36C:  STR             R0, [R1,#(dword_6BD524 - 0x6BD514)]
1ED36E:  BEQ             loc_1ED386
1ED370:  LDR             R0, =(_rtgBuffer_ptr - 0x1ED378)
1ED372:  MOVS            R2, #0
1ED374:  ADD             R0, PC; _rtgBuffer_ptr
1ED376:  LDR             R1, [R0]; _rtgBuffer
1ED378:  MOVS            R0, #1
1ED37A:  STRD.W          R0, R2, [R1]
1ED37E:  STR             R2, [R1,#(dword_6BD51C - 0x6BD514)]
1ED380:  POP             {R4,R6,R7,PC}
1ED382:  MOVS            R0, #0
1ED384:  POP             {R4,R6,R7,PC}
1ED386:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED38E)
1ED388:  LDR             R1, =(_rtgBuffer_ptr - 0x1ED390)
1ED38A:  ADD             R0, PC; RwEngineInstance_ptr
1ED38C:  ADD             R1, PC; _rtgBuffer_ptr
1ED38E:  LDR             R0, [R0]; RwEngineInstance
1ED390:  LDR             R4, [R1]; _rtgBuffer
1ED392:  LDR             R1, [R0]
1ED394:  LDR             R0, [R4,#(dword_6BD520 - 0x6BD514)]
1ED396:  LDR.W           R1, [R1,#0x130]
1ED39A:  BLX             R1
1ED39C:  MOVS            R0, #0
1ED39E:  STR             R0, [R4,#(dword_6BD520 - 0x6BD514)]
1ED3A0:  POP             {R4,R6,R7,PC}
