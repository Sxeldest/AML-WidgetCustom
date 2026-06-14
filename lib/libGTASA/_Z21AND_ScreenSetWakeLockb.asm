; =========================================================
; Game Engine Function: _Z21AND_ScreenSetWakeLockb
; Address            : 0x26A7F8 - 0x26A822
; =========================================================

26A7F8:  PUSH            {R4-R7,LR}
26A7FA:  ADD             R7, SP, #0xC
26A7FC:  PUSH.W          {R11}
26A800:  MOV             R4, R0
26A802:  LDR             R0, =(s_ScreenSetWakeLock_ptr - 0x26A80A)
26A804:  LDR             R5, =(dword_6D81DC - 0x26A80C)
26A806:  ADD             R0, PC; s_ScreenSetWakeLock_ptr
26A808:  ADD             R5, PC; dword_6D81DC
26A80A:  LDR             R6, [R0]; s_ScreenSetWakeLock
26A80C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A810:  LDR             R1, [R5]
26A812:  MOV             R3, R4
26A814:  LDR             R2, [R6]
26A816:  POP.W           {R11}
26A81A:  POP.W           {R4-R7,LR}
26A81E:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
