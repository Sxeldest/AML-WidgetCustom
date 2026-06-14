; =========================================================
; Game Engine Function: inflate_trees_fixed
; Address            : 0x20F59C - 0x20F5C0
; =========================================================

20F59C:  PUSH            {R4,R6,R7,LR}
20F59E:  ADD             R7, SP, #8
20F5A0:  MOVS            R4, #9
20F5A2:  LDR.W           R12, =(unk_682990 - 0x20F5B6)
20F5A6:  LDR.W           LR, =(unk_683990 - 0x20F5B8)
20F5AA:  STR             R4, [R0]
20F5AC:  MOVS            R0, #5
20F5AE:  STR             R0, [R1]
20F5B0:  MOVS            R0, #0
20F5B2:  ADD             R12, PC; unk_682990
20F5B4:  ADD             LR, PC; unk_683990
20F5B6:  STR.W           R12, [R2]
20F5BA:  STR.W           LR, [R3]
20F5BE:  POP             {R4,R6,R7,PC}
