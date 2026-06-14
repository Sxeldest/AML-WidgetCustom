; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequence18CreateFirstSubTaskEP4CPed
; Address            : 0x4F1740 - 0x4F1798
; =========================================================

4F1740:  PUSH            {R4,R5,R7,LR}
4F1742:  ADD             R7, SP, #8
4F1744:  MOV             R5, R0
4F1746:  LDR             R0, [R5,#0xC]
4F1748:  ADDS            R1, R0, #1
4F174A:  BEQ             loc_4F1792
4F174C:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F1754)
4F174E:  LDR             R2, [R5,#0x10]
4F1750:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F1752:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
4F1754:  ADD.W           R0, R1, R0,LSL#6
4F1758:  ADD.W           R0, R0, R2,LSL#2
4F175C:  LDR             R0, [R0,#0x10]
4F175E:  CBZ             R0, loc_4F1792
4F1760:  LDR             R1, [R0]
4F1762:  LDR             R1, [R1,#8]
4F1764:  BLX             R1
4F1766:  MOV             R4, R0
4F1768:  CMP             R4, #0
4F176A:  ITT NE
4F176C:  LDRNE           R0, [R5,#0x14]
4F176E:  ADDSNE.W        R0, R0, #1
4F1772:  BEQ             loc_4F178E
4F1774:  LDR             R0, [R4]
4F1776:  LDR             R1, [R0,#0x14]
4F1778:  MOV             R0, R4
4F177A:  BLX             R1
4F177C:  MOVW            R1, #0x113
4F1780:  CMP             R0, R1
4F1782:  ITTT EQ
4F1784:  MOVEQ.W         R0, #0xFFFFFFFF
4F1788:  LDREQ           R1, [R5,#0x14]
4F178A:  STRDEQ.W        R1, R0, [R4,#0x10]
4F178E:  MOV             R0, R4
4F1790:  POP             {R4,R5,R7,PC}
4F1792:  MOVS            R4, #0
4F1794:  MOV             R0, R4
4F1796:  POP             {R4,R5,R7,PC}
