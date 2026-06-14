; =========================================================
; Game Engine Function: _ZN7ZIPFile12ReadExistingEPviS0_j
; Address            : 0x26FE1C - 0x26FE52
; =========================================================

26FE1C:  PUSH            {R4-R7,LR}
26FE1E:  ADD             R7, SP, #0xC
26FE20:  PUSH.W          {R8}
26FE24:  MOV             R6, R0
26FE26:  ADD.W           R4, R2, R2,LSL#1
26FE2A:  LDR             R0, [R6,#0xC]
26FE2C:  MOV             R5, R1
26FE2E:  MOV             R8, R3
26FE30:  LDR.W           R1, [R0,R4,LSL#2]; offset
26FE34:  MOV             R0, R5; this
26FE36:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26FE3A:  LDR             R0, [R6,#0xC]
26FE3C:  MOV             R1, R8; ptr
26FE3E:  ADD.W           R0, R0, R4,LSL#2
26FE42:  LDR             R2, [R0,#4]; n
26FE44:  MOV             R0, R5; this
26FE46:  POP.W           {R8}
26FE4A:  POP.W           {R4-R7,LR}
26FE4E:  B.W             _Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
