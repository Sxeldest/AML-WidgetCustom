; =========================================================
; Game Engine Function: _Z13AND_PlayMoviePKcbbiif
; Address            : 0x26AAE0 - 0x26AB72
; =========================================================

26AAE0:  PUSH            {R4-R7,LR}
26AAE2:  ADD             R7, SP, #0xC
26AAE4:  PUSH.W          {R8-R10}
26AAE8:  SUB             SP, SP, #0x28
26AAEA:  MOV             R9, R3
26AAEC:  MOV             R4, R2
26AAEE:  MOV             R8, R1
26AAF0:  MOV             R6, R0
26AAF2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AAF6:  MOV             R5, R0
26AAF8:  MOV             R1, R6
26AAFA:  LDR             R0, [R5]
26AAFC:  LDR.W           R2, [R0,#0x29C]
26AB00:  MOV             R0, R5
26AB02:  BLX             R2
26AB04:  LDR             R1, =(s_PlayMovieInWindow_ptr - 0x26AB0E)
26AB06:  MOV             R6, R0
26AB08:  LDR             R0, =(windowSize_ptr - 0x26AB14)
26AB0A:  ADD             R1, PC; s_PlayMovieInWindow_ptr
26AB0C:  LDR.W           R10, =(dword_6D81DC - 0x26AB18)
26AB10:  ADD             R0, PC; windowSize_ptr
26AB12:  LDR             R1, [R1]; s_PlayMovieInWindow
26AB14:  ADD             R10, PC; dword_6D81DC
26AB16:  LDR             R0, [R0]; windowSize
26AB18:  LDRD.W          R3, R0, [R0]
26AB1C:  LDR             R2, [R1]
26AB1E:  LDR.W           R1, [R10]
26AB22:  STR             R4, [SP,#0x40+var_20]
26AB24:  LDR             R4, [R7,#arg_0]
26AB26:  STRD.W          R9, R4, [SP,#0x40+var_28]
26AB2A:  VLDR            S0, [R7,#arg_4]
26AB2E:  STR             R0, [SP,#0x40+var_34]
26AB30:  MOVS            R0, #0
26AB32:  VCVT.F64.F32    D16, S0
26AB36:  STR             R0, [SP,#0x40+var_1C]
26AB38:  VSTR            D16, [SP,#0x40+var_30]
26AB3C:  STR             R3, [SP,#0x40+var_38]
26AB3E:  MOV             R3, R6
26AB40:  STRD.W          R0, R0, [SP,#0x40+var_40]
26AB44:  MOV             R0, R5
26AB46:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26AB4A:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26AB56)
26AB4C:  MOV             R3, R8
26AB4E:  LDR.W           R1, [R10]
26AB52:  ADD             R0, PC; s_MovieIsSkippable_ptr
26AB54:  LDR             R0, [R0]; s_MovieIsSkippable
26AB56:  LDR             R2, [R0]
26AB58:  MOV             R0, R5
26AB5A:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26AB5E:  LDR             R0, [R5]
26AB60:  MOV             R1, R6
26AB62:  LDR             R2, [R0,#0x5C]
26AB64:  MOV             R0, R5
26AB66:  ADD             SP, SP, #0x28 ; '('
26AB68:  POP.W           {R8-R10}
26AB6C:  POP.W           {R4-R7,LR}
26AB70:  BX              R2
