; =========================================================
; Game Engine Function: _Z28WarGamepad_GetGamepadButtonsi
; Address            : 0x267BBC - 0x267BE6
; =========================================================

267BBC:  PUSH            {R4-R7,LR}
267BBE:  ADD             R7, SP, #0xC
267BC0:  PUSH.W          {R11}
267BC4:  MOV             R4, R0
267BC6:  LDR             R0, =(s_getGamepadButtons_ptr - 0x267BCE)
267BC8:  LDR             R5, =(dword_6D81DC - 0x267BD0)
267BCA:  ADD             R0, PC; s_getGamepadButtons_ptr
267BCC:  ADD             R5, PC; dword_6D81DC
267BCE:  LDR             R6, [R0]; s_getGamepadButtons
267BD0:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267BD4:  LDR             R1, [R5]
267BD6:  MOV             R3, R4
267BD8:  LDR             R2, [R6]
267BDA:  POP.W           {R11}
267BDE:  POP.W           {R4-R7,LR}
267BE2:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
