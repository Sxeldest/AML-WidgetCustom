; =========================================================
; Game Engine Function: _Z21AND_MoviePlayInWindowPKciiiibbiif
; Address            : 0x26AD48 - 0x26ADD6
; =========================================================

26AD48:  PUSH            {R4-R7,LR}
26AD4A:  ADD             R7, SP, #0xC
26AD4C:  PUSH.W          {R8-R10}
26AD50:  SUB             SP, SP, #0x28
26AD52:  MOV             R8, R3
26AD54:  MOV             R9, R2
26AD56:  MOV             R6, R1
26AD58:  MOV             R5, R0
26AD5A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AD5E:  MOV             R4, R0
26AD60:  MOV             R1, R5
26AD62:  LDR             R0, [R4]
26AD64:  LDR.W           R2, [R0,#0x29C]
26AD68:  MOV             R0, R4
26AD6A:  BLX             R2
26AD6C:  MOV             R5, R0
26AD6E:  LDR             R0, =(s_PlayMovieInWindow_ptr - 0x26AD7A)
26AD70:  LDR.W           R10, =(dword_6D81DC - 0x26AD80)
26AD74:  MOVS            R3, #1
26AD76:  ADD             R0, PC; s_PlayMovieInWindow_ptr
26AD78:  VLDR            S0, [R7,#arg_14]
26AD7C:  ADD             R10, PC; dword_6D81DC
26AD7E:  LDR             R0, [R0]; s_PlayMovieInWindow
26AD80:  VCVT.F64.F32    D16, S0
26AD84:  LDR.W           R1, [R10]
26AD88:  LDR             R2, [R0]
26AD8A:  LDR             R0, [R7,#arg_10]
26AD8C:  STR             R3, [SP,#0x40+var_1C]
26AD8E:  LDR             R3, [R7,#arg_8]
26AD90:  STR             R3, [SP,#0x40+var_20]
26AD92:  LDR             R3, [R7,#arg_C]
26AD94:  STR             R0, [SP,#0x40+var_24]
26AD96:  LDR             R0, [R7,#arg_0]
26AD98:  STR             R3, [SP,#0x40+var_28]
26AD9A:  MOV             R3, R5
26AD9C:  VSTR            D16, [SP,#0x40+var_30]
26ADA0:  STRD.W          R6, R9, [SP,#0x40+var_40]
26ADA4:  STRD.W          R8, R0, [SP,#0x40+var_38]
26ADA8:  MOV             R0, R4
26ADAA:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26ADAE:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26ADB8)
26ADB0:  LDR.W           R1, [R10]
26ADB4:  ADD             R0, PC; s_MovieIsSkippable_ptr
26ADB6:  LDR             R3, [R7,#arg_4]
26ADB8:  LDR             R0, [R0]; s_MovieIsSkippable
26ADBA:  LDR             R2, [R0]
26ADBC:  MOV             R0, R4
26ADBE:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26ADC2:  LDR             R0, [R4]
26ADC4:  MOV             R1, R5
26ADC6:  LDR             R2, [R0,#0x5C]
26ADC8:  MOV             R0, R4
26ADCA:  ADD             SP, SP, #0x28 ; '('
26ADCC:  POP.W           {R8-R10}
26ADD0:  POP.W           {R4-R7,LR}
26ADD4:  BX              R2
