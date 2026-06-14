; =========================================================
; Game Engine Function: _ZN11FxEmitter_cD0Ev
; Address            : 0x3696C4 - 0x3696D4
; =========================================================

3696C4:  PUSH            {R7,LR}
3696C6:  MOV             R7, SP
3696C8:  BLX             j__ZN8FxPrim_cD2Ev; FxPrim_c::~FxPrim_c()
3696CC:  POP.W           {R7,LR}
3696D0:  B.W             j__ZdlPv; operator delete(void *)
