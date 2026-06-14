; =========================================================
; Game Engine Function: _ZNK32CTaskComplexObserveTrafficLights5CloneEv
; Address            : 0x4F3098 - 0x4F30BA
; =========================================================

4F3098:  PUSH            {R7,LR}
4F309A:  MOV             R7, SP
4F309C:  MOVS            R0, #off_18; this
4F309E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F30A2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F30A6:  LDR             R1, =(_ZTV32CTaskComplexObserveTrafficLights_ptr - 0x4F30B0)
4F30A8:  MOVS            R2, #0
4F30AA:  STRH            R2, [R0,#0x14]
4F30AC:  ADD             R1, PC; _ZTV32CTaskComplexObserveTrafficLights_ptr
4F30AE:  STRD.W          R2, R2, [R0,#0xC]
4F30B2:  LDR             R1, [R1]; `vtable for'CTaskComplexObserveTrafficLights ...
4F30B4:  ADDS            R1, #8
4F30B6:  STR             R1, [R0]
4F30B8:  POP             {R7,PC}
