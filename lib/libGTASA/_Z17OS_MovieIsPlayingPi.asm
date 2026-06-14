; =========================================================
; Game Engine Function: _Z17OS_MovieIsPlayingPi
; Address            : 0x26AE9C - 0x26AEC6
; =========================================================

26AE9C:  CBZ             R0, loc_26AEA8
26AE9E:  LDR             R1, =(currentLoops_ptr - 0x26AEA4)
26AEA0:  ADD             R1, PC; currentLoops_ptr
26AEA2:  LDR             R1, [R1]; currentLoops
26AEA4:  LDR             R1, [R1]
26AEA6:  STR             R1, [R0]
26AEA8:  PUSH            {R4,R5,R7,LR}
26AEAA:  ADD             R7, SP, #8
26AEAC:  LDR             R0, =(s_IsMoviePlaying_ptr - 0x26AEB4)
26AEAE:  LDR             R4, =(dword_6D81DC - 0x26AEB6)
26AEB0:  ADD             R0, PC; s_IsMoviePlaying_ptr
26AEB2:  ADD             R4, PC; dword_6D81DC
26AEB4:  LDR             R5, [R0]; s_IsMoviePlaying
26AEB6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AEBA:  LDR             R1, [R4]
26AEBC:  LDR             R2, [R5]
26AEBE:  POP.W           {R4,R5,R7,LR}
26AEC2:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
