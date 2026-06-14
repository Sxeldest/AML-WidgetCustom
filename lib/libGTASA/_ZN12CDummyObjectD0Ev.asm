; =========================================================
; Game Engine Function: _ZN12CDummyObjectD0Ev
; Address            : 0x4527FC - 0x45280C
; =========================================================

4527FC:  PUSH            {R7,LR}
4527FE:  MOV             R7, SP
452800:  BLX             j__ZN6CDummyD2Ev; CDummy::~CDummy()
452804:  POP.W           {R7,LR}
452808:  B.W             sub_18C6B4
