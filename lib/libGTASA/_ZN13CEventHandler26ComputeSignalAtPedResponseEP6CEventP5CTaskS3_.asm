; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeSignalAtPedResponseEP6CEventP5CTaskS3_
; Address            : 0x382B40 - 0x382B5C
; =========================================================

382B40:  PUSH            {R4,R5,R7,LR}
382B42:  ADD             R7, SP, #8
382B44:  MOV             R5, R0
382B46:  MOVS            R0, #off_18; this
382B48:  MOV             R4, R1
382B4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382B4E:  LDRD.W          R1, R2, [R4,#0xC]; int
382B52:  LDRB            R3, [R4,#0x14]; unsigned __int8
382B54:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
382B58:  STR             R0, [R5,#0x24]
382B5A:  POP             {R4,R5,R7,PC}
