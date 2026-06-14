; =========================================================
; Game Engine Function: alProcessUpdatesSOFT
; Address            : 0x1E152C - 0x1E1644
; =========================================================

1E152C:  PUSH            {R4-R11,LR}
1E1530:  ADD             R11, SP, #0x1C
1E1534:  SUB             SP, SP, #4
1E1538:  BL              j_GetContextRef
1E153C:  MOV             R4, R0
1E1540:  CMP             R4, #0
1E1544:  BEQ             loc_1E163C
1E1548:  ADD             R0, R4, #0xE0
1E154C:  MOV             R2, #0
1E1550:  DMB             ISH
1E1554:  LDREX           R1, [R0]
1E1558:  STREX           R3, R2, [R0]
1E155C:  CMP             R3, #0
1E1560:  BNE             loc_1E1554
1E1564:  CMP             R1, #0
1E1568:  DMB             ISH
1E156C:  BEQ             loc_1E162C
1E1570:  LDR             R0, [R4,#0xFC]
1E1574:  ADD             R0, R0, #8; mutex
1E1578:  BL              j_EnterCriticalSection
1E157C:  ADD             R8, R4, #0x8C
1E1580:  MOV             R0, R8
1E1584:  BL              j_ReadLock
1E1588:  LDR             R0, [R4,#0x80]
1E158C:  CMP             R0, #1
1E1590:  BLT             loc_1E1618
1E1594:  MOV             R7, #0
1E1598:  MOVW            R10, #0x1012
1E159C:  MOVW            R9, #0x1013
1E15A0:  MOV             R5, #0
1E15A4:  LDR             R0, [R4,#0x7C]
1E15A8:  ADD             R0, R0, R5,LSL#3
1E15AC:  LDR             R6, [R0,#4]
1E15B0:  LDR             R0, [R6,#0x5C]
1E15B4:  CMP             R0, R10
1E15B8:  LDRNE           R0, [R6,#0x5C]
1E15BC:  CMPNE           R0, R9
1E15C0:  BNE             loc_1E15D8
1E15C4:  LDR             R0, [R6,#0xC4]
1E15C8:  CMN             R0, #1
1E15CC:  BEQ             loc_1E15D8
1E15D0:  MOV             R0, R6
1E15D4:  BL              j_ApplyOffset
1E15D8:  ADD             R0, R6, #0x60 ; '`'
1E15DC:  DMB             ISH
1E15E0:  LDREX           R2, [R0]
1E15E4:  STREX           R1, R7, [R0]
1E15E8:  CMP             R1, #0
1E15EC:  BNE             loc_1E15E0
1E15F0:  CMP             R2, #0
1E15F4:  DMB             ISH
1E15F8:  BEQ             loc_1E1608
1E15FC:  MOV             R0, R6
1E1600:  MOV             R1, R4
1E1604:  BL              j_SetSourceState
1E1608:  LDR             R0, [R4,#0x80]
1E160C:  ADD             R5, R5, #1
1E1610:  CMP             R5, R0
1E1614:  BLT             loc_1E15A4
1E1618:  MOV             R0, R8
1E161C:  BL              j_ReadUnlock
1E1620:  LDR             R0, [R4,#0xFC]
1E1624:  ADD             R0, R0, #8; mutex
1E1628:  BL              j_LeaveCriticalSection
1E162C:  MOV             R0, R4
1E1630:  SUB             SP, R11, #0x1C
1E1634:  POP             {R4-R11,LR}
1E1638:  B               j_ALCcontext_DecRef
1E163C:  SUB             SP, R11, #0x1C
1E1640:  POP             {R4-R11,PC}
