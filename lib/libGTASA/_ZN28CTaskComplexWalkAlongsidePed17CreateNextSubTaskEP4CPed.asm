; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePed17CreateNextSubTaskEP4CPed
; Address            : 0x535DD8 - 0x535E14
; =========================================================

535DD8:  PUSH            {R4,R5,R7,LR}
535DDA:  ADD             R7, SP, #8
535DDC:  MOV             R5, R0
535DDE:  MOV             R4, R1
535DE0:  LDR             R0, [R5,#0xC]
535DE2:  CBZ             R0, loc_535E04
535DE4:  LDR             R0, [R5,#8]
535DE6:  LDR             R1, [R0]
535DE8:  LDR             R1, [R1,#0x14]
535DEA:  BLX             R1
535DEC:  CMP             R0, #0xCB
535DEE:  BEQ             loc_535DFE
535DF0:  MOVW            R1, #0x38B
535DF4:  CMP             R0, R1
535DF6:  BEQ             loc_535E08
535DF8:  CMP.W           R0, #0x2C0
535DFC:  BNE             loc_535E04
535DFE:  MOVW            R1, #0x38B
535E02:  B               loc_535E0A
535E04:  MOVS            R0, #0
535E06:  POP             {R4,R5,R7,PC}
535E08:  MOVS            R1, #0xCB; int
535E0A:  MOV             R0, R5; this
535E0C:  MOV             R2, R4; CPed *
535E0E:  POP.W           {R4,R5,R7,LR}
535E12:  B               _ZNK28CTaskComplexWalkAlongsidePed13CreateSubTaskEiP4CPed; CTaskComplexWalkAlongsidePed::CreateSubTask(int,CPed *)
