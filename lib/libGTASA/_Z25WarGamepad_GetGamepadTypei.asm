; =========================================================
; Game Engine Function: _Z25WarGamepad_GetGamepadTypei
; Address            : 0x267B88 - 0x267BB2
; =========================================================

267B88:  PUSH            {R4-R7,LR}
267B8A:  ADD             R7, SP, #0xC
267B8C:  PUSH.W          {R11}
267B90:  MOV             R4, R0
267B92:  LDR             R0, =(s_getGamepadType_ptr - 0x267B9A)
267B94:  LDR             R5, =(dword_6D81DC - 0x267B9C)
267B96:  ADD             R0, PC; s_getGamepadType_ptr
267B98:  ADD             R5, PC; dword_6D81DC
267B9A:  LDR             R6, [R0]; s_getGamepadType
267B9C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267BA0:  LDR             R1, [R5]
267BA2:  MOV             R3, R4
267BA4:  LDR             R2, [R6]
267BA6:  POP.W           {R11}
267BAA:  POP.W           {R4-R7,LR}
267BAE:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
