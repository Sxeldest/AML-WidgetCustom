; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleGiveCPR5CloneEv
; Address            : 0x51224C - 0x51227C
; =========================================================

51224C:  PUSH            {R4,R6,R7,LR}
51224E:  ADD             R7, SP, #8
512250:  MOV             R4, R0
512252:  MOVS            R0, #off_18; this
512254:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512258:  LDR             R4, [R4,#0xC]
51225A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51225E:  LDR             R1, =(_ZTV18CTaskSimpleGiveCPR_ptr - 0x512268)
512260:  MOVS            R2, #0
512262:  LDRB            R3, [R0,#8]
512264:  ADD             R1, PC; _ZTV18CTaskSimpleGiveCPR_ptr
512266:  STRD.W          R4, R2, [R0,#0xC]
51226A:  LDR             R1, [R1]; `vtable for'CTaskSimpleGiveCPR ...
51226C:  ADDS            R1, #8
51226E:  STR             R1, [R0]
512270:  AND.W           R1, R3, #0xFC
512274:  ORR.W           R1, R1, #1
512278:  STRB            R1, [R0,#8]
51227A:  POP             {R4,R6,R7,PC}
