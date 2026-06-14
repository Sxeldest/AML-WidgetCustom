; =========================================================
; Game Engine Function: _Z15OS_SemaphoreGetPv
; Address            : 0x26C238 - 0x26C24E
; =========================================================

26C238:  PUSH            {R7,LR}
26C23A:  MOV             R7, SP
26C23C:  SUB             SP, SP, #8
26C23E:  MOVS            R1, #0
26C240:  STR             R1, [SP,#0x10+sval]
26C242:  ADD             R1, SP, #0x10+sval; sval
26C244:  BLX             sem_getvalue
26C248:  LDR             R0, [SP,#0x10+sval]
26C24A:  ADD             SP, SP, #8
26C24C:  POP             {R7,PC}
