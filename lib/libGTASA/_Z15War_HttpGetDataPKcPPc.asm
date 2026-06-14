; =========================================================
; Game Engine Function: _Z15War_HttpGetDataPKcPPc
; Address            : 0x26CAC4 - 0x26CBE2
; =========================================================

26CAC4:  PUSH            {R4-R7,LR}
26CAC6:  ADD             R7, SP, #0xC
26CAC8:  PUSH.W          {R8-R10}
26CACC:  MOV             R10, R0
26CACE:  LDR             R0, =(s_warHttp_ptr - 0x26CAD6)
26CAD0:  MOV             R8, R1
26CAD2:  ADD             R0, PC; s_warHttp_ptr
26CAD4:  LDR             R0, [R0]; s_warHttp
26CAD6:  LDR             R0, [R0]
26CAD8:  CBNZ            R0, loc_26CB36
26CADA:  LDR             R0, =(s_warHttp_ctor_ptr - 0x26CAE6)
26CADC:  LDR             R1, =(s_warHttp_class_ptr - 0x26CAE8)
26CADE:  LDR.W           R9, =(dword_6D81DC - 0x26CAEA)
26CAE2:  ADD             R0, PC; s_warHttp_ctor_ptr
26CAE4:  ADD             R1, PC; s_warHttp_class_ptr
26CAE6:  ADD             R9, PC; dword_6D81DC
26CAE8:  LDR             R4, [R0]; s_warHttp_ctor
26CAEA:  LDR             R6, [R1]; s_warHttp_class
26CAEC:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CAF0:  LDR.W           R3, [R9]
26CAF4:  MOV             R5, R0
26CAF6:  LDR             R2, [R4]
26CAF8:  LDR             R1, [R6]
26CAFA:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26CAFE:  MOV             R1, R0
26CB00:  LDR             R0, =(s_warHttp_ptr - 0x26CB06)
26CB02:  ADD             R0, PC; s_warHttp_ptr
26CB04:  LDR             R4, [R0]; s_warHttp
26CB06:  STR             R1, [R4]
26CB08:  LDR             R0, [R5]
26CB0A:  LDR             R2, [R0,#0x54]
26CB0C:  MOV             R0, R5
26CB0E:  BLX             R2
26CB10:  STR             R0, [R4]
26CB12:  LDR             R0, [R5]
26CB14:  LDR.W           R1, [R0,#0x390]
26CB18:  MOV             R0, R5
26CB1A:  BLX             R1
26CB1C:  CBZ             R0, loc_26CB36
26CB1E:  LDR             R1, =(aOswrapper - 0x26CB2A); "OSWrapper"
26CB20:  MOVS            R0, #3; prio
26CB22:  LDR             R2, =(aJniExceptionLi - 0x26CB2C); "JNI Exception (line %d):"
26CB24:  MOVS            R3, #0x31 ; '1'
26CB26:  ADD             R1, PC; "OSWrapper"
26CB28:  ADD             R2, PC; "JNI Exception (line %d):"
26CB2A:  BLX             __android_log_print
26CB2E:  LDR             R0, [R5]
26CB30:  LDR             R1, [R0,#0x40]
26CB32:  MOV             R0, R5
26CB34:  BLX             R1
26CB36:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CB3A:  MOV             R5, R0
26CB3C:  MOV             R1, R10
26CB3E:  LDR             R0, [R5]
26CB40:  LDR.W           R2, [R0,#0x29C]
26CB44:  MOV             R0, R5
26CB46:  BLX             R2
26CB48:  MOV             R6, R0
26CB4A:  LDR             R0, =(s_warHttpGetData_ptr - 0x26CB54)
26CB4C:  LDR             R1, =(s_warHttp_ptr - 0x26CB56)
26CB4E:  MOV             R3, R6
26CB50:  ADD             R0, PC; s_warHttpGetData_ptr
26CB52:  ADD             R1, PC; s_warHttp_ptr
26CB54:  LDR             R0, [R0]; s_warHttpGetData
26CB56:  LDR             R1, [R1]; s_warHttp
26CB58:  LDR             R2, [R0]
26CB5A:  MOV             R0, R5
26CB5C:  LDR             R1, [R1]
26CB5E:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26CB62:  MOV             R4, R0
26CB64:  LDR             R0, [R5]
26CB66:  MOV             R1, R6
26CB68:  LDR             R2, [R0,#0x5C]
26CB6A:  MOV             R0, R5
26CB6C:  BLX             R2
26CB6E:  CBZ             R4, loc_26CBB2
26CB70:  LDR             R0, [R5]
26CB72:  MOV             R1, R4
26CB74:  LDR.W           R2, [R0,#0x2AC]
26CB78:  MOV             R0, R5
26CB7A:  BLX             R2
26CB7C:  MOV             R9, R0
26CB7E:  LDR             R0, [R5]
26CB80:  MOV             R1, R4
26CB82:  MOVS            R2, #0
26CB84:  LDR.W           R3, [R0,#0x2E0]
26CB88:  MOV             R0, R5
26CB8A:  BLX             R3
26CB8C:  MOV             R6, R0
26CB8E:  MOV             R0, R9; byte_count
26CB90:  BLX             malloc
26CB94:  MOV             R1, R6; void *
26CB96:  MOV             R2, R9; size_t
26CB98:  STR.W           R0, [R8]
26CB9C:  BLX             memcpy_1
26CBA0:  LDR             R0, [R5]
26CBA2:  MOV             R1, R4
26CBA4:  MOV             R2, R6
26CBA6:  MOVS            R3, #2
26CBA8:  LDR.W           R12, [R0,#0x300]
26CBAC:  MOV             R0, R5
26CBAE:  BLX             R12
26CBB0:  B               loc_26CBB6
26CBB2:  MOV.W           R9, #0
26CBB6:  LDR             R0, [R5]
26CBB8:  LDR.W           R1, [R0,#0x390]
26CBBC:  MOV             R0, R5
26CBBE:  BLX             R1
26CBC0:  CBZ             R0, loc_26CBDA
26CBC2:  LDR             R1, =(aOswrapper - 0x26CBCE); "OSWrapper"
26CBC4:  MOVS            R0, #3; prio
26CBC6:  LDR             R2, =(aJniExceptionLi - 0x26CBD0); "JNI Exception (line %d):"
26CBC8:  MOVS            R3, #0x7E ; '~'
26CBCA:  ADD             R1, PC; "OSWrapper"
26CBCC:  ADD             R2, PC; "JNI Exception (line %d):"
26CBCE:  BLX             __android_log_print
26CBD2:  LDR             R0, [R5]
26CBD4:  LDR             R1, [R0,#0x40]
26CBD6:  MOV             R0, R5
26CBD8:  BLX             R1
26CBDA:  MOV             R0, R9
26CBDC:  POP.W           {R8-R10}
26CBE0:  POP             {R4-R7,PC}
