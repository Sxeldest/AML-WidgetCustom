; =========================================================
; Game Engine Function: _ZN9CColAccel11addCacheColEiRK9CColModel
; Address            : 0x4663E4 - 0x466454
; =========================================================

4663E4:  LDR             R2, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x4663EA)
4663E6:  ADD             R2, PC; _ZN9CColAccel13m_iCacheStateE_ptr
4663E8:  LDR             R2, [R2]; CColAccel::m_iCacheState ...
4663EA:  LDR             R2, [R2]; CColAccel::m_iCacheState
4663EC:  CMP             R2, #1
4663EE:  IT NE
4663F0:  BXNE            LR
4663F2:  PUSH            {R7,LR}
4663F4:  MOV             R7, SP
4663F6:  LDR             R2, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x4663FE)
4663F8:  LDR             R3, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x466400)
4663FA:  ADD             R2, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
4663FC:  ADD             R3, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
4663FE:  LDR.W           R12, [R2]; CColAccel::m_iNumColItems ...
466402:  LDR             R3, [R3]; CColAccel::mp_caccColItems ...
466404:  LDR.W           LR, [R12]; CColAccel::m_iNumColItems
466408:  LDR             R3, [R3]; CColAccel::mp_caccColItems
46640A:  ADD.W           R2, LR, LR,LSL#1
46640E:  ADD.W           R2, R3, R2,LSL#4
466412:  STR             R0, [R2,#0x28]
466414:  MOV             R0, R1
466416:  VLD1.32         {D16-D17}, [R0]!
46641A:  VLDR            D18, [R1,#0x20]
46641E:  VLD1.32         {D20-D21}, [R0]
466422:  MOV             R0, R2
466424:  VSTR            D18, [R2,#0x20]
466428:  VST1.32         {D16-D17}, [R0]!
46642C:  VST1.32         {D20-D21}, [R0]
466430:  LDRB.W          R0, [R1,#0x28]
466434:  STRB.W          R0, [R2,#0x2C]
466438:  LDRB.W          R1, [R1,#0x29]
46643C:  AND.W           R1, R1, #1
466440:  ORR.W           R0, R0, R1,LSL#8
466444:  STRH            R0, [R2,#0x2C]
466446:  ADD.W           R0, LR, #1
46644A:  STR.W           R0, [R12]; CColAccel::m_iNumColItems
46644E:  POP.W           {R7,LR}
466452:  BX              LR
