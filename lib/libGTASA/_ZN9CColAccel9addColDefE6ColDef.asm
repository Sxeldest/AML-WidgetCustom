; =========================================================
; Game Engine Function: _ZN9CColAccel9addColDefE6ColDef
; Address            : 0x466538 - 0x466596
; =========================================================

466538:  PUSH            {R4,R5,R7,LR}
46653A:  ADD             R7, SP, #8
46653C:  LDR.W           R12, =(_ZN9CColAccel15m_iNumColBoundsE_ptr - 0x466548)
466540:  LDR.W           LR, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x46654A)
466544:  ADD             R12, PC; _ZN9CColAccel15m_iNumColBoundsE_ptr
466546:  ADD             LR, PC; _ZN9CColAccel11m_colBoundsE_ptr
466548:  LDR.W           R12, [R12]; CColAccel::m_iNumColBounds ...
46654C:  LDR.W           LR, [LR]; CColAccel::m_colBounds ...
466550:  LDR.W           R4, [R12]; CColAccel::m_iNumColBounds
466554:  LDR.W           R5, [LR]; CColAccel::m_colBounds
466558:  ADD.W           R4, R4, R4,LSL#1
46655C:  STR.W           R0, [R5,R4,LSL#3]
466560:  ADD.W           R0, R5, R4,LSL#3
466564:  ADDS            R0, #4
466566:  STM             R0!, {R1-R3}
466568:  LDR.W           R0, [R12]; CColAccel::m_iNumColBounds
46656C:  LDR.W           R5, [LR]; CColAccel::m_colBounds
466570:  LDR             R1, [R7,#arg_18]
466572:  ADD.W           R4, R0, R0,LSL#1
466576:  LDRH            R2, [R7,#arg_12]
466578:  LDR             R3, [R7,#arg_14]
46657A:  ADDS            R0, #1
46657C:  ADD.W           R5, R5, R4,LSL#3
466580:  STRH            R3, [R5,#0x12]
466582:  STRH            R2, [R5,#0x10]
466584:  UBFX.W          R2, R1, #0x10, #1
466588:  STRB            R2, [R5,#0x14]
46658A:  UBFX.W          R1, R1, #0x18, #1
46658E:  STRB            R1, [R5,#0x15]
466590:  STR.W           R0, [R12]; CColAccel::m_iNumColBounds
466594:  POP             {R4,R5,R7,PC}
