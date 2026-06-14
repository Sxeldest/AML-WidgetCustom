; =========================================================
; Game Engine Function: _Z20OS_MoviePlayinWindowPKciiiibbf
; Address            : 0x26AC0C - 0x26AD26
; =========================================================

26AC0C:  PUSH            {R4-R7,LR}
26AC0E:  ADD             R7, SP, #0xC
26AC10:  PUSH.W          {R8-R11}
26AC14:  SUB             SP, SP, #4
26AC16:  VPUSH           {D8}
26AC1A:  SUB             SP, SP, #0x30
26AC1C:  MOV             R9, R1
26AC1E:  ADD             R1, SP, #0x58+var_2C; char *
26AC20:  MOV.W           R8, #0
26AC24:  STR             R3, [SP,#0x58+var_30]
26AC26:  MOV             R10, R2
26AC28:  MOV             R6, R0
26AC2A:  STR.W           R8, [SP,#0x58+var_2C]
26AC2E:  BLX             j__ZN7ZIPFile15FindFromStorageEPKcPPS_; ZIPFile::FindFromStorage(char const*,ZIPFile**)
26AC32:  LDR.W           R11, [R7,#arg_8]
26AC36:  ADDS            R1, R0, #1
26AC38:  VLDR            S16, [R7,#arg_C]
26AC3C:  BEQ             loc_26ACAA
26AC3E:  LDR             R6, [SP,#0x58+var_2C]
26AC40:  ADD.W           R0, R0, R0,LSL#1
26AC44:  LDR             R1, [R6,#0xC]
26AC46:  LDR.W           R8, [R1,R0,LSL#2]
26AC4A:  ADD.W           R0, R1, R0,LSL#2
26AC4E:  LDR             R4, [R0,#4]
26AC50:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AC54:  MOV             R5, R0
26AC56:  ADD.W           R1, R6, #0x10
26AC5A:  LDR             R0, [R5]
26AC5C:  LDR.W           R2, [R0,#0x29C]
26AC60:  MOV             R0, R5
26AC62:  BLX             R2
26AC64:  MOV             R6, R0
26AC66:  LDR             R0, =(s_PlayMovieInWindow_ptr - 0x26AC72)
26AC68:  VCVT.F64.F32    D16, S16
26AC6C:  LDR             R1, =(dword_6D81DC - 0x26AC76)
26AC6E:  ADD             R0, PC; s_PlayMovieInWindow_ptr
26AC70:  MOV             R3, R6
26AC72:  ADD             R1, PC; dword_6D81DC
26AC74:  LDR             R0, [R0]; s_PlayMovieInWindow
26AC76:  LDR             R1, [R1]
26AC78:  LDR             R2, [R0]
26AC7A:  MOVS            R0, #1
26AC7C:  STRD.W          R8, R4, [SP,#0x58+var_40]
26AC80:  STRD.W          R11, R0, [SP,#0x58+var_38]
26AC84:  VSTR            D16, [SP,#0x58+var_48]
26AC88:  STRD.W          R9, R10, [SP,#0x58+var_58]
26AC8C:  LDR             R0, [SP,#0x58+var_30]
26AC8E:  STR             R0, [SP,#0x58+var_50]
26AC90:  LDR             R0, [R7,#arg_0]
26AC92:  STR             R0, [SP,#0x58+var_4C]
26AC94:  MOV             R0, R5
26AC96:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26AC9A:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26ACA0)
26AC9C:  ADD             R0, PC; s_MovieIsSkippable_ptr
26AC9E:  LDR             R0, [R0]; s_MovieIsSkippable
26ACA0:  LDR             R2, [R0]
26ACA2:  LDR             R0, =(dword_6D81DC - 0x26ACA8)
26ACA4:  ADD             R0, PC; dword_6D81DC
26ACA6:  LDR             R1, [R0]
26ACA8:  B               loc_26ACFC
26ACAA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26ACAE:  MOV             R5, R0
26ACB0:  MOV             R1, R6
26ACB2:  LDR             R0, [R5]
26ACB4:  LDR.W           R2, [R0,#0x29C]
26ACB8:  MOV             R0, R5
26ACBA:  BLX             R2
26ACBC:  MOV             R6, R0
26ACBE:  LDR             R0, =(s_PlayMovieInWindow_ptr - 0x26ACCA)
26ACC0:  VCVT.F64.F32    D16, S16
26ACC4:  LDR             R4, =(dword_6D81DC - 0x26ACCE)
26ACC6:  ADD             R0, PC; s_PlayMovieInWindow_ptr
26ACC8:  MOV             R3, R6
26ACCA:  ADD             R4, PC; dword_6D81DC
26ACCC:  LDR             R0, [R0]; s_PlayMovieInWindow
26ACCE:  LDR             R1, [R4]
26ACD0:  LDR             R2, [R0]
26ACD2:  MOVS            R0, #1
26ACD4:  STRD.W          R8, R8, [SP,#0x58+var_40]
26ACD8:  STRD.W          R11, R0, [SP,#0x58+var_38]
26ACDC:  VSTR            D16, [SP,#0x58+var_48]
26ACE0:  STRD.W          R9, R10, [SP,#0x58+var_58]
26ACE4:  LDR             R0, [SP,#0x58+var_30]
26ACE6:  STR             R0, [SP,#0x58+var_50]
26ACE8:  LDR             R0, [R7,#arg_0]
26ACEA:  STR             R0, [SP,#0x58+var_4C]
26ACEC:  MOV             R0, R5
26ACEE:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26ACF2:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26ACFA)
26ACF4:  LDR             R1, [R4]
26ACF6:  ADD             R0, PC; s_MovieIsSkippable_ptr
26ACF8:  LDR             R0, [R0]; s_MovieIsSkippable
26ACFA:  LDR             R2, [R0]
26ACFC:  LDR             R3, [R7,#arg_4]
26ACFE:  MOV             R0, R5
26AD00:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26AD04:  LDR             R0, [R5]
26AD06:  MOV             R1, R6
26AD08:  LDR             R2, [R0,#0x5C]
26AD0A:  MOV             R0, R5
26AD0C:  BLX             R2
26AD0E:  LDR             R0, =(currentLoops_ptr - 0x26AD14)
26AD10:  ADD             R0, PC; currentLoops_ptr
26AD12:  LDR             R0, [R0]; currentLoops
26AD14:  STR.W           R11, [R0]
26AD18:  ADD             SP, SP, #0x30 ; '0'
26AD1A:  VPOP            {D8}
26AD1E:  ADD             SP, SP, #4
26AD20:  POP.W           {R8-R11}
26AD24:  POP             {R4-R7,PC}
