; =========================================================
; Game Engine Function: _Z15RpWorldInstanceP7RpWorld
; Address            : 0x21D3F0 - 0x21D466
; =========================================================

21D3F0:  PUSH            {R4-R7,LR}
21D3F2:  ADD             R7, SP, #0xC
21D3F4:  PUSH.W          {R8}
21D3F8:  SUB             SP, SP, #0x100
21D3FA:  MOV             R8, R0
21D3FC:  LDR.W           R0, [R8,#8]
21D400:  TST.W           R0, #0x1000000
21D404:  BNE             loc_21D45C
21D406:  ORR.W           R0, R0, #0x2000000
21D40A:  STR.W           R0, [R8,#8]
21D40E:  LDR.W           R5, [R8,#0x1C]
21D412:  MOVS            R6, #0
21D414:  MOV             R4, SP
21D416:  LDR             R0, [R5]
21D418:  CMP.W           R0, #0xFFFFFFFF
21D41C:  BLE             loc_21D432
21D41E:  LDRD.W          R0, R1, [R5,#8]
21D422:  ADDS            R6, #1
21D424:  STR.W           R1, [R4,R6,LSL#2]
21D428:  MOV             R5, R0
21D42A:  CMP.W           R6, #0xFFFFFFFF
21D42E:  BGT             loc_21D416
21D430:  B               loc_21D44E
21D432:  LDR             R0, [R5,#0x34]
21D434:  CMP             R0, #0
21D436:  IT NE
21D438:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
21D43C:  MOV             R0, R5
21D43E:  BLX             j__Z19RpWorldSectorRenderP13RpWorldSector; RpWorldSectorRender(RpWorldSector *)
21D442:  LDR.W           R5, [R4,R6,LSL#2]
21D446:  SUBS            R6, #1
21D448:  CMP.W           R6, #0xFFFFFFFF
21D44C:  BGT             loc_21D416
21D44E:  LDR.W           R0, [R8,#8]
21D452:  MOVS            R1, #1
21D454:  BFI.W           R0, R1, #0x18, #2
21D458:  STR.W           R0, [R8,#8]
21D45C:  MOVS            R0, #1
21D45E:  ADD             SP, SP, #0x100
21D460:  POP.W           {R8}
21D464:  POP             {R4-R7,PC}
