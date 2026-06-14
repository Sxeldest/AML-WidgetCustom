; =========================================================
; Game Engine Function: _Z37WarGameService_CancelLeaderboardQueryi
; Address            : 0x26EF94 - 0x26F054
; =========================================================

26EF94:  PUSH            {R4-R7,LR}
26EF96:  ADD             R7, SP, #0xC
26EF98:  PUSH.W          {R8,R9,R11}
26EF9C:  MOV             R9, R0
26EF9E:  LDR             R0, =(s_warGameService_ptr - 0x26EFA4)
26EFA0:  ADD             R0, PC; s_warGameService_ptr
26EFA2:  LDR             R0, [R0]; s_warGameService
26EFA4:  LDR             R0, [R0]
26EFA6:  CBNZ            R0, loc_26F004
26EFA8:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26EFB4)
26EFAA:  LDR             R1, =(s_warGameService_class_ptr - 0x26EFB6)
26EFAC:  LDR.W           R8, =(dword_6D81DC - 0x26EFB8)
26EFB0:  ADD             R0, PC; s_warGameService_ctor_ptr
26EFB2:  ADD             R1, PC; s_warGameService_class_ptr
26EFB4:  ADD             R8, PC; dword_6D81DC
26EFB6:  LDR             R6, [R0]; s_warGameService_ctor
26EFB8:  LDR             R4, [R1]; s_warGameService_class
26EFBA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EFBE:  LDR.W           R3, [R8]
26EFC2:  MOV             R5, R0
26EFC4:  LDR             R2, [R6]
26EFC6:  LDR             R1, [R4]
26EFC8:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26EFCC:  MOV             R1, R0
26EFCE:  LDR             R0, =(s_warGameService_ptr - 0x26EFD4)
26EFD0:  ADD             R0, PC; s_warGameService_ptr
26EFD2:  LDR             R4, [R0]; s_warGameService
26EFD4:  STR             R1, [R4]
26EFD6:  LDR             R0, [R5]
26EFD8:  LDR             R2, [R0,#0x54]
26EFDA:  MOV             R0, R5
26EFDC:  BLX             R2
26EFDE:  STR             R0, [R4]
26EFE0:  LDR             R0, [R5]
26EFE2:  LDR.W           R1, [R0,#0x390]
26EFE6:  MOV             R0, R5
26EFE8:  BLX             R1
26EFEA:  CBZ             R0, loc_26F004
26EFEC:  LDR             R1, =(aOswrapper - 0x26EFF8); "OSWrapper"
26EFEE:  MOVS            R0, #3; prio
26EFF0:  LDR             R2, =(aJniExceptionLi - 0x26EFFA); "JNI Exception (line %d):"
26EFF2:  MOVS            R3, #0xC8
26EFF4:  ADD             R1, PC; "OSWrapper"
26EFF6:  ADD             R2, PC; "JNI Exception (line %d):"
26EFF8:  BLX             __android_log_print
26EFFC:  LDR             R0, [R5]
26EFFE:  LDR             R1, [R0,#0x40]
26F000:  MOV             R0, R5
26F002:  BLX             R1
26F004:  LDR             R0, =(s_CancelLeaderboardQueryMethod_ptr - 0x26F00C)
26F006:  LDR             R1, =(s_warGameService_ptr - 0x26F00E)
26F008:  ADD             R0, PC; s_CancelLeaderboardQueryMethod_ptr
26F00A:  ADD             R1, PC; s_warGameService_ptr
26F00C:  LDR             R4, [R0]; s_CancelLeaderboardQueryMethod
26F00E:  LDR             R6, [R1]; s_warGameService
26F010:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26F014:  LDR             R2, [R4]
26F016:  MOV             R3, R9
26F018:  LDR             R1, [R6]
26F01A:  MOV             R5, R0
26F01C:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26F020:  LDR             R0, [R5]
26F022:  LDR.W           R1, [R0,#0x390]
26F026:  MOV             R0, R5
26F028:  BLX             R1
26F02A:  CBZ             R0, loc_26F04E
26F02C:  LDR             R1, =(aOswrapper - 0x26F03A); "OSWrapper"
26F02E:  MOVS            R0, #3; prio
26F030:  LDR             R2, =(aJniExceptionLi - 0x26F03C); "JNI Exception (line %d):"
26F032:  MOV.W           R3, #0x1A2
26F036:  ADD             R1, PC; "OSWrapper"
26F038:  ADD             R2, PC; "JNI Exception (line %d):"
26F03A:  BLX             __android_log_print
26F03E:  LDR             R0, [R5]
26F040:  LDR             R1, [R0,#0x40]
26F042:  MOV             R0, R5
26F044:  POP.W           {R8,R9,R11}
26F048:  POP.W           {R4-R7,LR}
26F04C:  BX              R1
26F04E:  POP.W           {R8,R9,R11}
26F052:  POP             {R4-R7,PC}
