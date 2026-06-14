; =========================================================
; Game Engine Function: _Z25WarGamepad_GetGamepadAxisii
; Address            : 0x268398 - 0x2683CC
; =========================================================

268398:  PUSH            {R4-R7,LR}
26839A:  ADD             R7, SP, #0xC
26839C:  PUSH.W          {R8}
2683A0:  SUB             SP, SP, #8
2683A2:  MOV             R5, R0
2683A4:  LDR             R0, =(s_getGamepadAxis_ptr - 0x2683B0)
2683A6:  LDR.W           R8, =(dword_6D81DC - 0x2683B2)
2683AA:  MOV             R4, R1
2683AC:  ADD             R0, PC; s_getGamepadAxis_ptr
2683AE:  ADD             R8, PC; dword_6D81DC
2683B0:  LDR             R6, [R0]; s_getGamepadAxis
2683B2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2683B6:  LDR.W           R1, [R8]
2683BA:  MOV             R3, R5
2683BC:  LDR             R2, [R6]
2683BE:  STR             R4, [SP,#0x18+var_18]
2683C0:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
2683C4:  ADD             SP, SP, #8
2683C6:  POP.W           {R8}
2683CA:  POP             {R4-R7,PC}
