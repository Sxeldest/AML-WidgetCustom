; =========================================================
; Game Engine Function: _ZN15CCutsceneObjectD0Ev
; Address            : 0x465A08 - 0x465A22
; =========================================================

465A08:  PUSH            {R7,LR}
465A0A:  MOV             R7, SP
465A0C:  LDR             R1, =(_ZTV15CCutsceneObject_ptr - 0x465A12)
465A0E:  ADD             R1, PC; _ZTV15CCutsceneObject_ptr
465A10:  LDR             R1, [R1]; `vtable for'CCutsceneObject ...
465A12:  ADDS            R1, #8
465A14:  STR             R1, [R0]
465A16:  BLX             j__ZN7CObjectD2Ev; CObject::~CObject()
465A1A:  POP.W           {R7,LR}
465A1E:  B.W             j_j__ZN7CObjectdlEPv; j_CObject::operator delete(void *)
