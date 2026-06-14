; =========================================================
; Game Engine Function: sub_273D3C
; Address            : 0x273D3C - 0x273DD0
; =========================================================

273D3C:  PUSH            {R4-R7,LR}
273D3E:  ADD             R7, SP, #0xC
273D40:  PUSH.W          {R11}
273D44:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
273D48:  MOV             R4, R0
273D4A:  CBZ             R4, loc_273D54
273D4C:  LDR             R0, =(dword_6D81DC - 0x273D52)
273D4E:  ADD             R0, PC; dword_6D81DC
273D50:  LDR             R0, [R0]
273D52:  CBNZ            R0, loc_273D60
273D54:  LDR             R1, =(aNvevent - 0x273D5E); "NVEvent"
273D56:  ADR             R2, aErrorDestroyin; "Error: DestroyingRegisteredObjectInstan"...
273D58:  MOVS            R0, #3; prio
273D5A:  ADD             R1, PC; "NVEvent"
273D5C:  BLX             __android_log_print
273D60:  LDR             R0, =(g_touchSense_ptr - 0x273D66)
273D62:  ADD             R0, PC; g_touchSense_ptr
273D64:  LDR             R0, [R0]; g_touchSense
273D66:  LDR             R0, [R0]; this
273D68:  CBZ             R0, loc_273D72
273D6A:  BLX             j__ZN10TouchSenseD2Ev; TouchSense::~TouchSense()
273D6E:  BLX             _ZdlPv; operator delete(void *)
273D72:  LDR             R0, =(g_touchSense_ptr - 0x273D7C)
273D74:  MOVS            R5, #0
273D76:  LDR             R6, =(dword_6D81DC - 0x273D7E)
273D78:  ADD             R0, PC; g_touchSense_ptr
273D7A:  ADD             R6, PC; dword_6D81DC
273D7C:  LDR             R0, [R0]; g_touchSense
273D7E:  LDR             R1, [R6]
273D80:  STR             R5, [R0]
273D82:  LDR             R0, [R4]
273D84:  LDR             R2, [R0,#0x58]
273D86:  MOV             R0, R4
273D88:  BLX             R2
273D8A:  LDR             R1, =(aNvevent - 0x273D96); "NVEvent"
273D8C:  ADR             R2, aReleasedGlobal; "Released global thiz!"
273D8E:  MOVS            R0, #3; prio
273D90:  STR             R5, [R6]
273D92:  ADD             R1, PC; "NVEvent"
273D94:  BLX             __android_log_print
273D98:  LDR             R6, =(dword_6D8200 - 0x273D9E)
273D9A:  ADD             R6, PC; dword_6D8200
273D9C:  ADD.W           R0, R6, #8; mutex
273DA0:  BLX             pthread_mutex_destroy
273DA4:  ADD.W           R4, R6, #0xC
273DA8:  STRB            R5, [R6,#(byte_6D8210 - 0x6D8200)]
273DAA:  MOV             R0, R4; cond
273DAC:  BLX             pthread_cond_broadcast
273DB0:  STRB            R5, [R6,#(byte_6D8218 - 0x6D8200)]
273DB2:  ADD.W           R5, R6, #0x14
273DB6:  MOV             R0, R5; cond
273DB8:  BLX             pthread_cond_broadcast
273DBC:  MOV             R0, R4; cond
273DBE:  BLX             pthread_cond_destroy
273DC2:  MOV             R0, R5; cond
273DC4:  POP.W           {R11}
273DC8:  POP.W           {R4-R7,LR}
273DCC:  B.W             sub_18F118
