; =========================================================
; Game Engine Function: _ZNK21CTaskComplexLeaveBoat13CreateSubTaskEi
; Address            : 0x4F95BA - 0x4F95DC
; =========================================================

4F95BA:  PUSH            {R4,R6,R7,LR}
4F95BC:  ADD             R7, SP, #8
4F95BE:  MOV             R4, R0
4F95C0:  CMP.W           R1, #0x330
4F95C4:  ITT NE
4F95C6:  MOVNE           R0, #0
4F95C8:  POPNE           {R4,R6,R7,PC}
4F95CA:  MOVS            R0, #off_18; this
4F95CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F95D0:  LDR             R1, [R4,#0xC]; CVehicle *
4F95D2:  MOVS            R2, #0; int
4F95D4:  MOVS            R3, #1; bool
4F95D6:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F95DA:  POP             {R4,R6,R7,PC}
