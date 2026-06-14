; =========================================================
; Game Engine Function: _ZN19CTaskComplexBeStill17CreateNextSubTaskEP4CPed
; Address            : 0x4EABC6 - 0x4EABF4
; =========================================================

4EABC6:  PUSH            {R4,R5,R7,LR}
4EABC8:  ADD             R7, SP, #8
4EABCA:  MOV             R5, R0
4EABCC:  MOV             R4, R1
4EABCE:  LDR             R0, [R5,#8]
4EABD0:  LDR             R1, [R0]
4EABD2:  LDR             R1, [R1,#0x14]
4EABD4:  BLX             R1
4EABD6:  MOVW            R1, #0x2C5
4EABDA:  CMP             R0, R1
4EABDC:  IT NE
4EABDE:  CMPNE           R0, #0xCB
4EABE0:  BNE             loc_4EABF0
4EABE2:  LDR             R0, [R5]
4EABE4:  MOV             R1, R4
4EABE6:  LDR             R2, [R0,#0x2C]
4EABE8:  MOV             R0, R5
4EABEA:  POP.W           {R4,R5,R7,LR}
4EABEE:  BX              R2
4EABF0:  MOVS            R0, #0
4EABF2:  POP             {R4,R5,R7,PC}
