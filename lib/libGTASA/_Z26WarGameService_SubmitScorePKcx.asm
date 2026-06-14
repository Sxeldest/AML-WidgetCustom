; =========================================================
; Game Engine Function: _Z26WarGameService_SubmitScorePKcx
; Address            : 0x26E3BC - 0x26E4A4
; =========================================================

26E3BC:  PUSH            {R4-R7,LR}
26E3BE:  ADD             R7, SP, #0xC
26E3C0:  PUSH.W          {R8-R11}
26E3C4:  SUB             SP, SP, #0xC
26E3C6:  MOV             R11, R0
26E3C8:  LDR             R0, =(s_warGameService_ptr - 0x26E3D2)
26E3CA:  MOV             R8, R3
26E3CC:  MOV             R10, R2
26E3CE:  ADD             R0, PC; s_warGameService_ptr
26E3D0:  LDR             R0, [R0]; s_warGameService
26E3D2:  LDR             R0, [R0]
26E3D4:  CBNZ            R0, loc_26E432
26E3D6:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E3E2)
26E3D8:  LDR             R1, =(s_warGameService_class_ptr - 0x26E3E4)
26E3DA:  LDR.W           R9, =(dword_6D81DC - 0x26E3E6)
26E3DE:  ADD             R0, PC; s_warGameService_ctor_ptr
26E3E0:  ADD             R1, PC; s_warGameService_class_ptr
26E3E2:  ADD             R9, PC; dword_6D81DC
26E3E4:  LDR             R5, [R0]; s_warGameService_ctor
26E3E6:  LDR             R6, [R1]; s_warGameService_class
26E3E8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E3EC:  LDR.W           R3, [R9]
26E3F0:  MOV             R4, R0
26E3F2:  LDR             R2, [R5]
26E3F4:  LDR             R1, [R6]
26E3F6:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E3FA:  MOV             R1, R0
26E3FC:  LDR             R0, =(s_warGameService_ptr - 0x26E402)
26E3FE:  ADD             R0, PC; s_warGameService_ptr
26E400:  LDR             R5, [R0]; s_warGameService
26E402:  STR             R1, [R5]
26E404:  LDR             R0, [R4]
26E406:  LDR             R2, [R0,#0x54]
26E408:  MOV             R0, R4
26E40A:  BLX             R2
26E40C:  STR             R0, [R5]
26E40E:  LDR             R0, [R4]
26E410:  LDR.W           R1, [R0,#0x390]
26E414:  MOV             R0, R4
26E416:  BLX             R1
26E418:  CBZ             R0, loc_26E432
26E41A:  LDR             R1, =(aOswrapper - 0x26E426); "OSWrapper"
26E41C:  MOVS            R0, #3; prio
26E41E:  LDR             R2, =(aJniExceptionLi - 0x26E428); "JNI Exception (line %d):"
26E420:  MOVS            R3, #0xC8
26E422:  ADD             R1, PC; "OSWrapper"
26E424:  ADD             R2, PC; "JNI Exception (line %d):"
26E426:  BLX             __android_log_print
26E42A:  LDR             R0, [R4]
26E42C:  LDR             R1, [R0,#0x40]
26E42E:  MOV             R0, R4
26E430:  BLX             R1
26E432:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E436:  MOV             R4, R0
26E438:  MOV             R1, R11
26E43A:  LDR             R0, [R4]
26E43C:  LDR.W           R2, [R0,#0x29C]
26E440:  MOV             R0, R4
26E442:  BLX             R2
26E444:  MOV             R6, R0
26E446:  LDR             R0, =(s_submitScore_ptr - 0x26E450)
26E448:  LDR             R1, =(s_warGameService_ptr - 0x26E452)
26E44A:  MOV             R3, R6
26E44C:  ADD             R0, PC; s_submitScore_ptr
26E44E:  ADD             R1, PC; s_warGameService_ptr
26E450:  LDR             R0, [R0]; s_submitScore
26E452:  LDR             R1, [R1]; s_warGameService
26E454:  LDR             R2, [R0]
26E456:  MOV             R0, R4
26E458:  LDR             R1, [R1]
26E45A:  STRD.W          R10, R8, [SP,#0x28+var_28]
26E45E:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E462:  LDR             R0, [R4]
26E464:  MOV             R1, R6
26E466:  LDR             R2, [R0,#0x5C]
26E468:  MOV             R0, R4
26E46A:  BLX             R2
26E46C:  LDR             R0, [R4]
26E46E:  LDR.W           R1, [R0,#0x390]
26E472:  MOV             R0, R4
26E474:  BLX             R1
26E476:  CBZ             R0, loc_26E49C
26E478:  LDR             R1, =(aOswrapper - 0x26E486); "OSWrapper"
26E47A:  MOVS            R0, #3; prio
26E47C:  LDR             R2, =(aJniExceptionLi - 0x26E488); "JNI Exception (line %d):"
26E47E:  MOVW            R3, #0x18B
26E482:  ADD             R1, PC; "OSWrapper"
26E484:  ADD             R2, PC; "JNI Exception (line %d):"
26E486:  BLX             __android_log_print
26E48A:  LDR             R0, [R4]
26E48C:  LDR             R1, [R0,#0x40]
26E48E:  MOV             R0, R4
26E490:  ADD             SP, SP, #0xC
26E492:  POP.W           {R8-R11}
26E496:  POP.W           {R4-R7,LR}
26E49A:  BX              R1
26E49C:  ADD             SP, SP, #0xC
26E49E:  POP.W           {R8-R11}
26E4A2:  POP             {R4-R7,PC}
