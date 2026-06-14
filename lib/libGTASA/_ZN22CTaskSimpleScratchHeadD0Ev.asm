; =========================================================
; Game Engine Function: _ZN22CTaskSimpleScratchHeadD0Ev
; Address            : 0x3578D0 - 0x3578E0
; =========================================================

3578D0:  PUSH            {R7,LR}
3578D2:  MOV             R7, SP
3578D4:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
3578D8:  POP.W           {R7,LR}
3578DC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
