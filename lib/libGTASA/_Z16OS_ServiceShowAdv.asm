; =========================================================
; Game Engine Function: _Z16OS_ServiceShowAdv
; Address            : 0x26C5C8 - 0x26C5F0
; =========================================================

26C5C8:  LDR             R0, =(byte_6D70E8 - 0x26C5CE)
26C5CA:  ADD             R0, PC; byte_6D70E8
26C5CC:  LDRB            R0, [R0]
26C5CE:  CMP             R0, #1
26C5D0:  IT NE
26C5D2:  BXNE            LR
26C5D4:  PUSH            {R7,LR}
26C5D6:  MOV             R7, SP
26C5D8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C5DC:  LDR             R1, =(dword_6D70F0 - 0x26C5E4)
26C5DE:  LDR             R3, =(dword_6D70EC - 0x26C5E6)
26C5E0:  ADD             R1, PC; dword_6D70F0
26C5E2:  ADD             R3, PC; dword_6D70EC
26C5E4:  LDR             R2, [R1]
26C5E6:  LDR             R1, [R3]
26C5E8:  POP.W           {R7,LR}
26C5EC:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
