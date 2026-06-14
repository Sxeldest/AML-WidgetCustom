; =========================================================
; Game Engine Function: _Z27WarGameService_LoadSnapshotv
; Address            : 0x26E9D4 - 0x26EA90
; =========================================================

26E9D4:  PUSH            {R4-R7,LR}
26E9D6:  ADD             R7, SP, #0xC
26E9D8:  PUSH.W          {R8}
26E9DC:  LDR             R0, =(s_warGameService_ptr - 0x26E9E2)
26E9DE:  ADD             R0, PC; s_warGameService_ptr
26E9E0:  LDR             R0, [R0]; s_warGameService
26E9E2:  LDR             R0, [R0]
26E9E4:  CBNZ            R0, loc_26EA42
26E9E6:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E9F2)
26E9E8:  LDR             R1, =(s_warGameService_class_ptr - 0x26E9F4)
26E9EA:  LDR.W           R8, =(dword_6D81DC - 0x26E9F6)
26E9EE:  ADD             R0, PC; s_warGameService_ctor_ptr
26E9F0:  ADD             R1, PC; s_warGameService_class_ptr
26E9F2:  ADD             R8, PC; dword_6D81DC
26E9F4:  LDR             R6, [R0]; s_warGameService_ctor
26E9F6:  LDR             R5, [R1]; s_warGameService_class
26E9F8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E9FC:  LDR.W           R3, [R8]
26EA00:  MOV             R4, R0
26EA02:  LDR             R2, [R6]
26EA04:  LDR             R1, [R5]
26EA06:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26EA0A:  MOV             R1, R0
26EA0C:  LDR             R0, =(s_warGameService_ptr - 0x26EA12)
26EA0E:  ADD             R0, PC; s_warGameService_ptr
26EA10:  LDR             R5, [R0]; s_warGameService
26EA12:  STR             R1, [R5]
26EA14:  LDR             R0, [R4]
26EA16:  LDR             R2, [R0,#0x54]
26EA18:  MOV             R0, R4
26EA1A:  BLX             R2
26EA1C:  STR             R0, [R5]
26EA1E:  LDR             R0, [R4]
26EA20:  LDR.W           R1, [R0,#0x390]
26EA24:  MOV             R0, R4
26EA26:  BLX             R1
26EA28:  CBZ             R0, loc_26EA42
26EA2A:  LDR             R1, =(aOswrapper - 0x26EA36); "OSWrapper"
26EA2C:  MOVS            R0, #3; prio
26EA2E:  LDR             R2, =(aJniExceptionLi - 0x26EA38); "JNI Exception (line %d):"
26EA30:  MOVS            R3, #0xC8
26EA32:  ADD             R1, PC; "OSWrapper"
26EA34:  ADD             R2, PC; "JNI Exception (line %d):"
26EA36:  BLX             __android_log_print
26EA3A:  LDR             R0, [R4]
26EA3C:  LDR             R1, [R0,#0x40]
26EA3E:  MOV             R0, R4
26EA40:  BLX             R1
26EA42:  LDR             R0, =(s_loadSnapshot_ptr - 0x26EA4A)
26EA44:  LDR             R1, =(s_warGameService_ptr - 0x26EA4C)
26EA46:  ADD             R0, PC; s_loadSnapshot_ptr
26EA48:  ADD             R1, PC; s_warGameService_ptr
26EA4A:  LDR             R5, [R0]; s_loadSnapshot
26EA4C:  LDR             R6, [R1]; s_warGameService
26EA4E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EA52:  LDR             R2, [R5]
26EA54:  MOV             R4, R0
26EA56:  LDR             R1, [R6]
26EA58:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26EA5C:  LDR             R0, [R4]
26EA5E:  LDR.W           R1, [R0,#0x390]
26EA62:  MOV             R0, R4
26EA64:  BLX             R1
26EA66:  CBZ             R0, loc_26EA8A
26EA68:  LDR             R1, =(aOswrapper - 0x26EA76); "OSWrapper"
26EA6A:  MOVS            R0, #3; prio
26EA6C:  LDR             R2, =(aJniExceptionLi - 0x26EA78); "JNI Exception (line %d):"
26EA6E:  MOV.W           R3, #0x248
26EA72:  ADD             R1, PC; "OSWrapper"
26EA74:  ADD             R2, PC; "JNI Exception (line %d):"
26EA76:  BLX             __android_log_print
26EA7A:  LDR             R0, [R4]
26EA7C:  LDR             R1, [R0,#0x40]
26EA7E:  MOV             R0, R4
26EA80:  POP.W           {R8}
26EA84:  POP.W           {R4-R7,LR}
26EA88:  BX              R1
26EA8A:  POP.W           {R8}
26EA8E:  POP             {R4-R7,PC}
