; =========================================================
; Game Engine Function: _ZN13CEventHandler16FlushImmediatelyEv
; Address            : 0x37C678 - 0x37C6B0
; =========================================================

37C678:  PUSH            {R4,R5,R7,LR}
37C67A:  ADD             R7, SP, #8
37C67C:  MOV             R4, R0
37C67E:  LDR             R0, [R4,#0xC]
37C680:  CMP             R0, #0
37C682:  ITTT NE
37C684:  LDRNE           R1, [R0]
37C686:  LDRNE           R1, [R1,#4]
37C688:  BLXNE           R1
37C68A:  LDR             R0, [R4,#8]
37C68C:  MOVS            R5, #0
37C68E:  STR             R5, [R4,#0xC]
37C690:  CMP             R0, #0
37C692:  ITTT NE
37C694:  LDRNE           R1, [R0]
37C696:  LDRNE           R1, [R1,#4]
37C698:  BLXNE           R1
37C69A:  LDR             R0, [R4,#0x10]
37C69C:  STR             R5, [R4,#8]
37C69E:  CMP             R0, #0
37C6A0:  IT EQ
37C6A2:  POPEQ           {R4,R5,R7,PC}
37C6A4:  LDR             R1, [R0]
37C6A6:  LDR             R1, [R1,#4]
37C6A8:  BLX             R1
37C6AA:  MOVS            R0, #0
37C6AC:  STR             R0, [R4,#0x10]
37C6AE:  POP             {R4,R5,R7,PC}
