; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfoD0Ev
; Address            : 0x5297F4 - 0x529818
; =========================================================

5297F4:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x5297FA)
5297F6:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
5297F8:  LDR             R2, [R1]; `vtable for'CTaskInteriorUseInfo ...
5297FA:  LDR             R1, [R0,#0xC]
5297FC:  ADDS            R2, #8
5297FE:  STR             R2, [R0]
529800:  CMP             R1, #0
529802:  ITT NE
529804:  MOVNE           R2, #0
529806:  STRBNE          R2, [R1,#1]
529808:  PUSH            {R7,LR}
52980A:  MOV             R7, SP
52980C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
529810:  POP.W           {R7,LR}
529814:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
