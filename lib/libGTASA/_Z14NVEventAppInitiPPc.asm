; =========================================================
; Game Engine Function: _Z14NVEventAppInitiPPc
; Address            : 0x26918C - 0x269198
; =========================================================

26918C:  PUSH            {R7,LR}
26918E:  MOV             R7, SP
269190:  BLX             j__Z10NvUtilInitv; NvUtilInit(void)
269194:  MOVS            R0, #0
269196:  POP             {R7,PC}
