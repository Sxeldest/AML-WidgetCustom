; =========================================================
; Game Engine Function: _ZN11CHandObjectD0Ev
; Address            : 0x452C0C - 0x452C1C
; =========================================================

452C0C:  PUSH            {R7,LR}
452C0E:  MOV             R7, SP
452C10:  BLX             j__ZN7CObjectD2Ev; CObject::~CObject()
452C14:  POP.W           {R7,LR}
452C18:  B.W             j_j__ZN7CObjectdlEPv; j_CObject::operator delete(void *)
