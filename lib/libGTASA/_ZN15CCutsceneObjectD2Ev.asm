; =========================================================
; Game Engine Function: _ZN15CCutsceneObjectD2Ev
; Address            : 0x4659F4 - 0x465A02
; =========================================================

4659F4:  LDR             R1, =(_ZTV15CCutsceneObject_ptr - 0x4659FA)
4659F6:  ADD             R1, PC; _ZTV15CCutsceneObject_ptr
4659F8:  LDR             R1, [R1]; `vtable for'CCutsceneObject ...
4659FA:  ADDS            R1, #8
4659FC:  STR             R1, [R0]
4659FE:  B.W             j_j__ZN7CObjectD2Ev; j_CObject::~CObject()
