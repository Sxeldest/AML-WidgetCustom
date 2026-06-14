; =========================================================
; Game Engine Function: _Z19OS_SemaphoreTryWaitPv
; Address            : 0x26C216 - 0x26C238
; =========================================================

26C216:  PUSH            {R7,LR}
26C218:  MOV             R7, SP
26C21A:  BLX             sem_trywait
26C21E:  ADDS            R0, #1
26C220:  BEQ             loc_26C226
26C222:  MOVS            R0, #1
26C224:  POP             {R7,PC}
26C226:  BLX             __errno
26C22A:  LDR             R0, [R0]
26C22C:  CMP             R0, #0xB
26C22E:  ITT EQ
26C230:  MOVEQ           R0, #0
26C232:  POPEQ           {R7,PC}
26C234:  MOVS            R0, #1
26C236:  POP             {R7,PC}
