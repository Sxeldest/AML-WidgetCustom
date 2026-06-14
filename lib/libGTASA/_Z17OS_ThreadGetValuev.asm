; =========================================================
; Game Engine Function: _Z17OS_ThreadGetValuev
; Address            : 0x26C170 - 0x26C18A
; =========================================================

26C170:  PUSH            {R7,LR}
26C172:  MOV             R7, SP
26C174:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26C17A)
26C176:  ADD             R0, PC; ANDThreadStorageKey_ptr
26C178:  LDR             R0, [R0]; ANDThreadStorageKey
26C17A:  LDR             R0, [R0]; key
26C17C:  BLX             pthread_getspecific
26C180:  CMP             R0, #0
26C182:  ITE NE
26C184:  LDRNE           R0, [R0,#8]
26C186:  MOVEQ           R0, #0
26C188:  POP             {R7,PC}
