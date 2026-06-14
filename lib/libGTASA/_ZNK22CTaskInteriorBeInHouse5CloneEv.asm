; =========================================================
; Game Engine Function: _ZNK22CTaskInteriorBeInHouse5CloneEv
; Address            : 0x528C60 - 0x528C86
; =========================================================

528C60:  PUSH            {R4,R6,R7,LR}
528C62:  ADD             R7, SP, #8
528C64:  MOV             R4, R0
528C66:  MOVS            R0, #off_18; this
528C68:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528C6C:  LDR             R4, [R4,#0xC]
528C6E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528C72:  LDR             R1, =(_ZTV22CTaskInteriorBeInHouse_ptr - 0x528C7E)
528C74:  MOVS            R2, #0
528C76:  STRD.W          R4, R2, [R0,#0xC]
528C7A:  ADD             R1, PC; _ZTV22CTaskInteriorBeInHouse_ptr
528C7C:  STR             R2, [R0,#0x14]
528C7E:  LDR             R1, [R1]; `vtable for'CTaskInteriorBeInHouse ...
528C80:  ADDS            R1, #8
528C82:  STR             R1, [R0]
528C84:  POP             {R4,R6,R7,PC}
