; =========================================================
; Game Engine Function: _Z12RxHeapCreatej
; Address            : 0x1E1708 - 0x1E17A4
; =========================================================

1E1708:  PUSH            {R4-R7,LR}
1E170A:  ADD             R7, SP, #0xC
1E170C:  PUSH.W          {R11}
1E1710:  MOV             R5, R0
1E1712:  LDR             R0, =(RwEngineInstance_ptr - 0x1E1718)
1E1714:  ADD             R0, PC; RwEngineInstance_ptr
1E1716:  LDR             R0, [R0]; RwEngineInstance
1E1718:  LDR             R0, [R0]
1E171A:  LDR.W           R1, [R0,#0x12C]
1E171E:  MOVS            R0, #0x1C
1E1720:  BLX             R1
1E1722:  MOV             R4, R0
1E1724:  CBZ             R4, loc_1E179A
1E1726:  LDR             R0, =(RwEngineInstance_ptr - 0x1E1730)
1E1728:  CMP.W           R5, #0x400
1E172C:  ADD             R0, PC; RwEngineInstance_ptr
1E172E:  LDR             R0, [R0]; RwEngineInstance
1E1730:  LDR             R0, [R0]
1E1732:  IT LS
1E1734:  MOVLS.W         R5, #0x400
1E1738:  ADD.W           R1, R5, #0x1F
1E173C:  BIC.W           R6, R1, #0x1F
1E1740:  CMP             R6, #0x80
1E1742:  IT LS
1E1744:  MOVLS           R6, #0x80
1E1746:  LDR.W           R1, [R0,#0x12C]
1E174A:  ADD.W           R0, R6, #0x8B
1E174E:  BLX             R1
1E1750:  MOV             R5, R0
1E1752:  CBZ             R5, loc_1E178A
1E1754:  ADD.W           R1, R5, #0x8B
1E1758:  MOVS            R0, #0
1E175A:  BIC.W           R1, R1, #0x7F
1E175E:  STRD.W          R1, R6, [R5]
1E1762:  MOVS            R1, #1
1E1764:  STR             R0, [R5,#8]
1E1766:  STRD.W          R6, R5, [R4]
1E176A:  STRD.W          R0, R0, [R4,#0xC]
1E176E:  STRD.W          R0, R1, [R4,#0x14]
1E1772:  MOV             R0, R4
1E1774:  BLX             j__Z12_rxHeapResetP6RxHeap; _rxHeapReset(RxHeap *)
1E1778:  CBNZ            R0, loc_1E179C
1E177A:  LDR             R0, =(RwEngineInstance_ptr - 0x1E1780)
1E177C:  ADD             R0, PC; RwEngineInstance_ptr
1E177E:  LDR             R0, [R0]; RwEngineInstance
1E1780:  LDR             R0, [R0]
1E1782:  LDR.W           R1, [R0,#0x130]
1E1786:  MOV             R0, R5
1E1788:  BLX             R1
1E178A:  LDR             R0, =(RwEngineInstance_ptr - 0x1E1790)
1E178C:  ADD             R0, PC; RwEngineInstance_ptr
1E178E:  LDR             R0, [R0]; RwEngineInstance
1E1790:  LDR             R0, [R0]
1E1792:  LDR.W           R1, [R0,#0x130]
1E1796:  MOV             R0, R4
1E1798:  BLX             R1
1E179A:  MOVS            R4, #0
1E179C:  MOV             R0, R4
1E179E:  POP.W           {R11}
1E17A2:  POP             {R4-R7,PC}
