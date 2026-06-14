; =========================================================
; Game Engine Function: _ZN10TouchSense10playEffectEiiii
; Address            : 0x2709D0 - 0x270A26
; =========================================================

2709D0:  PUSH            {R4-R7,LR}
2709D2:  ADD             R7, SP, #0xC
2709D4:  PUSH.W          {R8}
2709D8:  MOV             R5, R0
2709DA:  LDR             R0, =(UseTouchSense_ptr - 0x2709E4)
2709DC:  MOV             R4, R3
2709DE:  MOV             R6, R2
2709E0:  ADD             R0, PC; UseTouchSense_ptr
2709E2:  LDR             R0, [R0]; UseTouchSense
2709E4:  LDRB            R0, [R0]
2709E6:  CBZ             R0, loc_270A1E
2709E8:  LDR             R0, [R5]
2709EA:  CMP             R0, R1
2709EC:  BGE             loc_2709F6
2709EE:  MOVS            R0, #0
2709F0:  POP.W           {R8}
2709F4:  POP             {R4-R7,PC}
2709F6:  LDR             R0, =(g_accessMutex_ptr - 0x2709FC)
2709F8:  ADD             R0, PC; g_accessMutex_ptr
2709FA:  LDR.W           R8, [R0]; g_accessMutex
2709FE:  MOV             R0, R8; mutex
270A00:  BLX             pthread_mutex_lock
270A04:  LDR             R0, =(g_cond_ptr - 0x270A12)
270A06:  MOV.W           R1, #0xFFFFFFFF
270A0A:  STRD.W          R6, R1, [R5,#0x10]
270A0E:  ADD             R0, PC; g_cond_ptr
270A10:  STR             R4, [R5,#0x18]
270A12:  LDR             R0, [R0]; g_cond ; cond
270A14:  BLX             pthread_cond_signal
270A18:  MOV             R0, R8; mutex
270A1A:  BLX             pthread_mutex_unlock
270A1E:  MOVS            R0, #1
270A20:  POP.W           {R8}
270A24:  POP             {R4-R7,PC}
