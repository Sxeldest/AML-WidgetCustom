; =========================================================
; Game Engine Function: _Z12OS_MoviePlayPKcbbf
; Address            : 0x26A8C0 - 0x26A9E6
; =========================================================

26A8C0:  PUSH            {R4-R7,LR}
26A8C2:  ADD             R7, SP, #0xC
26A8C4:  PUSH.W          {R8-R11}
26A8C8:  SUB             SP, SP, #4
26A8CA:  VPUSH           {D8}
26A8CE:  SUB             SP, SP, #0x30
26A8D0:  MOV             R9, R1
26A8D2:  ADD             R1, SP, #0x58+var_2C; char *
26A8D4:  MOV.W           R10, #0
26A8D8:  MOV             R5, R3
26A8DA:  MOV             R4, R2
26A8DC:  MOV             R6, R0
26A8DE:  STR.W           R10, [SP,#0x58+var_2C]
26A8E2:  BLX             j__ZN7ZIPFile15FindFromStorageEPKcPPS_; ZIPFile::FindFromStorage(char const*,ZIPFile**)
26A8E6:  VMOV            S16, R5
26A8EA:  ADDS            R1, R0, #1
26A8EC:  BEQ             loc_26A976
26A8EE:  LDR             R5, [SP,#0x58+var_2C]
26A8F0:  ADD.W           R0, R0, R0,LSL#1
26A8F4:  LDR             R1, [R5,#0xC]
26A8F6:  STR             R4, [SP,#0x58+var_30]
26A8F8:  LDR.W           R4, [R1,R0,LSL#2]
26A8FC:  ADD.W           R0, R1, R0,LSL#2
26A900:  LDR.W           R11, [R0,#4]
26A904:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A908:  MOV             R6, R0
26A90A:  ADD.W           R1, R5, #0x10
26A90E:  LDR             R0, [R6]
26A910:  LDR.W           R2, [R0,#0x29C]
26A914:  MOV             R0, R6
26A916:  BLX             R2
26A918:  LDR             R1, =(s_PlayMovieInWindow_ptr - 0x26A926)
26A91A:  MOV             R5, R0
26A91C:  LDR             R0, =(windowSize_ptr - 0x26A92C)
26A91E:  VCVT.F64.F32    D16, S16
26A922:  ADD             R1, PC; s_PlayMovieInWindow_ptr
26A924:  LDR.W           R8, =(dword_6D81DC - 0x26A930)
26A928:  ADD             R0, PC; windowSize_ptr
26A92A:  LDR             R1, [R1]; s_PlayMovieInWindow
26A92C:  ADD             R8, PC; dword_6D81DC
26A92E:  LDR             R0, [R0]; windowSize
26A930:  LDRD.W          R3, R0, [R0]
26A934:  LDR             R2, [R1]
26A936:  LDR.W           R1, [R8]
26A93A:  STRD.W          R4, R11, [SP,#0x58+var_40]
26A93E:  LDR             R4, [SP,#0x58+var_30]
26A940:  STRD.W          R3, R0, [SP,#0x58+var_50]
26A944:  MOV             R0, R6
26A946:  MOV             R3, R5
26A948:  STRD.W          R4, R10, [SP,#0x58+var_38]
26A94C:  VSTR            D16, [SP,#0x58+var_48]
26A950:  STRD.W          R10, R10, [SP,#0x58+var_58]
26A954:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26A958:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26A964)
26A95A:  MOV             R3, R9
26A95C:  LDR.W           R1, [R8]
26A960:  ADD             R0, PC; s_MovieIsSkippable_ptr
26A962:  LDR             R0, [R0]; s_MovieIsSkippable
26A964:  LDR             R2, [R0]
26A966:  MOV             R0, R6
26A968:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26A96C:  LDR             R0, [R6]
26A96E:  MOV             R1, R5
26A970:  LDR             R2, [R0,#0x5C]
26A972:  MOV             R0, R6
26A974:  B               loc_26A9CE
26A976:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A97A:  MOV             R5, R0
26A97C:  MOV             R1, R6
26A97E:  LDR             R0, [R5]
26A980:  LDR.W           R2, [R0,#0x29C]
26A984:  MOV             R0, R5
26A986:  BLX             R2
26A988:  LDR             R1, =(s_PlayMovieInWindow_ptr - 0x26A996)
26A98A:  MOV             R6, R0
26A98C:  LDR             R0, =(windowSize_ptr - 0x26A99C)
26A98E:  VCVT.F64.F32    D16, S16
26A992:  ADD             R1, PC; s_PlayMovieInWindow_ptr
26A994:  LDR.W           R12, =(dword_6D81DC - 0x26A9A0)
26A998:  ADD             R0, PC; windowSize_ptr
26A99A:  LDR             R1, [R1]; s_PlayMovieInWindow
26A99C:  ADD             R12, PC; dword_6D81DC
26A99E:  LDR             R0, [R0]; windowSize
26A9A0:  LDRD.W          R3, R0, [R0]
26A9A4:  LDR             R2, [R1]
26A9A6:  LDR.W           R1, [R12]
26A9AA:  STR             R0, [SP,#0x58+var_4C]
26A9AC:  MOV             R0, R5
26A9AE:  STRD.W          R4, R10, [SP,#0x58+var_38]
26A9B2:  STRD.W          R10, R10, [SP,#0x58+var_40]
26A9B6:  VSTR            D16, [SP,#0x58+var_48]
26A9BA:  STR             R3, [SP,#0x58+var_50]
26A9BC:  MOV             R3, R6
26A9BE:  STRD.W          R10, R10, [SP,#0x58+var_58]
26A9C2:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26A9C6:  LDR             R0, [R5]
26A9C8:  MOV             R1, R6
26A9CA:  LDR             R2, [R0,#0x5C]
26A9CC:  MOV             R0, R5
26A9CE:  BLX             R2
26A9D0:  LDR             R0, =(currentLoops_ptr - 0x26A9D6)
26A9D2:  ADD             R0, PC; currentLoops_ptr
26A9D4:  LDR             R0, [R0]; currentLoops
26A9D6:  STR             R4, [R0]
26A9D8:  ADD             SP, SP, #0x30 ; '0'
26A9DA:  VPOP            {D8}
26A9DE:  ADD             SP, SP, #4
26A9E0:  POP.W           {R8-R11}
26A9E4:  POP             {R4-R7,PC}
