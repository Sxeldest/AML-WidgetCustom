; =========================================================
; Game Engine Function: _Z23AND_GetSpecialBuildTypev
; Address            : 0x27ADA0 - 0x27ADBE
; =========================================================

27ADA0:  PUSH            {R4,R5,R7,LR}
27ADA2:  ADD             R7, SP, #8
27ADA4:  LDR             R0, =(s_GetSpecialBuildType_ptr - 0x27ADAC)
27ADA6:  LDR             R4, =(dword_6D81DC - 0x27ADAE)
27ADA8:  ADD             R0, PC; s_GetSpecialBuildType_ptr
27ADAA:  ADD             R4, PC; dword_6D81DC
27ADAC:  LDR             R5, [R0]; s_GetSpecialBuildType
27ADAE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27ADB2:  LDR             R1, [R4]
27ADB4:  LDR             R2, [R5]
27ADB6:  POP.W           {R4,R5,R7,LR}
27ADBA:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
