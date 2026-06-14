; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_cD0Ev
; Address            : 0x366CE0 - 0x366CF0
; =========================================================

366CE0:  PUSH            {R7,LR}
366CE2:  MOV             R7, SP
366CE4:  BLX             j__ZN10FxPrimBP_cD2Ev; FxPrimBP_c::~FxPrimBP_c()
366CE8:  POP.W           {R7,LR}
366CEC:  B.W             j__ZdlPv; operator delete(void *)
