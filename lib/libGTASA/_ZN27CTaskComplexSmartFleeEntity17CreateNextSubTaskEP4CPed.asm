; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity17CreateNextSubTaskEP4CPed
; Address            : 0x513DC8 - 0x513E04
; =========================================================

513DC8:  PUSH            {R4,R5,R7,LR}
513DCA:  ADD             R7, SP, #8
513DCC:  MOV             R4, R0
513DCE:  LDRD.W          R0, R5, [R4,#8]
513DD2:  LDR             R1, [R0]
513DD4:  LDR             R1, [R1,#0x14]
513DD6:  BLX             R1
513DD8:  LDR             R0, [R4,#8]
513DDA:  LDR             R1, [R0]
513DDC:  LDR             R1, [R1,#0x14]
513DDE:  BLX             R1
513DE0:  CBZ             R5, loc_513DF4
513DE2:  MOVW            R1, #0x38E
513DE6:  CMP             R0, R1
513DE8:  BEQ             loc_513DF8
513DEA:  CMP             R0, #0xCB
513DEC:  BNE             loc_513DF4
513DEE:  MOVW            R1, #0x38E
513DF2:  B               loc_513DFC
513DF4:  MOVS            R0, #0
513DF6:  POP             {R4,R5,R7,PC}
513DF8:  MOVW            R1, #0x516; int
513DFC:  MOV             R0, R4; this
513DFE:  POP.W           {R4,R5,R7,LR}
513E02:  B               _ZN27CTaskComplexSmartFleeEntity13CreateSubTaskEi; CTaskComplexSmartFleeEntity::CreateSubTask(int)
