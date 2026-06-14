; =========================================================
; Game Engine Function: _ZN35CTaskComplexLeaveCarAsPassengerWait17CreateNextSubTaskEP4CPed
; Address            : 0x4F7FA4 - 0x4F7FE8
; =========================================================

4F7FA4:  PUSH            {R4,R5,R7,LR}
4F7FA6:  ADD             R7, SP, #8
4F7FA8:  MOV             R5, R0
4F7FAA:  MOV             R4, R1
4F7FAC:  LDR             R0, [R5,#8]
4F7FAE:  LDR             R1, [R0]
4F7FB0:  LDR             R1, [R1,#0x14]
4F7FB2:  BLX             R1
4F7FB4:  CMP.W           R0, #0x384
4F7FB8:  MOVW            R1, #0x516
4F7FBC:  ITT NE
4F7FBE:  MOVWNE          R2, #0x2C5
4F7FC2:  CMPNE           R0, R2
4F7FC4:  BEQ             loc_4F7FDE
4F7FC6:  CMP.W           R0, #0x2C0
4F7FCA:  ITT NE
4F7FCC:  MOVNE           R0, #0
4F7FCE:  POPNE           {R4,R5,R7,PC}
4F7FD0:  LDR             R0, [R5,#0xC]
4F7FD2:  MOV.W           R1, #0x384
4F7FD6:  CMP             R0, #0
4F7FD8:  IT EQ
4F7FDA:  MOVWEQ          R1, #0x516; int
4F7FDE:  MOV             R0, R5; this
4F7FE0:  MOV             R2, R4; CPed *
4F7FE2:  POP.W           {R4,R5,R7,LR}
4F7FE6:  B               _ZNK35CTaskComplexLeaveCarAsPassengerWait13CreateSubTaskEiP4CPed; CTaskComplexLeaveCarAsPassengerWait::CreateSubTask(int,CPed *)
