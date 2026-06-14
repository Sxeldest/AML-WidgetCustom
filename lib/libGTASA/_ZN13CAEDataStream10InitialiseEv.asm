; =========================================================
; Game Engine Function: _ZN13CAEDataStream10InitialiseEv
; Address            : 0x395402 - 0x395456
; =========================================================

395402:  PUSH            {R4-R7,LR}
395404:  ADD             R7, SP, #0xC
395406:  PUSH.W          {R11}
39540A:  MOV             R4, R0
39540C:  LDRB            R0, [R4,#0xC]
39540E:  CBZ             R0, loc_395414
395410:  MOVS            R5, #1
395412:  B               loc_395444
395414:  MOVS            R5, #0
395416:  MOV             R1, R4
395418:  STR.W           R5, [R1,#4]!
39541C:  MOVS            R0, #0
39541E:  MOVS            R3, #0
395420:  LDR             R2, [R1,#4]
395422:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
395426:  CBNZ            R0, loc_395444
395428:  LDR             R6, [R4,#0x14]
39542A:  LDR             R0, [R4,#4]; this
39542C:  MOV             R1, R6; offset
39542E:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
395432:  LDRD.W          R0, R1, [R4,#0x14]
395436:  MOVS            R5, #1
395438:  CMP             R1, #0
39543A:  STRB            R5, [R4,#0xC]
39543C:  SUB.W           R0, R6, R0
395440:  STR             R0, [R4,#0x10]
395442:  BEQ             loc_39544C
395444:  MOV             R0, R5
395446:  POP.W           {R11}
39544A:  POP             {R4-R7,PC}
39544C:  LDR             R0, [R4,#4]; this
39544E:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
395452:  STR             R0, [R4,#0x18]
395454:  B               loc_395410
