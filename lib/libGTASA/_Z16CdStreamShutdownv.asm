; =========================================================
; Game Engine Function: _Z16CdStreamShutdownv
; Address            : 0x2C9A28 - 0x2C9AAC
; =========================================================

2C9A28:  PUSH            {R4-R7,LR}
2C9A2A:  ADD             R7, SP, #0xC
2C9A2C:  PUSH.W          {R8,R9,R11}
2C9A30:  LDR             R0, =(dword_70BE44 - 0x2C9A36)
2C9A32:  ADD             R0, PC; dword_70BE44
2C9A34:  LDR             R0, [R0]; p
2C9A36:  BLX             free
2C9A3A:  LDR             R0, =(cdSemaphore_ptr - 0x2C9A40)
2C9A3C:  ADD             R0, PC; cdSemaphore_ptr
2C9A3E:  LDR             R0, [R0]; cdSemaphore
2C9A40:  LDR             R0, [R0]; sem
2C9A42:  BLX             j__Z18OS_SemaphoreDeletePv; OS_SemaphoreDelete(void *)
2C9A46:  LDR             R0, =(dword_70BE54 - 0x2C9A4C)
2C9A48:  ADD             R0, PC; dword_70BE54
2C9A4A:  LDR             R0, [R0]; void *
2C9A4C:  BLX             j__Z14OS_ThreadClosePv; OS_ThreadClose(void *)
2C9A50:  BLX             j__Z15StopTexdbThreadv; StopTexdbThread(void)
2C9A54:  LDR             R0, =(dword_70BE3C - 0x2C9A5A)
2C9A56:  ADD             R0, PC; dword_70BE3C
2C9A58:  LDR             R0, [R0]
2C9A5A:  CMP             R0, #0
2C9A5C:  BLE             loc_2C9A9A
2C9A5E:  LDR             R0, =(dword_70BE40 - 0x2C9A6C)
2C9A60:  MOV.W           R8, #0
2C9A64:  LDR             R6, =(dword_70BE40 - 0x2C9A72)
2C9A66:  MOVS            R5, #0x14
2C9A68:  ADD             R0, PC; dword_70BE40
2C9A6A:  LDR.W           R9, =(dword_70BE3C - 0x2C9A78)
2C9A6E:  ADD             R6, PC; dword_70BE40
2C9A70:  MOVS            R4, #0
2C9A72:  LDR             R0, [R0]
2C9A74:  ADD             R9, PC; dword_70BE3C
2C9A76:  LDR             R0, [R0,R5]; sem
2C9A78:  BLX             j__Z18OS_SemaphoreDeletePv; OS_SemaphoreDelete(void *)
2C9A7C:  LDR             R0, [R6]
2C9A7E:  ADD             R0, R5
2C9A80:  LDR             R0, [R0,#4]; void *
2C9A82:  BLX             j__Z14OS_MutexDeletePv; OS_MutexDelete(void *)
2C9A86:  LDR             R0, [R6]
2C9A88:  ADDS            R4, #1
2C9A8A:  STR.W           R8, [R0,R5]
2C9A8E:  ADDS            R5, #0x20 ; ' '
2C9A90:  LDR.W           R1, [R9]
2C9A94:  CMP             R4, R1
2C9A96:  BLT             loc_2C9A76
2C9A98:  B               loc_2C9AA0
2C9A9A:  LDR             R0, =(dword_70BE40 - 0x2C9AA0)
2C9A9C:  ADD             R0, PC; dword_70BE40
2C9A9E:  LDR             R0, [R0]; p
2C9AA0:  POP.W           {R8,R9,R11}
2C9AA4:  POP.W           {R4-R7,LR}
2C9AA8:  B.W             j_free
