; =========================================================
; Game Engine Function: _Z30_rwD3D8FindCorrectRasterFormat12RwRasterTypei
; Address            : 0x1B13CC - 0x1B145E
; =========================================================

1B13CC:  PUSH            {R4,R6,R7,LR}
1B13CE:  ADD             R7, SP, #8
1B13D0:  SUB             SP, SP, #8
1B13D2:  AND.W           R4, R1, #0xFF00
1B13D6:  CMP             R0, #5
1B13D8:  BHI             loc_1B141E
1B13DA:  MOVS            R2, #1
1B13DC:  LSL.W           R0, R2, R0
1B13E0:  TST.W           R0, #0x26
1B13E4:  BNE             loc_1B1458
1B13E6:  TST.W           R0, #0x11
1B13EA:  BEQ             loc_1B141E
1B13EC:  TST.W           R1, #0xF00
1B13F0:  BEQ             loc_1B1436
1B13F2:  AND.W           R0, R1, #0x9F00
1B13F6:  TST.W           R1, #0x4000
1B13FA:  IT NE
1B13FC:  ORRNE.W         R4, R0, #0x2000
1B1400:  TST.W           R4, #0x2000
1B1404:  BNE             loc_1B143C
1B1406:  MOV             R0, R4
1B1408:  BFC.W           R0, #0xC, #0x14
1B140C:  CMP.W           R0, #0x400
1B1410:  IT NE
1B1412:  CMPNE.W         R0, #0x600
1B1416:  BNE             loc_1B1458
1B1418:  ORR.W           R4, R4, #0x600
1B141C:  B               loc_1B1458
1B141E:  MOVS            R0, #0
1B1420:  STR             R0, [SP,#0x10+var_10]
1B1422:  MOVS            R0, #0x8000000D; int
1B1428:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1B142C:  STR             R0, [SP,#0x10+var_C]
1B142E:  MOV             R0, SP
1B1430:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1B1434:  B               loc_1B1458
1B1436:  AND.W           R0, R1, #0xDA00
1B143A:  B               loc_1B1454
1B143C:  AND.W           R0, R4, #0xF00
1B1440:  CMP.W           R0, #0x600
1B1444:  BNE             loc_1B1450
1B1446:  AND.W           R0, R4, #0xD900
1B144A:  ORR.W           R4, R0, #0x600
1B144E:  B               loc_1B1458
1B1450:  AND.W           R0, R4, #0xDA00
1B1454:  ORR.W           R4, R0, #0x500
1B1458:  MOV             R0, R4
1B145A:  ADD             SP, SP, #8
1B145C:  POP             {R4,R6,R7,PC}
