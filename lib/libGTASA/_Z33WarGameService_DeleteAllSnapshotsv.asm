; =========================================================
; Game Engine Function: _Z33WarGameService_DeleteAllSnapshotsv
; Address            : 0x26ECB0 - 0x26ED6C
; =========================================================

26ECB0:  PUSH            {R4-R7,LR}
26ECB2:  ADD             R7, SP, #0xC
26ECB4:  PUSH.W          {R8}
26ECB8:  LDR             R0, =(s_warGameService_ptr - 0x26ECBE)
26ECBA:  ADD             R0, PC; s_warGameService_ptr
26ECBC:  LDR             R0, [R0]; s_warGameService
26ECBE:  LDR             R0, [R0]
26ECC0:  CBNZ            R0, loc_26ED1E
26ECC2:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26ECCE)
26ECC4:  LDR             R1, =(s_warGameService_class_ptr - 0x26ECD0)
26ECC6:  LDR.W           R8, =(dword_6D81DC - 0x26ECD2)
26ECCA:  ADD             R0, PC; s_warGameService_ctor_ptr
26ECCC:  ADD             R1, PC; s_warGameService_class_ptr
26ECCE:  ADD             R8, PC; dword_6D81DC
26ECD0:  LDR             R6, [R0]; s_warGameService_ctor
26ECD2:  LDR             R5, [R1]; s_warGameService_class
26ECD4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26ECD8:  LDR.W           R3, [R8]
26ECDC:  MOV             R4, R0
26ECDE:  LDR             R2, [R6]
26ECE0:  LDR             R1, [R5]
26ECE2:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26ECE6:  MOV             R1, R0
26ECE8:  LDR             R0, =(s_warGameService_ptr - 0x26ECEE)
26ECEA:  ADD             R0, PC; s_warGameService_ptr
26ECEC:  LDR             R5, [R0]; s_warGameService
26ECEE:  STR             R1, [R5]
26ECF0:  LDR             R0, [R4]
26ECF2:  LDR             R2, [R0,#0x54]
26ECF4:  MOV             R0, R4
26ECF6:  BLX             R2
26ECF8:  STR             R0, [R5]
26ECFA:  LDR             R0, [R4]
26ECFC:  LDR.W           R1, [R0,#0x390]
26ED00:  MOV             R0, R4
26ED02:  BLX             R1
26ED04:  CBZ             R0, loc_26ED1E
26ED06:  LDR             R1, =(aOswrapper - 0x26ED12); "OSWrapper"
26ED08:  MOVS            R0, #3; prio
26ED0A:  LDR             R2, =(aJniExceptionLi - 0x26ED14); "JNI Exception (line %d):"
26ED0C:  MOVS            R3, #0xC8
26ED0E:  ADD             R1, PC; "OSWrapper"
26ED10:  ADD             R2, PC; "JNI Exception (line %d):"
26ED12:  BLX             __android_log_print
26ED16:  LDR             R0, [R4]
26ED18:  LDR             R1, [R0,#0x40]
26ED1A:  MOV             R0, R4
26ED1C:  BLX             R1
26ED1E:  LDR             R0, =(s_deleteAllSnapshots_ptr - 0x26ED26)
26ED20:  LDR             R1, =(s_warGameService_ptr - 0x26ED28)
26ED22:  ADD             R0, PC; s_deleteAllSnapshots_ptr
26ED24:  ADD             R1, PC; s_warGameService_ptr
26ED26:  LDR             R5, [R0]; s_deleteAllSnapshots
26ED28:  LDR             R6, [R1]; s_warGameService
26ED2A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26ED2E:  LDR             R2, [R5]
26ED30:  MOV             R4, R0
26ED32:  LDR             R1, [R6]
26ED34:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26ED38:  LDR             R0, [R4]
26ED3A:  LDR.W           R1, [R0,#0x390]
26ED3E:  MOV             R0, R4
26ED40:  BLX             R1
26ED42:  CBZ             R0, loc_26ED66
26ED44:  LDR             R1, =(aOswrapper - 0x26ED52); "OSWrapper"
26ED46:  MOVS            R0, #3; prio
26ED48:  LDR             R2, =(aJniExceptionLi - 0x26ED54); "JNI Exception (line %d):"
26ED4A:  MOVW            R3, #0x27A
26ED4E:  ADD             R1, PC; "OSWrapper"
26ED50:  ADD             R2, PC; "JNI Exception (line %d):"
26ED52:  BLX             __android_log_print
26ED56:  LDR             R0, [R4]
26ED58:  LDR             R1, [R0,#0x40]
26ED5A:  MOV             R0, R4
26ED5C:  POP.W           {R8}
26ED60:  POP.W           {R4-R7,LR}
26ED64:  BX              R1
26ED66:  POP.W           {R8}
26ED6A:  POP             {R4-R7,PC}
