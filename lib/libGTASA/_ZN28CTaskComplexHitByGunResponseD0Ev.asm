; =========================================================
; Game Engine Function: _ZN28CTaskComplexHitByGunResponseD0Ev
; Address            : 0x4ECFF8 - 0x4ED008
; =========================================================

4ECFF8:  PUSH            {R7,LR}
4ECFFA:  MOV             R7, SP
4ECFFC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4ED000:  POP.W           {R7,LR}
4ED004:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
