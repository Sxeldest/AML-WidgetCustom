; =========================================================
; Game Engine Function: _Z28WarGameService_GetPlayerNamev
; Address            : 0x26F484 - 0x26F578
; =========================================================

26F484:  PUSH            {R4-R7,LR}
26F486:  ADD             R7, SP, #0xC
26F488:  PUSH.W          {R8,R9,R11}
26F48C:  LDR             R0, =(s_warGameService_ptr - 0x26F492)
26F48E:  ADD             R0, PC; s_warGameService_ptr
26F490:  LDR             R0, [R0]; s_warGameService
26F492:  LDR             R0, [R0]
26F494:  CBNZ            R0, loc_26F4F2
26F496:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26F4A2)
26F498:  LDR             R1, =(s_warGameService_class_ptr - 0x26F4A4)
26F49A:  LDR.W           R8, =(dword_6D81DC - 0x26F4A6)
26F49E:  ADD             R0, PC; s_warGameService_ctor_ptr
26F4A0:  ADD             R1, PC; s_warGameService_class_ptr
26F4A2:  ADD             R8, PC; dword_6D81DC
26F4A4:  LDR             R6, [R0]; s_warGameService_ctor
26F4A6:  LDR             R5, [R1]; s_warGameService_class
26F4A8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26F4AC:  LDR.W           R3, [R8]
26F4B0:  MOV             R4, R0
26F4B2:  LDR             R2, [R6]
26F4B4:  LDR             R1, [R5]
26F4B6:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26F4BA:  MOV             R1, R0
26F4BC:  LDR             R0, =(s_warGameService_ptr - 0x26F4C2)
26F4BE:  ADD             R0, PC; s_warGameService_ptr
26F4C0:  LDR             R5, [R0]; s_warGameService
26F4C2:  STR             R1, [R5]
26F4C4:  LDR             R0, [R4]
26F4C6:  LDR             R2, [R0,#0x54]
26F4C8:  MOV             R0, R4
26F4CA:  BLX             R2
26F4CC:  STR             R0, [R5]
26F4CE:  LDR             R0, [R4]
26F4D0:  LDR.W           R1, [R0,#0x390]
26F4D4:  MOV             R0, R4
26F4D6:  BLX             R1
26F4D8:  CBZ             R0, loc_26F4F2
26F4DA:  LDR             R1, =(aOswrapper - 0x26F4E6); "OSWrapper"
26F4DC:  MOVS            R0, #3; prio
26F4DE:  LDR             R2, =(aJniExceptionLi - 0x26F4E8); "JNI Exception (line %d):"
26F4E0:  MOVS            R3, #0xC8
26F4E2:  ADD             R1, PC; "OSWrapper"
26F4E4:  ADD             R2, PC; "JNI Exception (line %d):"
26F4E6:  BLX             __android_log_print
26F4EA:  LDR             R0, [R4]
26F4EC:  LDR             R1, [R0,#0x40]
26F4EE:  MOV             R0, R4
26F4F0:  BLX             R1
26F4F2:  LDR             R0, =(s_getPlayerName_ptr - 0x26F4FA)
26F4F4:  LDR             R1, =(s_warGameService_ptr - 0x26F4FC)
26F4F6:  ADD             R0, PC; s_getPlayerName_ptr
26F4F8:  ADD             R1, PC; s_warGameService_ptr
26F4FA:  LDR             R5, [R0]; s_getPlayerName
26F4FC:  LDR             R6, [R1]; s_warGameService
26F4FE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26F502:  LDR             R2, [R5]
26F504:  MOV             R4, R0
26F506:  LDR             R1, [R6]
26F508:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26F50C:  MOV             R6, R0
26F50E:  CBZ             R6, loc_26F56C
26F510:  LDR             R0, [R4]
26F512:  MOV             R1, R6
26F514:  MOVS            R2, #0
26F516:  LDR.W           R3, [R0,#0x2A4]
26F51A:  MOV             R0, R4
26F51C:  BLX             R3
26F51E:  MOV             R9, R0
26F520:  BLX             strlen
26F524:  ADDS            R5, R0, #1
26F526:  MOV             R0, R5; byte_count
26F528:  BLX             malloc
26F52C:  MOV             R1, R9; char *
26F52E:  MOV             R2, R5; size_t
26F530:  MOV             R8, R0
26F532:  BLX             strncpy
26F536:  LDR             R0, [R4]
26F538:  MOV             R1, R6
26F53A:  MOV             R2, R9
26F53C:  LDR.W           R3, [R0,#0x2A8]
26F540:  MOV             R0, R4
26F542:  BLX             R3
26F544:  LDR             R0, [R4]
26F546:  LDR.W           R1, [R0,#0x390]
26F54A:  MOV             R0, R4
26F54C:  BLX             R1
26F54E:  CBZ             R0, loc_26F570
26F550:  LDR             R1, =(aOswrapper - 0x26F55E); "OSWrapper"
26F552:  MOVS            R0, #3; prio
26F554:  LDR             R2, =(aJniExceptionLi - 0x26F560); "JNI Exception (line %d):"
26F556:  MOVW            R3, #0x2E1
26F55A:  ADD             R1, PC; "OSWrapper"
26F55C:  ADD             R2, PC; "JNI Exception (line %d):"
26F55E:  BLX             __android_log_print
26F562:  LDR             R0, [R4]
26F564:  LDR             R1, [R0,#0x40]
26F566:  MOV             R0, R4
26F568:  BLX             R1
26F56A:  B               loc_26F570
26F56C:  ADR.W           R8, aDefault_0; "default"
26F570:  MOV             R0, R8
26F572:  POP.W           {R8,R9,R11}
26F576:  POP             {R4-R7,PC}
