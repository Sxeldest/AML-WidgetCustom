; =========================================================
; Game Engine Function: _Z18_rpLightTieDestroyP10RpLightTie
; Address            : 0x21D7F8 - 0x21D83A
; =========================================================

21D7F8:  PUSH            {R7,LR}
21D7FA:  MOV             R7, SP
21D7FC:  MOV             R1, R0
21D7FE:  LDR.W           R12, =(RwEngineInstance_ptr - 0x21D80C)
21D802:  LDRD.W          R0, R2, [R1,#0xC]
21D806:  STR             R0, [R2]
21D808:  ADD             R12, PC; RwEngineInstance_ptr
21D80A:  LDRD.W          R0, R2, [R1,#0xC]
21D80E:  LDR.W           LR, =(dword_6BD690 - 0x21D81C)
21D812:  LDR.W           R3, [R12]; RwEngineInstance
21D816:  STR             R2, [R0,#4]
21D818:  ADD             LR, PC; dword_6BD690
21D81A:  LDRD.W          R0, R2, [R1]
21D81E:  STR             R0, [R2]
21D820:  LDRD.W          R0, R2, [R1]
21D824:  STR             R2, [R0,#4]
21D826:  LDR             R0, [R3]
21D828:  LDR.W           R2, [LR]
21D82C:  LDR.W           R3, [R0,#0x140]
21D830:  ADD             R0, R2
21D832:  LDR             R0, [R0,#4]
21D834:  BLX             R3
21D836:  MOVS            R0, #1
21D838:  POP             {R7,PC}
