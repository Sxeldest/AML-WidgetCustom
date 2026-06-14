; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeDontJoinGroupResponseEP6CEventP5CTaskS3_
; Address            : 0x383BC4 - 0x383BDA
; =========================================================

383BC4:  PUSH            {R4,R6,R7,LR}
383BC6:  ADD             R7, SP, #8
383BC8:  MOV             R4, R0
383BCA:  MOVS            R0, #dword_14; this
383BCC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383BD0:  MOVS            R1, #0; unsigned __int8
383BD2:  BLX             j__ZN27CTaskComplexGangJoinRespondC2Eh; CTaskComplexGangJoinRespond::CTaskComplexGangJoinRespond(uchar)
383BD6:  STR             R0, [R4,#0x24]
383BD8:  POP             {R4,R6,R7,PC}
