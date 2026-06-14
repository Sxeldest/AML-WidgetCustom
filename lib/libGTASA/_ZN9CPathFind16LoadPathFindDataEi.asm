; =========================================================
; Game Engine Function: _ZN9CPathFind16LoadPathFindDataEi
; Address            : 0x3152E0 - 0x31532A
; =========================================================

3152E0:  PUSH            {R4-R7,LR}
3152E2:  ADD             R7, SP, #0xC
3152E4:  PUSH.W          {R11}
3152E8:  MOV             R4, R1
3152EA:  MOV             R5, R0
3152EC:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
3152F0:  LDR             R0, =(gString_ptr - 0x3152FA)
3152F2:  ADR             R1, aDataPathsNodes; "data\\paths\\nodes%d.dat"
3152F4:  MOV             R2, R4
3152F6:  ADD             R0, PC; gString_ptr
3152F8:  LDR             R6, [R0]; gString
3152FA:  MOV             R0, R6
3152FC:  BL              sub_5E6BC0
315300:  MOVS            R0, #2
315302:  MOVS            R1, #1
315304:  MOV             R2, R6
315306:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
31530A:  MOV             R6, R0
31530C:  MOV             R0, R5
31530E:  MOV             R1, R6
315310:  MOV             R2, R4
315312:  BLX             j__ZN9CPathFind16LoadPathFindDataEP8RwStreami; CPathFind::LoadPathFindData(RwStream *,int)
315316:  MOV             R0, R6
315318:  MOVS            R1, #0
31531A:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
31531E:  POP.W           {R11}
315322:  POP.W           {R4-R7,LR}
315326:  B.W             sub_19F7CC
