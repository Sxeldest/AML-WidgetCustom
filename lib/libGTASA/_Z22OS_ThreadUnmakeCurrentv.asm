; =========================================================
; Game Engine Function: _Z22OS_ThreadUnmakeCurrentv
; Address            : 0x268E28 - 0x268E6E
; =========================================================

268E28:  PUSH            {R7,LR}
268E2A:  MOV             R7, SP
268E2C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268E30:  CBZ             R0, loc_268E50
268E32:  LDR             R1, =(dword_6D81DC - 0x268E38)
268E34:  ADD             R1, PC; dword_6D81DC
268E36:  LDR             R1, [R1]
268E38:  CBZ             R1, loc_268E50
268E3A:  LDR             R2, =(dword_6D9A30 - 0x268E40)
268E3C:  ADD             R2, PC; dword_6D9A30
268E3E:  LDR             R2, [R2]
268E40:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268E44:  CBNZ            R0, loc_268E5E
268E46:  LDR             R1, =(aNvevent - 0x268E4E); "NVEvent"
268E48:  LDR             R2, =(aErrorUnmakecur - 0x268E50); "Error: UnMakeCurrent failed"
268E4A:  ADD             R1, PC; "NVEvent"
268E4C:  ADD             R2, PC; "Error: UnMakeCurrent failed"
268E4E:  B               loc_268E58
268E50:  LDR             R1, =(aNvevent - 0x268E58); "NVEvent"
268E52:  LDR             R2, =(aErrorNoValidJn_0 - 0x268E5A); "Error: No valid JNI env in UnMakeCurren"...
268E54:  ADD             R1, PC; "NVEvent"
268E56:  ADD             R2, PC; "Error: No valid JNI env in UnMakeCurren"...
268E58:  MOVS            R0, #3; prio
268E5A:  BLX             __android_log_print
268E5E:  LDR             R0, =(AndroidEGLContext_ptr - 0x268E64)
268E60:  ADD             R0, PC; AndroidEGLContext_ptr
268E62:  LDR             R0, [R0]; AndroidEGLContext
268E64:  LDR             R0, [R0]; mutex
268E66:  POP.W           {R7,LR}
268E6A:  B.W             j_pthread_mutex_unlock
