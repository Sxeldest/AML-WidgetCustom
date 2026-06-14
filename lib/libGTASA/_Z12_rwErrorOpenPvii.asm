; =========================================================
; Game Engine Function: _Z12_rwErrorOpenPvii
; Address            : 0x1E25D4 - 0x1E260A
; =========================================================

1E25D4:  PUSH            {R4,R6,R7,LR}
1E25D6:  ADD             R7, SP, #8
1E25D8:  LDR             R2, =(RwEngineInstance_ptr - 0x1E25E2)
1E25DA:  LDR.W           LR, =(dword_6BD018 - 0x1E25E8)
1E25DE:  ADD             R2, PC; RwEngineInstance_ptr
1E25E0:  LDR.W           R12, =(dword_6BD014 - 0x1E25EC)
1E25E4:  ADD             LR, PC; dword_6BD018
1E25E6:  LDR             R2, [R2]; RwEngineInstance
1E25E8:  ADD             R12, PC; dword_6BD014
1E25EA:  LDR.W           R3, [LR]
1E25EE:  STR.W           R1, [R12]
1E25F2:  LDR             R4, [R2]
1E25F4:  ADDS            R3, #1
1E25F6:  STR.W           R3, [LR]
1E25FA:  MOVS            R3, #0
1E25FC:  STR             R3, [R4,R1]
1E25FE:  LDR             R2, [R2]
1E2600:  ADD             R1, R2
1E2602:  MOV.W           R2, #0x80000000
1E2606:  STR             R2, [R1,#4]
1E2608:  POP             {R4,R6,R7,PC}
