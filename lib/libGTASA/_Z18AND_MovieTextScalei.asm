; =========================================================
; Game Engine Function: _Z18AND_MovieTextScalei
; Address            : 0x26B088 - 0x26B0B2
; =========================================================

26B088:  PUSH            {R4-R7,LR}
26B08A:  ADD             R7, SP, #0xC
26B08C:  PUSH.W          {R11}
26B090:  MOV             R4, R0
26B092:  LDR             R0, =(s_MovieTextScale_ptr - 0x26B09A)
26B094:  LDR             R5, =(dword_6D81DC - 0x26B09C)
26B096:  ADD             R0, PC; s_MovieTextScale_ptr
26B098:  ADD             R5, PC; dword_6D81DC
26B09A:  LDR             R6, [R0]; s_MovieTextScale
26B09C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26B0A0:  LDR             R1, [R5]
26B0A2:  MOV             R3, R4
26B0A4:  LDR             R2, [R6]
26B0A6:  POP.W           {R11}
26B0AA:  POP.W           {R4-R7,LR}
26B0AE:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
