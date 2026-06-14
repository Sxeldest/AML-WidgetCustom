; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight12GetComboTypeEPc
; Address            : 0x4DB3C0 - 0x4DB43A
; =========================================================

4DB3C0:  PUSH            {R4,R6,R7,LR}
4DB3C2:  ADD             R7, SP, #8
4DB3C4:  ADR             R1, aUnarmed; "UNARMED"
4DB3C6:  MOV             R4, R0
4DB3C8:  BLX             strcmp
4DB3CC:  CBZ             R0, loc_4DB41E
4DB3CE:  ADR             R1, aBballbat; "BBALLBAT"
4DB3D0:  MOV             R0, R4; char *
4DB3D2:  BLX             strcmp
4DB3D6:  CBZ             R0, loc_4DB422
4DB3D8:  ADR             R1, aKnife; "KNIFE"
4DB3DA:  MOV             R0, R4; char *
4DB3DC:  BLX             strcmp
4DB3E0:  CBZ             R0, loc_4DB426
4DB3E2:  ADR             R1, aGolfclub; "GOLFCLUB"
4DB3E4:  MOV             R0, R4; char *
4DB3E6:  BLX             strcmp
4DB3EA:  CBZ             R0, loc_4DB42A
4DB3EC:  ADR             R1, aSword; "SWORD"
4DB3EE:  MOV             R0, R4; char *
4DB3F0:  BLX             strcmp
4DB3F4:  CBZ             R0, loc_4DB42E
4DB3F6:  ADR             R1, aChainsaw; "CHAINSAW"
4DB3F8:  MOV             R0, R4; char *
4DB3FA:  BLX             strcmp
4DB3FE:  CBZ             R0, loc_4DB432
4DB400:  ADR             R1, aDildo; "DILDO"
4DB402:  MOV             R0, R4; char *
4DB404:  BLX             strcmp
4DB408:  CBZ             R0, loc_4DB436
4DB40A:  ADR             R1, aFlowers; "FLOWERS"
4DB40C:  MOV             R0, R4; char *
4DB40E:  BLX             strcmp
4DB412:  MOV             R1, R0
4DB414:  MOVS            R0, #4
4DB416:  CMP             R1, #0
4DB418:  IT EQ
4DB41A:  MOVEQ           R0, #0xE
4DB41C:  POP             {R4,R6,R7,PC}
4DB41E:  MOVS            R0, #4
4DB420:  POP             {R4,R6,R7,PC}
4DB422:  MOVS            R0, #8
4DB424:  POP             {R4,R6,R7,PC}
4DB426:  MOVS            R0, #9
4DB428:  POP             {R4,R6,R7,PC}
4DB42A:  MOVS            R0, #0xA
4DB42C:  POP             {R4,R6,R7,PC}
4DB42E:  MOVS            R0, #0xB
4DB430:  POP             {R4,R6,R7,PC}
4DB432:  MOVS            R0, #0xC
4DB434:  POP             {R4,R6,R7,PC}
4DB436:  MOVS            R0, #0xD
4DB438:  POP             {R4,R6,R7,PC}
