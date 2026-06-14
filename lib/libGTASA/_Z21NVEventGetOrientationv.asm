; =========================================================
; Game Engine Function: _Z21NVEventGetOrientationv
; Address            : 0x27116C - 0x271188
; =========================================================

27116C:  PUSH            {R7,LR}
27116E:  MOV             R7, SP
271170:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
271174:  LDR             R1, =(dword_6D81E0 - 0x27117C)
271176:  LDR             R3, =(dword_6D81DC - 0x27117E)
271178:  ADD             R1, PC; dword_6D81E0
27117A:  ADD             R3, PC; dword_6D81DC
27117C:  LDR             R2, [R1]
27117E:  LDR             R1, [R3]
271180:  POP.W           {R7,LR}
271184:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
