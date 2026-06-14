; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x517834 - 0x517864
; =========================================================

517834:  PUSH            {R4,R5,R7,LR}
517836:  ADD             R7, SP, #8
517838:  MOV             R4, R1
51783A:  MOV             R5, R0
51783C:  BLX             j__ZN15CTaskSimpleGoTo6QuitIKEP4CPed; CTaskSimpleGoTo::QuitIK(CPed *)
517840:  MOV             R0, R4
517842:  MOVS            R1, #1
517844:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517848:  LDR             R0, [R4]
51784A:  LDR             R1, [R0,#0x60]
51784C:  MOV             R0, R4
51784E:  BLX             R1
517850:  LDR             R1, [R5,#8]
517852:  MOV             R0, R4
517854:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517858:  LDR             R0, [R4]
51785A:  LDR             R1, [R0,#0x60]
51785C:  MOV             R0, R4
51785E:  BLX             R1
517860:  MOVS            R0, #1
517862:  POP             {R4,R5,R7,PC}
