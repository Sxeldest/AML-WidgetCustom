; =========================================================
; Game Engine Function: _Z17OS_MovieTextScalei
; Address            : 0x26B054 - 0x26B07E
; =========================================================

26B054:  PUSH            {R4-R7,LR}
26B056:  ADD             R7, SP, #0xC
26B058:  PUSH.W          {R11}
26B05C:  MOV             R4, R0
26B05E:  LDR             R0, =(s_MovieTextScale_ptr - 0x26B066)
26B060:  LDR             R5, =(dword_6D81DC - 0x26B068)
26B062:  ADD             R0, PC; s_MovieTextScale_ptr
26B064:  ADD             R5, PC; dword_6D81DC
26B066:  LDR             R6, [R0]; s_MovieTextScale
26B068:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26B06C:  LDR             R1, [R5]
26B06E:  MOV             R3, R4
26B070:  LDR             R2, [R6]
26B072:  POP.W           {R11}
26B076:  POP.W           {R4-R7,LR}
26B07A:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
