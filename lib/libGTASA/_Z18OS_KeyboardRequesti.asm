; =========================================================
; Game Engine Function: _Z18OS_KeyboardRequesti
; Address            : 0x268A88 - 0x268B04
; =========================================================

268A88:  PUSH            {R4-R7,LR}
268A8A:  ADD             R7, SP, #0xC
268A8C:  PUSH.W          {R8}
268A90:  SUB             SP, SP, #8
268A92:  MOV             R4, R0
268A94:  LDR             R0, =(s_IsKeyboardShown_ptr - 0x268A9C)
268A96:  LDR             R5, =(dword_6D81DC - 0x268A9E)
268A98:  ADD             R0, PC; s_IsKeyboardShown_ptr
268A9A:  ADD             R5, PC; dword_6D81DC
268A9C:  LDR             R6, [R0]; s_IsKeyboardShown
268A9E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268AA2:  LDR             R1, [R5]
268AA4:  LDR             R2, [R6]
268AA6:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268AAA:  MOV             R5, R0
268AAC:  CBNZ            R5, loc_268AC0
268AAE:  LDR             R0, =(dword_6D702C - 0x268AB4)
268AB0:  ADD             R0, PC; dword_6D702C
268AB2:  LDR             R0, [R0]
268AB4:  CBZ             R0, loc_268AC0
268AB6:  ADD             R1, SP, #0x18+var_14
268AB8:  MOVS            R0, #0xA
268ABA:  STR             R5, [SP,#0x18+var_14]
268ABC:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
268AC0:  LDR             R0, =(dword_6D702C - 0x268AC8)
268AC2:  CMP             R5, #0
268AC4:  ADD             R0, PC; dword_6D702C
268AC6:  STR             R5, [R0]
268AC8:  IT NE
268ACA:  MOVNE           R5, #1
268ACC:  CMP             R5, R4
268ACE:  BEQ             loc_268AFC
268AD0:  LDR             R0, =(s_ShowKeyboard_ptr - 0x268ADA)
268AD2:  LDR.W           R8, =(dword_6D81DC - 0x268ADC)
268AD6:  ADD             R0, PC; s_ShowKeyboard_ptr
268AD8:  ADD             R8, PC; dword_6D81DC
268ADA:  LDR             R6, [R0]; s_ShowKeyboard
268ADC:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268AE0:  LDR.W           R1, [R8]
268AE4:  MOV             R3, R4
268AE6:  LDR             R2, [R6]
268AE8:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
268AEC:  LDR             R0, =(dword_6D702C - 0x268AF6)
268AEE:  MOV             R1, SP
268AF0:  STR             R5, [SP,#0x18+var_18]
268AF2:  ADD             R0, PC; dword_6D702C
268AF4:  STR             R5, [R0]
268AF6:  MOVS            R0, #0xA
268AF8:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
268AFC:  ADD             SP, SP, #8
268AFE:  POP.W           {R8}
268B02:  POP             {R4-R7,PC}
