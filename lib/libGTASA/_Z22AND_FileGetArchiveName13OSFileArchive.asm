; =========================================================
; Game Engine Function: _Z22AND_FileGetArchiveName13OSFileArchive
; Address            : 0x266A0C - 0x266AB4
; =========================================================

266A0C:  PUSH            {R4-R7,LR}
266A0E:  ADD             R7, SP, #0xC
266A10:  PUSH.W          {R8-R11}
266A14:  SUB             SP, SP, #4
266A16:  MOV             R5, R0
266A18:  LDR             R0, =(s_FileGetArchiveName_ptr - 0x266A22)
266A1A:  LDR.W           R8, =(dword_6D81DC - 0x266A24)
266A1E:  ADD             R0, PC; s_FileGetArchiveName_ptr
266A20:  ADD             R8, PC; dword_6D81DC
266A22:  LDR             R6, [R0]; s_FileGetArchiveName
266A24:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
266A28:  LDR.W           R1, [R8]
266A2C:  MOV             R3, R5
266A2E:  LDR             R2, [R6]
266A30:  MOV             R4, R0
266A32:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
266A36:  MOV             R9, R0
266A38:  CMP.W           R9, #0
266A3C:  BEQ             loc_266AA8
266A3E:  LDR             R0, [R4]
266A40:  MOV             R1, R9
266A42:  MOVS            R2, #0
266A44:  MOV.W           R11, #0
266A48:  LDR.W           R3, [R0,#0x2A4]
266A4C:  MOV             R0, R4
266A4E:  BLX             R3
266A50:  LDR             R1, =(aAndroid - 0x266A58); "/Android"
266A52:  MOV             R8, R0
266A54:  ADD             R1, PC; "/Android"
266A56:  BLX             strstr
266A5A:  CMP             R0, #0
266A5C:  BNE             loc_266A68
266A5E:  LDR             R1, =(aAndroid_0 - 0x266A66); "/android"
266A60:  MOV             R0, R8; haystack
266A62:  ADD             R1, PC; "/android"
266A64:  BLX             strstr
266A68:  CMP             R0, #0
266A6A:  MOV             R5, R8
266A6C:  IT NE
266A6E:  MOVNE           R5, R0
266A70:  MOV             R0, R5; char *
266A72:  BLX             strlen
266A76:  MOV             R10, R0
266A78:  ADD.W           R0, R10, #1; byte_count
266A7C:  BLX             malloc
266A80:  MOV             R1, R5; char *
266A82:  MOV             R2, R10; size_t
266A84:  MOV             R6, R0
266A86:  BLX             strncpy
266A8A:  LDR             R0, [R4]
266A8C:  MOV             R1, R9
266A8E:  MOV             R2, R8
266A90:  LDR.W           R3, [R0,#0x2A8]
266A94:  MOV             R0, R4
266A96:  BLX             R3
266A98:  LDR             R0, [R4]
266A9A:  MOV             R1, R9
266A9C:  LDR             R2, [R0,#0x5C]
266A9E:  MOV             R0, R4
266AA0:  BLX             R2
266AA2:  STRB.W          R11, [R6,R10]
266AA6:  B               loc_266AAA
266AA8:  MOVS            R6, #0
266AAA:  MOV             R0, R6
266AAC:  ADD             SP, SP, #4
266AAE:  POP.W           {R8-R11}
266AB2:  POP             {R4-R7,PC}
