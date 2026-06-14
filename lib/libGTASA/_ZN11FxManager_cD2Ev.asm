; =========================================================
; Game Engine Function: _ZN11FxManager_cD2Ev
; Address            : 0x36D03E - 0x36D066
; =========================================================

36D03E:  PUSH            {R4,R6,R7,LR}
36D040:  ADD             R7, SP, #8
36D042:  MOV             R4, R0
36D044:  ADD.W           R0, R4, #0xAC; this
36D048:  BLX             j__ZN14FxMemoryPool_cD2Ev; FxMemoryPool_c::~FxMemoryPool_c()
36D04C:  ADD.W           R0, R4, #0x1C; this
36D050:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
36D054:  ADD.W           R0, R4, #0xC; this
36D058:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
36D05C:  MOV             R0, R4; this
36D05E:  POP.W           {R4,R6,R7,LR}
36D062:  B.W             j_j__ZN6List_cD2Ev; j_List_c::~List_c()
