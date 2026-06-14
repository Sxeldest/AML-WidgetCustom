; =========================================================
; Game Engine Function: _ZN29CTaskComplexWaitForDryWeatherD0Ev
; Address            : 0x4EE44C - 0x4EE45C
; =========================================================

4EE44C:  PUSH            {R7,LR}
4EE44E:  MOV             R7, SP
4EE450:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EE454:  POP.W           {R7,LR}
4EE458:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
