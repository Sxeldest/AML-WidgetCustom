; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager25AddDJBanterIndexToHistoryEai
; Address            : 0x3A1738 - 0x3A17A2
; =========================================================

3A1738:  PUSH            {R4,R5,R7,LR}
3A173A:  ADD             R7, SP, #8
3A173C:  LDR             R3, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A1742)
3A173E:  ADD             R3, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A1740:  LDR.W           LR, [R3]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A1744:  RSB.W           R3, R1, R1,LSL#4
3A1748:  LDR.W           R12, [LR,R3,LSL#2]
3A174C:  CMP             R12, R2
3A174E:  IT EQ
3A1750:  POPEQ           {R4,R5,R7,PC}
3A1752:  LDR             R4, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A1760)
3A1754:  ADD.W           LR, LR, R3,LSL#2
3A1758:  ADD             R0, R1
3A175A:  MOVS            R1, #0
3A175C:  ADD             R4, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A175E:  LDR             R4, [R4]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A1760:  ADD.W           R3, R4, R3,LSL#2
3A1764:  ADDS            R4, R3, #4
3A1766:  VLD1.32         {D16-D17}, [R4]
3A176A:  ADD.W           R4, R3, #0x14
3A176E:  VLD1.32         {D18-D19}, [R4]
3A1772:  ADD.W           R4, R3, #0x24 ; '$'
3A1776:  VLD1.32         {D20-D21}, [R4]
3A177A:  ADD.W           R4, R3, #8
3A177E:  LDR             R5, [R3,#0x34]
3A1780:  STR.W           R12, [R3,#4]
3A1784:  VST1.32         {D16-D17}, [R4]
3A1788:  ADD.W           R4, R3, #0x28 ; '('
3A178C:  VST1.32         {D20-D21}, [R4]
3A1790:  ADD.W           R4, R3, #0x18
3A1794:  VST1.32         {D18-D19}, [R4]
3A1798:  STR             R5, [R3,#0x38]
3A179A:  STR.W           R2, [LR]
3A179E:  STRB            R1, [R0,#8]
3A17A0:  POP             {R4,R5,R7,PC}
