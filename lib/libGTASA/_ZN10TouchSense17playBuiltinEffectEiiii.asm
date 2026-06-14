; =========================================================
; Game Engine Function: _ZN10TouchSense17playBuiltinEffectEiiii
; Address            : 0x270BD8 - 0x270C34
; =========================================================

270BD8:  PUSH            {R4-R7,LR}
270BDA:  ADD             R7, SP, #0xC
270BDC:  PUSH.W          {R8}
270BE0:  MOV             R6, R0
270BE2:  LDR             R0, =(UseTouchSense_ptr - 0x270BEC)
270BE4:  MOV             R4, R3
270BE6:  MOV             R5, R2
270BE8:  ADD             R0, PC; UseTouchSense_ptr
270BEA:  LDR             R0, [R0]; UseTouchSense
270BEC:  LDRB            R0, [R0]
270BEE:  CBZ             R0, loc_270C2C
270BF0:  LDR             R0, [R6]
270BF2:  CMP             R0, R1
270BF4:  BLT             loc_270BFC
270BF6:  LDR             R0, [R6,#0x14]
270BF8:  ADDS            R0, #1
270BFA:  BEQ             loc_270C04
270BFC:  MOVS            R0, #0
270BFE:  POP.W           {R8}
270C02:  POP             {R4-R7,PC}
270C04:  LDR             R0, =(g_accessMutex_ptr - 0x270C0A)
270C06:  ADD             R0, PC; g_accessMutex_ptr
270C08:  LDR.W           R8, [R0]; g_accessMutex
270C0C:  MOV             R0, R8; mutex
270C0E:  BLX             pthread_mutex_lock
270C12:  LDR             R0, =(g_cond_ptr - 0x270C20)
270C14:  MOV.W           R1, #0xFFFFFFFF
270C18:  STRD.W          R1, R5, [R6,#0x10]
270C1C:  ADD             R0, PC; g_cond_ptr
270C1E:  STR             R4, [R6,#0x18]
270C20:  LDR             R0, [R0]; g_cond ; cond
270C22:  BLX             pthread_cond_signal
270C26:  MOV             R0, R8; mutex
270C28:  BLX             pthread_mutex_unlock
270C2C:  MOVS            R0, #1
270C2E:  POP.W           {R8}
270C32:  POP             {R4-R7,PC}
