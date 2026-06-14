; =========================================================
; Game Engine Function: _ZN36CTaskComplexSeekCoverUntilTargetDead17CreateNextSubTaskEP4CPed
; Address            : 0x4E8DC4 - 0x4E8DEA
; =========================================================

4E8DC4:  PUSH            {R4,R5,R7,LR}
4E8DC6:  ADD             R7, SP, #8
4E8DC8:  MOV             R5, R0
4E8DCA:  MOV             R4, R1
4E8DCC:  LDR             R0, [R5,#8]
4E8DCE:  LDR             R1, [R0]
4E8DD0:  LDR             R1, [R1,#0x14]
4E8DD2:  BLX             R1
4E8DD4:  CMP             R0, #0xCB
4E8DD6:  ITT EQ
4E8DD8:  MOVEQ           R0, #0
4E8DDA:  POPEQ           {R4,R5,R7,PC}
4E8DDC:  LDR             R0, [R5]
4E8DDE:  MOV             R1, R4
4E8DE0:  LDR             R2, [R0,#0x2C]
4E8DE2:  MOV             R0, R5
4E8DE4:  POP.W           {R4,R5,R7,LR}
4E8DE8:  BX              R2
