; =========================================================
; Game Engine Function: _Z24OS_KeyboardIsSoftVisiblev
; Address            : 0x268B20 - 0x268B64
; =========================================================

268B20:  PUSH            {R4,R5,R7,LR}
268B22:  ADD             R7, SP, #8
268B24:  SUB             SP, SP, #8
268B26:  LDR             R0, =(s_IsKeyboardShown_ptr - 0x268B2E)
268B28:  LDR             R4, =(dword_6D81DC - 0x268B30)
268B2A:  ADD             R0, PC; s_IsKeyboardShown_ptr
268B2C:  ADD             R4, PC; dword_6D81DC
268B2E:  LDR             R5, [R0]; s_IsKeyboardShown
268B30:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268B34:  LDR             R1, [R4]
268B36:  LDR             R2, [R5]
268B38:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268B3C:  MOV             R4, R0
268B3E:  CBNZ            R4, loc_268B52
268B40:  LDR             R0, =(dword_6D702C - 0x268B46)
268B42:  ADD             R0, PC; dword_6D702C
268B44:  LDR             R0, [R0]
268B46:  CBZ             R0, loc_268B52
268B48:  ADD             R1, SP, #0x10+var_C
268B4A:  MOVS            R0, #0xA
268B4C:  STR             R4, [SP,#0x10+var_C]
268B4E:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
268B52:  LDR             R0, =(dword_6D702C - 0x268B5A)
268B54:  CMP             R4, #0
268B56:  ADD             R0, PC; dword_6D702C
268B58:  STR             R4, [R0]
268B5A:  IT NE
268B5C:  MOVNE           R4, #1
268B5E:  MOV             R0, R4
268B60:  ADD             SP, SP, #8
268B62:  POP             {R4,R5,R7,PC}
