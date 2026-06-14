; =========================================================
; Game Engine Function: _Z22AND_OnSnapshotSelectedPhi
; Address            : 0x26EDA8 - 0x26EE02
; =========================================================

26EDA8:  PUSH            {R4,R5,R7,LR}
26EDAA:  ADD             R7, SP, #8
26EDAC:  MOV             R5, R0
26EDAE:  LDR             R0, =(gameServiceMutex_ptr - 0x26EDB6)
26EDB0:  MOV             R4, R1
26EDB2:  ADD             R0, PC; gameServiceMutex_ptr
26EDB4:  LDR             R0, [R0]; gameServiceMutex
26EDB6:  LDR             R0, [R0]; mutex
26EDB8:  BLX             pthread_mutex_lock
26EDBC:  LDR             R0, =(byte_6D7145 - 0x26EDC2)
26EDBE:  ADD             R0, PC; byte_6D7145
26EDC0:  LDRB            R0, [R0]
26EDC2:  CMP             R0, #1
26EDC4:  BNE             loc_26EDD4
26EDC6:  LDR             R0, =(byte_6D7148 - 0x26EDCC)
26EDC8:  ADD             R0, PC; byte_6D7148
26EDCA:  LDR             R0, [R0,#(dword_6D714C - 0x6D7148)]; void *
26EDCC:  CMP             R0, #0
26EDCE:  IT NE
26EDD0:  BLXNE           _ZdaPv; operator delete[](void *)
26EDD4:  LDR             R1, =(gameServiceMutex_ptr - 0x26EDE0)
26EDD6:  CMP             R5, #0
26EDD8:  LDR             R0, =(byte_6D7148 - 0x26EDE4)
26EDDA:  MOV             R3, R5
26EDDC:  ADD             R1, PC; gameServiceMutex_ptr
26EDDE:  LDR             R2, =(byte_6D7145 - 0x26EDE8)
26EDE0:  ADD             R0, PC; byte_6D7148
26EDE2:  LDR             R1, [R1]; gameServiceMutex
26EDE4:  ADD             R2, PC; byte_6D7145
26EDE6:  STR             R5, [R0,#(dword_6D714C - 0x6D7148)]
26EDE8:  IT NE
26EDEA:  MOVNE           R3, #1
26EDEC:  STRB            R3, [R0]
26EDEE:  IT EQ
26EDF0:  MOVEQ           R4, R5
26EDF2:  STR             R4, [R0,#(dword_6D7150 - 0x6D7148)]
26EDF4:  LDR             R0, [R1]; mutex
26EDF6:  MOVS            R1, #1
26EDF8:  STRB            R1, [R2]
26EDFA:  POP.W           {R4,R5,R7,LR}
26EDFE:  B.W             j_pthread_mutex_unlock
