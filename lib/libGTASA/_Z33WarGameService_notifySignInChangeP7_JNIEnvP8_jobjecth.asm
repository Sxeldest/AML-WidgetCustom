; =========================================================
; Game Engine Function: _Z33WarGameService_notifySignInChangeP7_JNIEnvP8_jobjecth
; Address            : 0x27BAF0 - 0x27BB20
; =========================================================

27BAF0:  PUSH            {R4,R5,R7,LR}
27BAF2:  ADD             R7, SP, #8
27BAF4:  LDR             R0, =(gameServiceMutex_ptr - 0x27BAFC)
27BAF6:  MOV             R4, R2
27BAF8:  ADD             R0, PC; gameServiceMutex_ptr
27BAFA:  LDR             R5, [R0]; gameServiceMutex
27BAFC:  LDR             R0, [R5]; mutex
27BAFE:  BLX             pthread_mutex_lock
27BB02:  LDR             R0, =(byte_6D712C - 0x27BB10)
27BB04:  CMP             R4, #1
27BB06:  LDR             R1, =(byte_6D712D - 0x27BB14)
27BB08:  IT NE
27BB0A:  MOVNE           R4, #0
27BB0C:  ADD             R0, PC; byte_6D712C
27BB0E:  MOVS            R2, #1
27BB10:  ADD             R1, PC; byte_6D712D
27BB12:  STRB            R4, [R0]
27BB14:  LDR             R0, [R5]; mutex
27BB16:  STRB            R2, [R1]
27BB18:  POP.W           {R4,R5,R7,LR}
27BB1C:  B.W             j_pthread_mutex_unlock
