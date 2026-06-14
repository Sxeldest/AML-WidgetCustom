; =========================================================
; Game Engine Function: _Z18OS_SemaphoreCreatev
; Address            : 0x26C1EC - 0x26C20A
; =========================================================

26C1EC:  PUSH            {R4,R6,R7,LR}
26C1EE:  ADD             R7, SP, #8
26C1F0:  MOVS            R0, #4; byte_count
26C1F2:  BLX             malloc
26C1F6:  MOV             R4, R0
26C1F8:  MOVS            R0, #0
26C1FA:  STR             R0, [R4]
26C1FC:  MOV             R0, R4; sem
26C1FE:  MOVS            R1, #0; pshared
26C200:  MOVS            R2, #0; value
26C202:  BLX             sem_init
26C206:  MOV             R0, R4
26C208:  POP             {R4,R6,R7,PC}
