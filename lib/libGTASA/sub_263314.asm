; =========================================================
; Game Engine Function: sub_263314
; Address            : 0x263314 - 0x26338E
; =========================================================

263314:  PUSH            {R4-R7,LR}
263316:  ADD             R7, SP, #0xC
263318:  PUSH.W          {R8}
26331C:  MOV             R4, R3
26331E:  MOV             R5, R1
263320:  MOV             R6, R0
263322:  CMP             R2, #0xE
263324:  BEQ             loc_26334A
263326:  CMP             R2, #0xB
263328:  BNE             loc_26337E
26332A:  LDR.W           R0, [R5,#0x88]
26332E:  MOV             R8, #0x161AC
263336:  LDR.W           R1, [R0,R8]
26333A:  LDR             R1, [R1,#0x2C]
26333C:  BLX             R1
26333E:  LDR             R0, [R6,#0x40]
263340:  STR             R0, [R4]
263342:  LDR             R0, [R6,#0x44]
263344:  STR             R0, [R4,#4]
263346:  LDR             R0, [R6,#0x48]
263348:  B               loc_263368
26334A:  LDR.W           R0, [R5,#0x88]
26334E:  MOV             R8, #0x161AC
263356:  LDR.W           R1, [R0,R8]
26335A:  LDR             R1, [R1,#0x2C]
26335C:  BLX             R1
26335E:  LDR             R0, [R6,#0x4C]
263360:  STR             R0, [R4]
263362:  LDR             R0, [R6,#0x50]
263364:  STR             R0, [R4,#4]
263366:  LDR             R0, [R6,#0x54]
263368:  STR             R0, [R4,#8]
26336A:  LDR.W           R0, [R5,#0x88]
26336E:  LDR.W           R1, [R0,R8]
263372:  LDR             R1, [R1,#0x30]
263374:  POP.W           {R8}
263378:  POP.W           {R4-R7,LR}
26337C:  BX              R1
26337E:  MOV             R0, R6
263380:  MOV             R1, R5
263382:  MOV             R3, R4
263384:  POP.W           {R8}
263388:  POP.W           {R4-R7,LR}
26338C:  B               sub_263234
