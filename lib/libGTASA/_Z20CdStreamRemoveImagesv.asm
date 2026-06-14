; =========================================================
; Game Engine Function: _Z20CdStreamRemoveImagesv
; Address            : 0x2C9C44 - 0x2C9CB6
; =========================================================

2C9C44:  PUSH            {R4-R7,LR}
2C9C46:  ADD             R7, SP, #0xC
2C9C48:  PUSH.W          {R8-R11}
2C9C4C:  SUB             SP, SP, #4
2C9C4E:  LDR             R0, =(dword_70BE3C - 0x2C9C54)
2C9C50:  ADD             R0, PC; dword_70BE3C
2C9C52:  LDR             R0, [R0]
2C9C54:  CMP             R0, #1
2C9C56:  BLT             loc_2C9CAE
2C9C58:  LDR.W           R10, =(dword_70BE40 - 0x2C9C6C)
2C9C5C:  MOV.W           R9, #0
2C9C60:  LDR.W           R11, =(dword_70BE3C - 0x2C9C70)
2C9C64:  MOV.W           R8, #1
2C9C68:  ADD             R10, PC; dword_70BE40
2C9C6A:  MOVS            R4, #0
2C9C6C:  ADD             R11, PC; dword_70BE3C
2C9C6E:  MOVS            R5, #0
2C9C70:  LDR.W           R0, [R10]
2C9C74:  ADDS            R6, R0, R4
2C9C76:  LDR             R0, [R6,#0x18]; mutex
2C9C78:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
2C9C7C:  LDR             R0, [R6,#4]
2C9C7E:  CBZ             R0, loc_2C9C96
2C9C80:  STRB.W          R8, [R6,#0xD]
2C9C84:  LDR             R0, [R6,#0x18]; mutex
2C9C86:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
2C9C8A:  LDR             R0, [R6,#0x14]; sem
2C9C8C:  BLX             j__Z16OS_SemaphoreWaitPv; OS_SemaphoreWait(void *)
2C9C90:  STRB.W          R9, [R6,#0xE]
2C9C94:  B               loc_2C9CA0
2C9C96:  STRB.W          R9, [R6,#0xE]
2C9C9A:  LDR             R0, [R6,#0x18]; mutex
2C9C9C:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
2C9CA0:  LDR             R0, [R6,#0x10]
2C9CA2:  ADDS            R4, #0x20 ; ' '
2C9CA4:  LDR.W           R0, [R11]
2C9CA8:  ADDS            R5, #1
2C9CAA:  CMP             R5, R0
2C9CAC:  BLT             loc_2C9C70
2C9CAE:  ADD             SP, SP, #4
2C9CB0:  POP.W           {R8-R11}
2C9CB4:  POP             {R4-R7,PC}
