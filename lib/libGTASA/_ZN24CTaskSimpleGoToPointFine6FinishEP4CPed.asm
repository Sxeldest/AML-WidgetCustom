; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine6FinishEP4CPed
; Address            : 0x517864 - 0x517890
; =========================================================

517864:  PUSH            {R4,R5,R7,LR}
517866:  ADD             R7, SP, #8
517868:  MOV             R4, R1
51786A:  MOV             R5, R0
51786C:  MOV             R0, R4
51786E:  MOVS            R1, #1
517870:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517874:  LDR             R0, [R4]
517876:  LDR             R1, [R0,#0x60]
517878:  MOV             R0, R4
51787A:  BLX             R1
51787C:  LDR             R1, [R5,#8]
51787E:  MOV             R0, R4
517880:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517884:  LDR             R0, [R4]
517886:  LDR             R1, [R0,#0x60]
517888:  MOV             R0, R4
51788A:  POP.W           {R4,R5,R7,LR}
51788E:  BX              R1
