; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager18ShutdownForRestartEv
; Address            : 0x3615E4 - 0x361658
; =========================================================

3615E4:  LDR             R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x3615EA)
3615E6:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
3615E8:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
3615EA:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps
3615EC:  LDR             R1, [R0,#8]
3615EE:  CMP             R1, #1
3615F0:  BLT             loc_361610
3615F2:  MOVS            R1, #0
3615F4:  LDR             R2, [R0,#4]
3615F6:  LDRB            R3, [R2,R1]
3615F8:  ORR.W           R3, R3, #0x80
3615FC:  STRB            R3, [R2,R1]
3615FE:  LDR             R2, [R0,#4]
361600:  LDRB            R3, [R2,R1]
361602:  AND.W           R3, R3, #0x80
361606:  STRB            R3, [R2,R1]
361608:  ADDS            R1, #1
36160A:  LDR             R2, [R0,#8]
36160C:  CMP             R1, R2
36160E:  BLT             loc_3615F4
361610:  PUSH            {R4-R7,LR}
361612:  ADD             R7, SP, #0x14+var_8
361614:  PUSH.W          {R11}
361618:  LDR             R0, =(_ZN17CStuntJumpManager12m_bHitRewardE_ptr - 0x361622)
36161A:  LDR             R1, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x361626)
36161C:  LDR             R2, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x36162C)
36161E:  ADD             R0, PC; _ZN17CStuntJumpManager12m_bHitRewardE_ptr
361620:  LDR             R3, =(_ZN17CStuntJumpManager15m_iNumCompletedE_ptr - 0x361632)
361622:  ADD             R1, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
361624:  LDR.W           R12, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x361634)
361628:  ADD             R2, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
36162A:  LDR.W           LR, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x361638)
36162E:  ADD             R3, PC; _ZN17CStuntJumpManager15m_iNumCompletedE_ptr
361630:  ADD             R12, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361632:  LDR             R4, [R1]; CStuntJumpManager::m_jumpState ...
361634:  ADD             LR, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
361636:  LDR             R5, [R2]; CStuntJumpManager::m_iNumJumps ...
361638:  LDR             R6, [R3]; CStuntJumpManager::m_iNumCompleted ...
36163A:  MOVS            R3, #0
36163C:  LDR             R0, [R0]; CStuntJumpManager::m_bHitReward ...
36163E:  LDR.W           R1, [R12]; CStuntJumpManager::mp_Active ...
361642:  LDR.W           R2, [LR]; CStuntJumpManager::m_iTimer ...
361646:  STRB            R3, [R0]; CStuntJumpManager::m_bHitReward
361648:  STR             R3, [R1]; CStuntJumpManager::mp_Active
36164A:  STR             R3, [R2]; CStuntJumpManager::m_iTimer
36164C:  STR             R3, [R4]; CStuntJumpManager::m_jumpState
36164E:  STR             R3, [R5]; CStuntJumpManager::m_iNumJumps
361650:  STR             R3, [R6]; CStuntJumpManager::m_iNumCompleted
361652:  POP.W           {R11}
361656:  POP             {R4-R7,PC}
