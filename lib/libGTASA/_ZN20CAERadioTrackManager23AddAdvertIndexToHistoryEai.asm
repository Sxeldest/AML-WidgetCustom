; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager23AddAdvertIndexToHistoryEai
; Address            : 0x3A16E0 - 0x3A1730
; =========================================================

3A16E0:  PUSH            {R4,R5,R7,LR}
3A16E2:  ADD             R7, SP, #8
3A16E4:  LDR             R3, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x3A16EE)
3A16E6:  ADD.W           LR, R1, R1,LSL#2
3A16EA:  ADD             R3, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
3A16EC:  LDR.W           R12, [R3]; CAERadioTrackManager::m_nAdvertIndexHistory ...
3A16F0:  MOV.W           R3, LR,LSL#5
3A16F4:  LDR.W           R3, [R12,R3]
3A16F8:  CMP             R3, R2
3A16FA:  IT EQ
3A16FC:  POPEQ           {R4,R5,R7,PC}
3A16FE:  LDR             R3, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x3A1708)
3A1700:  ADD.W           R12, R12, LR,LSL#5
3A1704:  ADD             R3, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
3A1706:  LDR             R3, [R3]; CAERadioTrackManager::m_nAdvertIndexHistory ...
3A1708:  ADD.W           LR, R3, LR,LSL#5
3A170C:  MOVS            R3, #0
3A170E:  ADD.W           R4, LR, R3,LSL#2
3A1712:  LDR.W           R5, [R4,#0x98]
3A1716:  STR.W           R5, [R4,#0x9C]
3A171A:  ADD.W           R4, R3, #0x27 ; '''
3A171E:  SUBS            R3, #1
3A1720:  CMP             R4, #1
3A1722:  BGT             loc_3A170E
3A1724:  ADD             R0, R1
3A1726:  MOVS            R1, #0
3A1728:  STR.W           R2, [R12]
3A172C:  STRB            R1, [R0,#8]
3A172E:  POP             {R4,R5,R7,PC}
