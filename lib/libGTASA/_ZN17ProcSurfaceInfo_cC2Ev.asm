; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_cC2Ev
; Address            : 0x45615C - 0x45616E
; =========================================================

45615C:  PUSH            {R4,R6,R7,LR}
45615E:  ADD             R7, SP, #8
456160:  MOV             R4, R0
456162:  ADD.W           R0, R4, #0x3C ; '<'; this
456166:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
45616A:  MOV             R0, R4
45616C:  POP             {R4,R6,R7,PC}
