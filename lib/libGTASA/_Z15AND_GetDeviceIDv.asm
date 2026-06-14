; =========================================================
; Game Engine Function: _Z15AND_GetDeviceIDv
; Address            : 0x26BC58 - 0x26BCC2
; =========================================================

26BC58:  PUSH            {R4-R7,LR}
26BC5A:  ADD             R7, SP, #0xC
26BC5C:  PUSH.W          {R8}
26BC60:  SUB             SP, SP, #8
26BC62:  LDR             R0, =(s_GetDeviceID_ptr - 0x26BC6A)
26BC64:  LDR             R5, =(dword_6D81DC - 0x26BC6C)
26BC66:  ADD             R0, PC; s_GetDeviceID_ptr
26BC68:  ADD             R5, PC; dword_6D81DC
26BC6A:  LDR             R6, [R0]; s_GetDeviceID
26BC6C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BC70:  LDR             R1, [R5]
26BC72:  MOV             R4, R0
26BC74:  LDR             R2, [R6]
26BC76:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26BC7A:  MOV             R5, R0
26BC7C:  LDR             R0, [R4]
26BC7E:  SUB.W           R2, R7, #-var_11
26BC82:  MOV             R1, R5
26BC84:  LDR.W           R3, [R0,#0x2A4]
26BC88:  MOV             R0, R4
26BC8A:  BLX             R3
26BC8C:  MOV             R6, R0
26BC8E:  LDR             R0, =(staticDeviceID_ptr - 0x26BC98)
26BC90:  MOV             R1, R6; char *
26BC92:  MOVS            R2, #0x80; size_t
26BC94:  ADD             R0, PC; staticDeviceID_ptr
26BC96:  LDR.W           R8, [R0]; staticDeviceID
26BC9A:  MOV             R0, R8; char *
26BC9C:  BLX             strncpy
26BCA0:  LDR             R0, [R4]
26BCA2:  MOV             R1, R5
26BCA4:  MOV             R2, R6
26BCA6:  LDR.W           R3, [R0,#0x2A8]
26BCAA:  MOV             R0, R4
26BCAC:  BLX             R3
26BCAE:  LDR             R0, [R4]
26BCB0:  MOV             R1, R5
26BCB2:  LDR             R2, [R0,#0x5C]
26BCB4:  MOV             R0, R4
26BCB6:  BLX             R2
26BCB8:  MOV             R0, R8
26BCBA:  ADD             SP, SP, #8
26BCBC:  POP.W           {R8}
26BCC0:  POP             {R4-R7,PC}
