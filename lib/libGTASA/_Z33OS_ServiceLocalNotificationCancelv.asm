; =========================================================
; Game Engine Function: _Z33OS_ServiceLocalNotificationCancelv
; Address            : 0x26C834 - 0x26C850
; =========================================================

26C834:  PUSH            {R7,LR}
26C836:  MOV             R7, SP
26C838:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C83C:  LDR             R1, =(dword_6D7100 - 0x26C844)
26C83E:  LDR             R3, =(dword_6D70F8 - 0x26C846)
26C840:  ADD             R1, PC; dword_6D7100
26C842:  ADD             R3, PC; dword_6D70F8
26C844:  LDR             R2, [R1]
26C846:  LDR             R1, [R3]
26C848:  POP.W           {R7,LR}
26C84C:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
