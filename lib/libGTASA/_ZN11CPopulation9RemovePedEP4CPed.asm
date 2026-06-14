; =========================================================
; Game Engine Function: _ZN11CPopulation9RemovePedEP4CPed
; Address            : 0x4CE630 - 0x4CE64C
; =========================================================

4CE630:  PUSH            {R4,R6,R7,LR}
4CE632:  ADD             R7, SP, #8
4CE634:  MOV             R4, R0
4CE636:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CE63A:  CMP             R4, #0
4CE63C:  IT EQ
4CE63E:  POPEQ           {R4,R6,R7,PC}
4CE640:  LDR             R0, [R4]
4CE642:  LDR             R1, [R0,#4]
4CE644:  MOV             R0, R4
4CE646:  POP.W           {R4,R6,R7,LR}
4CE64A:  BX              R1
