; =========================================================
; Game Engine Function: _ZNK25CTaskComplexWalkRoundFire5CloneEv
; Address            : 0x5100A0 - 0x5100E4
; =========================================================

5100A0:  PUSH            {R4-R7,LR}
5100A2:  ADD             R7, SP, #0xC
5100A4:  PUSH.W          {R11}
5100A8:  MOV             R4, R0
5100AA:  MOVS            R0, #dword_38; this
5100AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5100B0:  LDR             R5, [R4,#0xC]
5100B2:  LDR             R6, [R4,#0x1C]
5100B4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5100B8:  LDR             R1, =(_ZTV25CTaskComplexWalkRoundFire_ptr - 0x5100C0)
5100BA:  STR             R5, [R0,#0xC]
5100BC:  ADD             R1, PC; _ZTV25CTaskComplexWalkRoundFire_ptr
5100BE:  LDR             R1, [R1]; `vtable for'CTaskComplexWalkRoundFire ...
5100C0:  ADDS            R1, #8
5100C2:  STR             R1, [R0]
5100C4:  VLDR            D16, [R4,#0x10]
5100C8:  LDR             R1, [R4,#0x18]
5100CA:  STRD.W          R1, R6, [R0,#0x18]
5100CE:  VSTR            D16, [R0,#0x10]
5100D2:  VLDR            D16, [R4,#0x20]
5100D6:  LDR             R1, [R4,#0x28]
5100D8:  STR             R1, [R0,#0x28]
5100DA:  VSTR            D16, [R0,#0x20]
5100DE:  POP.W           {R11}
5100E2:  POP             {R4-R7,PC}
