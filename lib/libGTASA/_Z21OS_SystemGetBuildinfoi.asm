; =========================================================
; Game Engine Function: _Z21OS_SystemGetBuildinfoi
; Address            : 0x26BAB8 - 0x26BB34
; =========================================================

26BAB8:  PUSH            {R4-R7,LR}
26BABA:  ADD             R7, SP, #0xC
26BABC:  PUSH.W          {R8}
26BAC0:  SUB             SP, SP, #8
26BAC2:  MOV             R5, R0
26BAC4:  CMP             R5, #2
26BAC6:  BLS             loc_26BACE
26BAC8:  LDR             R5, =(aUnknown_1 - 0x26BACE); "UNKNOWN"
26BACA:  ADD             R5, PC; "UNKNOWN"
26BACC:  B               loc_26BB2A
26BACE:  LDR             R0, =(s_GetAndroidBuildinfo_ptr - 0x26BAD8)
26BAD0:  LDR.W           R8, =(dword_6D81DC - 0x26BADA)
26BAD4:  ADD             R0, PC; s_GetAndroidBuildinfo_ptr
26BAD6:  ADD             R8, PC; dword_6D81DC
26BAD8:  LDR             R6, [R0]; s_GetAndroidBuildinfo
26BADA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BADE:  LDR.W           R1, [R8]
26BAE2:  MOV             R3, R5
26BAE4:  LDR             R2, [R6]
26BAE6:  MOV             R4, R0
26BAE8:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26BAEC:  MOV             R8, R0
26BAEE:  LDR             R0, [R4]
26BAF0:  SUB.W           R2, R7, #-var_11
26BAF4:  MOV             R1, R8
26BAF6:  LDR.W           R3, [R0,#0x2A4]
26BAFA:  MOV             R0, R4
26BAFC:  BLX             R3
26BAFE:  MOV             R6, R0
26BB00:  LDR             R0, =(staticBuildinfo_ptr - 0x26BB08)
26BB02:  MOV             R1, R6; char *
26BB04:  ADD             R0, PC; staticBuildinfo_ptr
26BB06:  LDR             R0, [R0]; staticBuildinfo
26BB08:  ADD.W           R5, R0, R5,LSL#8
26BB0C:  MOV             R0, R5; char *
26BB0E:  BLX             strcpy
26BB12:  LDR             R0, [R4]
26BB14:  MOV             R1, R8
26BB16:  MOV             R2, R6
26BB18:  LDR.W           R3, [R0,#0x2A8]
26BB1C:  MOV             R0, R4
26BB1E:  BLX             R3
26BB20:  LDR             R0, [R4]
26BB22:  MOV             R1, R8
26BB24:  LDR             R2, [R0,#0x5C]
26BB26:  MOV             R0, R4
26BB28:  BLX             R2
26BB2A:  MOV             R0, R5
26BB2C:  ADD             SP, SP, #8
26BB2E:  POP.W           {R8}
26BB32:  POP             {R4-R7,PC}
