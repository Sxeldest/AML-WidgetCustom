; =========================================================
; Game Engine Function: _Z11War_HttpGetPKc
; Address            : 0x26C990 - 0x26CA94
; =========================================================

26C990:  PUSH            {R4-R7,LR}
26C992:  ADD             R7, SP, #0xC
26C994:  PUSH.W          {R8,R9,R11}
26C998:  MOV             R9, R0
26C99A:  LDR             R0, =(s_warHttp_ptr - 0x26C9A0)
26C99C:  ADD             R0, PC; s_warHttp_ptr
26C99E:  LDR             R0, [R0]; s_warHttp
26C9A0:  LDR             R0, [R0]
26C9A2:  CBNZ            R0, loc_26CA00
26C9A4:  LDR             R0, =(s_warHttp_ctor_ptr - 0x26C9B0)
26C9A6:  LDR             R1, =(s_warHttp_class_ptr - 0x26C9B2)
26C9A8:  LDR.W           R8, =(dword_6D81DC - 0x26C9B4)
26C9AC:  ADD             R0, PC; s_warHttp_ctor_ptr
26C9AE:  ADD             R1, PC; s_warHttp_class_ptr
26C9B0:  ADD             R8, PC; dword_6D81DC
26C9B2:  LDR             R6, [R0]; s_warHttp_ctor
26C9B4:  LDR             R5, [R1]; s_warHttp_class
26C9B6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C9BA:  LDR.W           R3, [R8]
26C9BE:  MOV             R4, R0
26C9C0:  LDR             R2, [R6]
26C9C2:  LDR             R1, [R5]
26C9C4:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26C9C8:  MOV             R1, R0
26C9CA:  LDR             R0, =(s_warHttp_ptr - 0x26C9D0)
26C9CC:  ADD             R0, PC; s_warHttp_ptr
26C9CE:  LDR             R5, [R0]; s_warHttp
26C9D0:  STR             R1, [R5]
26C9D2:  LDR             R0, [R4]
26C9D4:  LDR             R2, [R0,#0x54]
26C9D6:  MOV             R0, R4
26C9D8:  BLX             R2
26C9DA:  STR             R0, [R5]
26C9DC:  LDR             R0, [R4]
26C9DE:  LDR.W           R1, [R0,#0x390]
26C9E2:  MOV             R0, R4
26C9E4:  BLX             R1
26C9E6:  CBZ             R0, loc_26CA00
26C9E8:  LDR             R1, =(aOswrapper - 0x26C9F4); "OSWrapper"
26C9EA:  MOVS            R0, #3; prio
26C9EC:  LDR             R2, =(aJniExceptionLi - 0x26C9F6); "JNI Exception (line %d):"
26C9EE:  MOVS            R3, #0x31 ; '1'
26C9F0:  ADD             R1, PC; "OSWrapper"
26C9F2:  ADD             R2, PC; "JNI Exception (line %d):"
26C9F4:  BLX             __android_log_print
26C9F8:  LDR             R0, [R4]
26C9FA:  LDR             R1, [R0,#0x40]
26C9FC:  MOV             R0, R4
26C9FE:  BLX             R1
26CA00:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CA04:  MOV             R4, R0
26CA06:  MOV             R1, R9
26CA08:  LDR             R0, [R4]
26CA0A:  LDR.W           R2, [R0,#0x29C]
26CA0E:  MOV             R0, R4
26CA10:  BLX             R2
26CA12:  MOV             R5, R0
26CA14:  LDR             R0, =(s_warHttpGet_ptr - 0x26CA1E)
26CA16:  LDR             R1, =(s_warHttp_ptr - 0x26CA20)
26CA18:  MOV             R3, R5
26CA1A:  ADD             R0, PC; s_warHttpGet_ptr
26CA1C:  ADD             R1, PC; s_warHttp_ptr
26CA1E:  LDR             R0, [R0]; s_warHttpGet
26CA20:  LDR             R1, [R1]; s_warHttp
26CA22:  LDR             R2, [R0]
26CA24:  MOV             R0, R4
26CA26:  LDR             R1, [R1]
26CA28:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26CA2C:  MOV             R6, R0
26CA2E:  LDR             R0, [R4]
26CA30:  MOV             R1, R5
26CA32:  LDR             R2, [R0,#0x5C]
26CA34:  MOV             R0, R4
26CA36:  BLX             R2
26CA38:  LDR             R0, [R4]
26CA3A:  MOV             R1, R6
26CA3C:  MOVS            R2, #0
26CA3E:  LDR.W           R3, [R0,#0x2A4]
26CA42:  MOV             R0, R4
26CA44:  BLX             R3
26CA46:  MOV             R5, R0
26CA48:  BLX             strlen
26CA4C:  ADDS            R0, #1; byte_count
26CA4E:  BLX             malloc
26CA52:  MOV             R1, R5; char *
26CA54:  MOV             R8, R0
26CA56:  BLX             strcpy
26CA5A:  LDR             R0, [R4]
26CA5C:  MOV             R1, R6
26CA5E:  MOV             R2, R5
26CA60:  LDR.W           R3, [R0,#0x2A8]
26CA64:  MOV             R0, R4
26CA66:  BLX             R3
26CA68:  LDR             R0, [R4]
26CA6A:  LDR.W           R1, [R0,#0x390]
26CA6E:  MOV             R0, R4
26CA70:  BLX             R1
26CA72:  CBZ             R0, loc_26CA8C
26CA74:  LDR             R1, =(aOswrapper - 0x26CA80); "OSWrapper"
26CA76:  MOVS            R0, #3; prio
26CA78:  LDR             R2, =(aJniExceptionLi - 0x26CA82); "JNI Exception (line %d):"
26CA7A:  MOVS            R3, #0x67 ; 'g'
26CA7C:  ADD             R1, PC; "OSWrapper"
26CA7E:  ADD             R2, PC; "JNI Exception (line %d):"
26CA80:  BLX             __android_log_print
26CA84:  LDR             R0, [R4]
26CA86:  LDR             R1, [R0,#0x40]
26CA88:  MOV             R0, R4
26CA8A:  BLX             R1
26CA8C:  MOV             R0, R8
26CA8E:  POP.W           {R8,R9,R11}
26CA92:  POP             {R4-R7,PC}
