; =========================================================
; Game Engine Function: _Z17AND_GamepadUpdatev
; Address            : 0x26797C - 0x267B50
; =========================================================

26797C:  PUSH            {R4-R7,LR}
26797E:  ADD             R7, SP, #0xC
267980:  PUSH.W          {R8-R11}
267984:  SUB             SP, SP, #0x34
267986:  LDR             R0, =(s_getGamepadType_ptr - 0x267994)
267988:  ADD             R4, SP, #0x50+var_28
26798A:  MOV.W           R11, #1
26798E:  MOVS            R5, #0
267990:  ADD             R0, PC; s_getGamepadType_ptr
267992:  LDR             R0, [R0]; s_getGamepadType
267994:  STR             R0, [SP,#0x50+var_2C]
267996:  LDR             R0, =(lastGamepadType_ptr - 0x26799C)
267998:  ADD             R0, PC; lastGamepadType_ptr
26799A:  LDR             R0, [R0]; lastGamepadType
26799C:  STR             R0, [SP,#0x50+var_30]
26799E:  LDR             R0, =(s_getGamepadButtons_ptr - 0x2679A4)
2679A0:  ADD             R0, PC; s_getGamepadButtons_ptr
2679A2:  LDR             R0, [R0]; s_getGamepadButtons
2679A4:  STR             R0, [SP,#0x50+var_34]
2679A6:  LDR             R0, =(lastGamepadMask_ptr - 0x2679AC)
2679A8:  ADD             R0, PC; lastGamepadMask_ptr
2679AA:  LDR             R0, [R0]; lastGamepadMask
2679AC:  STR             R0, [SP,#0x50+var_38]
2679AE:  LDR             R0, =(s_getGamepadAxis_ptr - 0x2679B4)
2679B0:  ADD             R0, PC; s_getGamepadAxis_ptr
2679B2:  LDR.W           R8, [R0]; s_getGamepadAxis
2679B6:  LDR             R0, =(lastGamepadAxis_ptr - 0x2679BC)
2679B8:  ADD             R0, PC; lastGamepadAxis_ptr
2679BA:  LDR             R0, [R0]; lastGamepadAxis
2679BC:  STR             R0, [SP,#0x50+var_3C]
2679BE:  LDR             R0, =(lastGamepadType_ptr - 0x2679C4)
2679C0:  ADD             R0, PC; lastGamepadType_ptr
2679C2:  LDR             R0, [R0]; lastGamepadType
2679C4:  STR             R0, [SP,#0x50+var_48]
2679C6:  LDR             R0, =(lastGamepadMask_ptr - 0x2679CC)
2679C8:  ADD             R0, PC; lastGamepadMask_ptr
2679CA:  LDR             R0, [R0]; lastGamepadMask
2679CC:  STR             R0, [SP,#0x50+var_4C]
2679CE:  LDR             R0, =(s_getGamepadType_ptr - 0x2679D4)
2679D0:  ADD             R0, PC; s_getGamepadType_ptr
2679D2:  LDR             R0, [R0]; s_getGamepadType
2679D4:  STR             R0, [SP,#0x50+var_40]
2679D6:  LDR             R0, =(lastGamepadType_ptr - 0x2679DC)
2679D8:  ADD             R0, PC; lastGamepadType_ptr
2679DA:  LDR             R0, [R0]; lastGamepadType
2679DC:  STR             R0, [SP,#0x50+var_44]
2679DE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2679E2:  LDR             R1, =(dword_6D81DC - 0x2679EC)
2679E4:  MOV             R3, R5
2679E6:  LDR             R2, [SP,#0x50+var_2C]
2679E8:  ADD             R1, PC; dword_6D81DC
2679EA:  LDR             R1, [R1]
2679EC:  LDR             R2, [R2]
2679EE:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
2679F2:  MOV             R6, R0
2679F4:  LDR             R0, [SP,#0x50+var_30]
2679F6:  LDR.W           R0, [R0,R5,LSL#2]
2679FA:  CMP             R6, R0
2679FC:  BEQ             loc_267A36
2679FE:  MOVS            R1, #0
267A00:  STR             R1, [SP,#0x50+var_28]
267A02:  ADDS            R1, R6, #1
267A04:  MOV.W           R1, #0
267A08:  IT NE
267A0A:  MOVNE           R1, #1
267A0C:  STR             R1, [SP,#0x50+var_20]
267A0E:  IT NE
267A10:  MOVNE           R0, R6
267A12:  STR             R0, [SP,#0x50+var_24]
267A14:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267A18:  LDR             R1, =(dword_6D81DC - 0x267A22)
267A1A:  MOV             R3, R5
267A1C:  LDR             R2, [SP,#0x50+var_40]
267A1E:  ADD             R1, PC; dword_6D81DC
267A20:  LDR             R1, [R1]
267A22:  LDR             R2, [R2]
267A24:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
267A28:  LDR             R1, [SP,#0x50+var_44]
267A2A:  STR.W           R0, [R1,R5,LSL#2]
267A2E:  MOVS            R0, #5
267A30:  MOV             R1, R4
267A32:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
267A36:  ADDS            R0, R6, #1
267A38:  BEQ.W           loc_267B48
267A3C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267A40:  LDR             R1, =(dword_6D81DC - 0x267A4A)
267A42:  MOV             R3, R5
267A44:  LDR             R2, [SP,#0x50+var_34]
267A46:  ADD             R1, PC; dword_6D81DC
267A48:  LDR             R1, [R1]
267A4A:  LDR             R2, [R2]
267A4C:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
267A50:  MOV             R6, R0
267A52:  LDR             R0, [SP,#0x50+var_38]
267A54:  LDR.W           R0, [R0,R5,LSL#2]
267A58:  CMP             R6, R0
267A5A:  BEQ             loc_267A9A
267A5C:  LDR             R1, [SP,#0x50+var_48]
267A5E:  EOR.W           R10, R0, R6
267A62:  MOV.W           R9, #0
267A66:  STR             R5, [SP,#0x50+var_28]
267A68:  LDR.W           R1, [R1,R5,LSL#2]
267A6C:  STR             R1, [SP,#0x50+var_24]
267A6E:  LSL.W           R0, R11, R9
267A72:  TST.W           R0, R10
267A76:  BEQ             loc_267A8A
267A78:  TST             R0, R6
267A7A:  STR.W           R9, [SP,#0x50+var_20]
267A7E:  ITE EQ
267A80:  MOVEQ           R0, #7
267A82:  MOVNE           R0, #6
267A84:  MOV             R1, R4
267A86:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
267A8A:  ADD.W           R9, R9, #1
267A8E:  CMP.W           R9, #0x10
267A92:  BNE             loc_267A6E
267A94:  LDR             R0, [SP,#0x50+var_4C]
267A96:  STR.W           R6, [R0,R5,LSL#2]
267A9A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267A9E:  LDR.W           R9, =(dword_6D81DC - 0x267AAC)
267AA2:  MOVS            R3, #0
267AA4:  LDR.W           R2, [R8]
267AA8:  ADD             R9, PC; dword_6D81DC
267AAA:  STR             R3, [SP,#0x50+var_50]
267AAC:  MOV             R3, R5
267AAE:  LDR.W           R1, [R9]
267AB2:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267AB6:  LDR.W           R10, [SP,#0x50+var_3C]
267ABA:  ADD.W           R6, R5, R5,LSL#1
267ABE:  STR.W           R0, [R10,R6,LSL#3]
267AC2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267AC6:  LDR.W           R2, [R8]
267ACA:  MOV             R3, R5
267ACC:  LDR.W           R1, [R9]
267AD0:  STR.W           R11, [SP,#0x50+var_50]
267AD4:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267AD8:  ADD.W           R6, R10, R6,LSL#3
267ADC:  STR             R0, [R6,#4]
267ADE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267AE2:  LDR.W           R2, [R8]
267AE6:  MOVS            R3, #2
267AE8:  LDR.W           R1, [R9]
267AEC:  STR             R3, [SP,#0x50+var_50]
267AEE:  MOV             R3, R5
267AF0:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267AF4:  STR             R0, [R6,#8]
267AF6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267AFA:  LDR.W           R2, [R8]
267AFE:  MOVS            R3, #3
267B00:  LDR.W           R1, [R9]
267B04:  STR             R3, [SP,#0x50+var_50]
267B06:  MOV             R3, R5
267B08:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267B0C:  STR             R0, [R6,#0xC]
267B0E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267B12:  LDR.W           R2, [R8]
267B16:  MOVS            R3, #4
267B18:  LDR.W           R1, [R9]
267B1C:  STR             R3, [SP,#0x50+var_50]
267B1E:  MOV             R3, R5
267B20:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267B24:  STR             R0, [R6,#0x10]
267B26:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267B2A:  LDR.W           R2, [R8]
267B2E:  MOVS            R3, #5
267B30:  LDR.W           R1, [R9]
267B34:  STR             R3, [SP,#0x50+var_50]
267B36:  MOV             R3, R5
267B38:  BLX             j__ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallFloatMethod(_jobject *,_jmethodID *,...)
267B3C:  STR             R0, [R6,#0x14]
267B3E:  ADDS            R0, R5, #1
267B40:  CMP             R5, #3
267B42:  MOV             R5, R0
267B44:  BLT.W           loc_2679DE
267B48:  ADD             SP, SP, #0x34 ; '4'
267B4A:  POP.W           {R8-R11}
267B4E:  POP             {R4-R7,PC}
