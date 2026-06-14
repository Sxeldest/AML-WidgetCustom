; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_cD2Ev
; Address            : 0x45616E - 0x456180
; =========================================================

45616E:  PUSH            {R4,R6,R7,LR}; Alternative name is 'ProcSurfaceInfo_c::~ProcSurfaceInfo_c()'
456170:  ADD             R7, SP, #8
456172:  MOV             R4, R0
456174:  ADD.W           R0, R4, #0x3C ; '<'; this
456178:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
45617C:  MOV             R0, R4
45617E:  POP             {R4,R6,R7,PC}
