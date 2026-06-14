; =========================================================
; Game Engine Function: _Z32WarGameService_LoadSnapshotCountv
; Address            : 0x26EAC0 - 0x26EB7C
; =========================================================

26EAC0:  PUSH            {R4-R7,LR}
26EAC2:  ADD             R7, SP, #0xC
26EAC4:  PUSH.W          {R8}
26EAC8:  LDR             R0, =(s_warGameService_ptr - 0x26EACE)
26EACA:  ADD             R0, PC; s_warGameService_ptr
26EACC:  LDR             R0, [R0]; s_warGameService
26EACE:  LDR             R0, [R0]
26EAD0:  CBNZ            R0, loc_26EB2E
26EAD2:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26EADE)
26EAD4:  LDR             R1, =(s_warGameService_class_ptr - 0x26EAE0)
26EAD6:  LDR.W           R8, =(dword_6D81DC - 0x26EAE2)
26EADA:  ADD             R0, PC; s_warGameService_ctor_ptr
26EADC:  ADD             R1, PC; s_warGameService_class_ptr
26EADE:  ADD             R8, PC; dword_6D81DC
26EAE0:  LDR             R6, [R0]; s_warGameService_ctor
26EAE2:  LDR             R5, [R1]; s_warGameService_class
26EAE4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EAE8:  LDR.W           R3, [R8]
26EAEC:  MOV             R4, R0
26EAEE:  LDR             R2, [R6]
26EAF0:  LDR             R1, [R5]
26EAF2:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26EAF6:  MOV             R1, R0
26EAF8:  LDR             R0, =(s_warGameService_ptr - 0x26EAFE)
26EAFA:  ADD             R0, PC; s_warGameService_ptr
26EAFC:  LDR             R5, [R0]; s_warGameService
26EAFE:  STR             R1, [R5]
26EB00:  LDR             R0, [R4]
26EB02:  LDR             R2, [R0,#0x54]
26EB04:  MOV             R0, R4
26EB06:  BLX             R2
26EB08:  STR             R0, [R5]
26EB0A:  LDR             R0, [R4]
26EB0C:  LDR.W           R1, [R0,#0x390]
26EB10:  MOV             R0, R4
26EB12:  BLX             R1
26EB14:  CBZ             R0, loc_26EB2E
26EB16:  LDR             R1, =(aOswrapper - 0x26EB22); "OSWrapper"
26EB18:  MOVS            R0, #3; prio
26EB1A:  LDR             R2, =(aJniExceptionLi - 0x26EB24); "JNI Exception (line %d):"
26EB1C:  MOVS            R3, #0xC8
26EB1E:  ADD             R1, PC; "OSWrapper"
26EB20:  ADD             R2, PC; "JNI Exception (line %d):"
26EB22:  BLX             __android_log_print
26EB26:  LDR             R0, [R4]
26EB28:  LDR             R1, [R0,#0x40]
26EB2A:  MOV             R0, R4
26EB2C:  BLX             R1
26EB2E:  LDR             R0, =(s_loadSnapshotCount_ptr - 0x26EB36)
26EB30:  LDR             R1, =(s_warGameService_ptr - 0x26EB38)
26EB32:  ADD             R0, PC; s_loadSnapshotCount_ptr
26EB34:  ADD             R1, PC; s_warGameService_ptr
26EB36:  LDR             R5, [R0]; s_loadSnapshotCount
26EB38:  LDR             R6, [R1]; s_warGameService
26EB3A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EB3E:  LDR             R2, [R5]
26EB40:  MOV             R4, R0
26EB42:  LDR             R1, [R6]
26EB44:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26EB48:  LDR             R0, [R4]
26EB4A:  LDR.W           R1, [R0,#0x390]
26EB4E:  MOV             R0, R4
26EB50:  BLX             R1
26EB52:  CBZ             R0, loc_26EB76
26EB54:  LDR             R1, =(aOswrapper - 0x26EB62); "OSWrapper"
26EB56:  MOVS            R0, #3; prio
26EB58:  LDR             R2, =(aJniExceptionLi - 0x26EB64); "JNI Exception (line %d):"
26EB5A:  MOVW            R3, #0x265
26EB5E:  ADD             R1, PC; "OSWrapper"
26EB60:  ADD             R2, PC; "JNI Exception (line %d):"
26EB62:  BLX             __android_log_print
26EB66:  LDR             R0, [R4]
26EB68:  LDR             R1, [R0,#0x40]
26EB6A:  MOV             R0, R4
26EB6C:  POP.W           {R8}
26EB70:  POP.W           {R4-R7,LR}
26EB74:  BX              R1
26EB76:  POP.W           {R8}
26EB7A:  POP             {R4-R7,PC}
