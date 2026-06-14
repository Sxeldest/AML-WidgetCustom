; =========================================================
; Game Engine Function: _ZNK22CTaskComplexGangLeader5CloneEv
; Address            : 0x51C3B0 - 0x51C3E8
; =========================================================

51C3B0:  PUSH            {R4,R6,R7,LR}
51C3B2:  ADD             R7, SP, #8
51C3B4:  MOV             R4, R0
51C3B6:  MOVS            R0, #dword_38; this
51C3B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51C3BC:  LDR             R4, [R4,#0xC]
51C3BE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51C3C2:  LDR             R1, =(_ZTV22CTaskComplexGangLeader_ptr - 0x51C3CC)
51C3C4:  MOVS            R2, #0
51C3C6:  STRH            R2, [R0,#0x18]
51C3C8:  ADD             R1, PC; _ZTV22CTaskComplexGangLeader_ptr
51C3CA:  STRH            R2, [R0,#0x24]
51C3CC:  STRD.W          R2, R2, [R0,#0x1C]
51C3D0:  LDR             R1, [R1]; `vtable for'CTaskComplexGangLeader ...
51C3D2:  STRH            R2, [R0,#0x30]
51C3D4:  STRD.W          R2, R2, [R0,#0x28]
51C3D8:  ADDS            R1, #8
51C3DA:  STRD.W          R4, R2, [R0,#0xC]
51C3DE:  STR             R2, [R0,#0x14]
51C3E0:  STRB.W          R2, [R0,#0x34]
51C3E4:  STR             R1, [R0]
51C3E6:  POP             {R4,R6,R7,PC}
