; =========================================================
; Game Engine Function: _ZN11CProjectileD0Ev
; Address            : 0x4572DC - 0x4572EC
; =========================================================

4572DC:  PUSH            {R7,LR}
4572DE:  MOV             R7, SP
4572E0:  BLX             j__ZN7CObjectD2Ev; CObject::~CObject()
4572E4:  POP.W           {R7,LR}
4572E8:  B.W             j_j__ZN7CObjectdlEPv; j_CObject::operator delete(void *)
