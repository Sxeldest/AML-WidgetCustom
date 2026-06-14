; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoat18CreateFirstSubTaskEP4CPed
; Address            : 0x4F95A0 - 0x4F95BA
; =========================================================

4F95A0:  PUSH            {R4,R6,R7,LR}
4F95A2:  ADD             R7, SP, #8
4F95A4:  MOV             R4, R0
4F95A6:  MOVS            R0, #off_18; this
4F95A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F95AC:  LDR             R1, [R4,#0xC]; CVehicle *
4F95AE:  MOVS            R2, #0; int
4F95B0:  MOVS            R3, #1; bool
4F95B2:  POP.W           {R4,R6,R7,LR}
4F95B6:  B.W             sub_192738
