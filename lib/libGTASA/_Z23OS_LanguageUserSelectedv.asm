; =========================================================
; Game Engine Function: _Z23OS_LanguageUserSelectedv
; Address            : 0x268CA0 - 0x268CD0
; =========================================================

268CA0:  PUSH            {R4,R5,R7,LR}
268CA2:  ADD             R7, SP, #8
268CA4:  LDR             R0, =(s_GetDeviceLocale_ptr - 0x268CAC)
268CA6:  LDR             R4, =(dword_6D81DC - 0x268CAE)
268CA8:  ADD             R0, PC; s_GetDeviceLocale_ptr
268CAA:  ADD             R4, PC; dword_6D81DC
268CAC:  LDR             R5, [R0]; s_GetDeviceLocale
268CAE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268CB2:  LDR             R1, [R4]
268CB4:  LDR             R2, [R5]
268CB6:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
268CBA:  CMP             R0, #9
268CBC:  ITTE LS
268CBE:  ADRLS           R1, dword_268CD8
268CC0:  LDRLS.W         R0, [R1,R0,LSL#2]
268CC4:  MOVHI           R0, #0
268CC6:  LDR             R1, =(userSelectedLanguage_ptr - 0x268CCC)
268CC8:  ADD             R1, PC; userSelectedLanguage_ptr
268CCA:  LDR             R1, [R1]; userSelectedLanguage
268CCC:  STR             R0, [R1]
268CCE:  POP             {R4,R5,R7,PC}
