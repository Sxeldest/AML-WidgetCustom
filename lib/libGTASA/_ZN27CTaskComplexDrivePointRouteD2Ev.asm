; =========================================================
; Game Engine Function: _ZN27CTaskComplexDrivePointRouteD2Ev
; Address            : 0x4FC7AC - 0x4FC7D0
; =========================================================

4FC7AC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexDrivePointRoute::~CTaskComplexDrivePointRoute()'
4FC7AE:  ADD             R7, SP, #8
4FC7B0:  MOV             R4, R0
4FC7B2:  LDR             R0, =(_ZTV27CTaskComplexDrivePointRoute_ptr - 0x4FC7B8)
4FC7B4:  ADD             R0, PC; _ZTV27CTaskComplexDrivePointRoute_ptr
4FC7B6:  LDR             R1, [R0]; `vtable for'CTaskComplexDrivePointRoute ...
4FC7B8:  LDR             R0, [R4,#0x10]; void *
4FC7BA:  ADDS            R1, #8
4FC7BC:  STR             R1, [R4]
4FC7BE:  CMP             R0, #0
4FC7C0:  IT NE
4FC7C2:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
4FC7C6:  MOV             R0, R4; this
4FC7C8:  POP.W           {R4,R6,R7,LR}
4FC7CC:  B.W             sub_18EDE8
