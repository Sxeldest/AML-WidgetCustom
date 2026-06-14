; =========================================================
; Game Engine Function: sub_21E608
; Address            : 0x21E608 - 0x21E640
; =========================================================

21E608:  PUSH            {R4,R5,R7,LR}
21E60A:  ADD             R7, SP, #8
21E60C:  MOV             R4, R0
21E60E:  LDR             R0, =(dword_6BD638 - 0x21E614)
21E610:  ADD             R0, PC; dword_6BD638
21E612:  LDR             R0, [R0]
21E614:  ADDS            R5, R4, R0
21E616:  BEQ             loc_21E63C
21E618:  LDR             R0, [R5,#0xC]
21E61A:  CMP             R0, R1
21E61C:  BNE             loc_21E63C
21E61E:  CBZ             R0, loc_21E63C
21E620:  LDR             R0, [R5]
21E622:  CBZ             R0, loc_21E632
21E624:  LDR             R1, =(RwEngineInstance_ptr - 0x21E62A)
21E626:  ADD             R1, PC; RwEngineInstance_ptr
21E628:  LDR             R1, [R1]; RwEngineInstance
21E62A:  LDR             R1, [R1]
21E62C:  LDR.W           R1, [R1,#0x130]
21E630:  BLX             R1
21E632:  MOVS            R0, #0
21E634:  STRD.W          R0, R0, [R5]
21E638:  STRD.W          R0, R0, [R5,#8]
21E63C:  MOV             R0, R4
21E63E:  POP             {R4,R5,R7,PC}
