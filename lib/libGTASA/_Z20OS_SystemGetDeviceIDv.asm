; =========================================================
; Game Engine Function: _Z20OS_SystemGetDeviceIDv
; Address            : 0x26BBE0 - 0x26BC4A
; =========================================================

26BBE0:  PUSH            {R4-R7,LR}
26BBE2:  ADD             R7, SP, #0xC
26BBE4:  PUSH.W          {R8}
26BBE8:  SUB             SP, SP, #8
26BBEA:  LDR             R0, =(s_GetDeviceID_ptr - 0x26BBF2)
26BBEC:  LDR             R5, =(dword_6D81DC - 0x26BBF4)
26BBEE:  ADD             R0, PC; s_GetDeviceID_ptr
26BBF0:  ADD             R5, PC; dword_6D81DC
26BBF2:  LDR             R6, [R0]; s_GetDeviceID
26BBF4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BBF8:  LDR             R1, [R5]
26BBFA:  MOV             R4, R0
26BBFC:  LDR             R2, [R6]
26BBFE:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26BC02:  MOV             R5, R0
26BC04:  LDR             R0, [R4]
26BC06:  SUB.W           R2, R7, #-var_11
26BC0A:  MOV             R1, R5
26BC0C:  LDR.W           R3, [R0,#0x2A4]
26BC10:  MOV             R0, R4
26BC12:  BLX             R3
26BC14:  MOV             R6, R0
26BC16:  LDR             R0, =(staticDeviceID_ptr - 0x26BC20)
26BC18:  MOV             R1, R6; char *
26BC1A:  MOVS            R2, #0x80; size_t
26BC1C:  ADD             R0, PC; staticDeviceID_ptr
26BC1E:  LDR.W           R8, [R0]; staticDeviceID
26BC22:  MOV             R0, R8; char *
26BC24:  BLX             strncpy
26BC28:  LDR             R0, [R4]
26BC2A:  MOV             R1, R5
26BC2C:  MOV             R2, R6
26BC2E:  LDR.W           R3, [R0,#0x2A8]
26BC32:  MOV             R0, R4
26BC34:  BLX             R3
26BC36:  LDR             R0, [R4]
26BC38:  MOV             R1, R5
26BC3A:  LDR             R2, [R0,#0x5C]
26BC3C:  MOV             R0, R4
26BC3E:  BLX             R2
26BC40:  MOV             R0, R8
26BC42:  ADD             SP, SP, #8
26BC44:  POP.W           {R8}
26BC48:  POP             {R4-R7,PC}
