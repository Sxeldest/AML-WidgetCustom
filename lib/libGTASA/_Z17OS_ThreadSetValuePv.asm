; =========================================================
; Game Engine Function: _Z17OS_ThreadSetValuePv
; Address            : 0x26C150 - 0x26C16A
; =========================================================

26C150:  PUSH            {R4,R6,R7,LR}
26C152:  ADD             R7, SP, #8
26C154:  MOV             R4, R0
26C156:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26C15C)
26C158:  ADD             R0, PC; ANDThreadStorageKey_ptr
26C15A:  LDR             R0, [R0]; ANDThreadStorageKey
26C15C:  LDR             R0, [R0]; key
26C15E:  BLX             pthread_getspecific
26C162:  CMP             R0, #0
26C164:  IT NE
26C166:  STRNE           R4, [R0,#8]
26C168:  POP             {R4,R6,R7,PC}
