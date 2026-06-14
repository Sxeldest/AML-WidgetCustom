; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager27AddMusicTrackIndexToHistoryEaa
; Address            : 0x3A1634 - 0x3A168C
; =========================================================

3A1634:  PUSH            {R4,R5,R7,LR}
3A1636:  ADD             R7, SP, #8
3A1638:  CMP             R2, #0
3A163A:  BLT             locret_3A168A
3A163C:  LDR             R3, =(_ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr - 0x3A1644)
3A163E:  UXTB            R4, R2
3A1640:  ADD             R3, PC; _ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr
3A1642:  LDR.W           LR, [R3]; CAERadioTrackManager::m_nMusicTrackIndexHistory ...
3A1646:  ADD.W           R3, R1, R1,LSL#2
3A164A:  LDRB.W          R12, [LR,R3,LSL#2]
3A164E:  CMP             R12, R4
3A1650:  IT EQ
3A1652:  POPEQ           {R4,R5,R7,PC}
3A1654:  LDR             R4, =(_ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr - 0x3A1664)
3A1656:  ADD.W           LR, LR, R3,LSL#2
3A165A:  ADD.W           R3, R1, R1,LSL#2
3A165E:  ADD             R0, R1
3A1660:  ADD             R4, PC; _ZN20CAERadioTrackManager25m_nMusicTrackIndexHistoryE_ptr
3A1662:  LDR             R4, [R4]; CAERadioTrackManager::m_nMusicTrackIndexHistory ...
3A1664:  ADD.W           R3, R4, R3,LSL#2
3A1668:  ADDS            R4, R3, #3
3A166A:  VLD1.8          {D16-D17}, [R4]
3A166E:  LDRB            R4, [R3,#1]
3A1670:  LDRB            R5, [R3,#2]
3A1672:  STRB.W          R12, [R3,#1]
3A1676:  STRB            R4, [R3,#2]
3A1678:  ADDS            R4, R3, #4
3A167A:  VST1.8          {D16-D17}, [R4]
3A167E:  STRB            R5, [R3,#3]
3A1680:  STRB.W          R2, [LR]
3A1684:  LDRB            R1, [R0,#8]
3A1686:  ADDS            R1, #1
3A1688:  STRB            R1, [R0,#8]
3A168A:  POP             {R4,R5,R7,PC}
