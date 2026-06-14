; =========================================================
; Game Engine Function: _Z13AND_PlayMoviePKcbbf
; Address            : 0x26AB84 - 0x26ABFE
; =========================================================

26AB84:  PUSH            {R4-R7,LR}
26AB86:  ADD             R7, SP, #0xC
26AB88:  PUSH.W          {R8}
26AB8C:  SUB             SP, SP, #0x28
26AB8E:  MOV             R6, R3
26AB90:  MOV             R8, R2
26AB92:  MOV             R5, R0
26AB94:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AB98:  MOV             R4, R0
26AB9A:  MOV             R1, R5
26AB9C:  LDR             R0, [R4]
26AB9E:  LDR.W           R2, [R0,#0x29C]
26ABA2:  MOV             R0, R4
26ABA4:  BLX             R2
26ABA6:  LDR             R1, =(s_PlayMovieInWindow_ptr - 0x26ABB4)
26ABA8:  MOV             R5, R0
26ABAA:  LDR             R0, =(windowSize_ptr - 0x26ABBA)
26ABAC:  VMOV            S0, R6
26ABB0:  ADD             R1, PC; s_PlayMovieInWindow_ptr
26ABB2:  LDR.W           R12, =(dword_6D81DC - 0x26ABC2)
26ABB6:  ADD             R0, PC; windowSize_ptr
26ABB8:  VCVT.F64.F32    D16, S0
26ABBC:  LDR             R1, [R1]; s_PlayMovieInWindow
26ABBE:  ADD             R12, PC; dword_6D81DC
26ABC0:  LDR             R0, [R0]; windowSize
26ABC2:  MOVS            R6, #0
26ABC4:  LDRD.W          R3, R0, [R0]
26ABC8:  LDR             R2, [R1]
26ABCA:  LDR.W           R1, [R12]
26ABCE:  STRD.W          R6, R6, [SP,#0x38+var_20]
26ABD2:  STRD.W          R8, R6, [SP,#0x38+var_18]
26ABD6:  VSTR            D16, [SP,#0x38+var_28]
26ABDA:  STRD.W          R6, R6, [SP,#0x38+var_38]
26ABDE:  STRD.W          R3, R0, [SP,#0x38+var_30]
26ABE2:  MOV             R0, R4
26ABE4:  MOV             R3, R5
26ABE6:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26ABEA:  LDR             R0, [R4]
26ABEC:  MOV             R1, R5
26ABEE:  LDR             R2, [R0,#0x5C]
26ABF0:  MOV             R0, R4
26ABF2:  ADD             SP, SP, #0x28 ; '('
26ABF4:  POP.W           {R8}
26ABF8:  POP.W           {R4-R7,LR}
26ABFC:  BX              R2
