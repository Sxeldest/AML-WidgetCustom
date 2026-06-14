; =========================================================
; Game Engine Function: _Z26WarGameService_SaveToCloudPKhi
; Address            : 0x26E4D4 - 0x26E5CE
; =========================================================

26E4D4:  PUSH            {R4-R7,LR}
26E4D6:  ADD             R7, SP, #0xC
26E4D8:  PUSH.W          {R8-R11}
26E4DC:  SUB             SP, SP, #4
26E4DE:  MOV             R8, R0
26E4E0:  LDR             R0, =(s_warGameService_ptr - 0x26E4E8)
26E4E2:  MOV             R11, R1
26E4E4:  ADD             R0, PC; s_warGameService_ptr
26E4E6:  LDR             R0, [R0]; s_warGameService
26E4E8:  LDR             R0, [R0]
26E4EA:  CBNZ            R0, loc_26E54C
26E4EC:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E4F8)
26E4EE:  LDR             R1, =(s_warGameService_class_ptr - 0x26E4FA)
26E4F0:  LDR.W           R9, =(dword_6D81DC - 0x26E4FC)
26E4F4:  ADD             R0, PC; s_warGameService_ctor_ptr
26E4F6:  ADD             R1, PC; s_warGameService_class_ptr
26E4F8:  ADD             R9, PC; dword_6D81DC
26E4FA:  LDR.W           R10, [R0]; s_warGameService_ctor
26E4FE:  LDR             R5, [R1]; s_warGameService_class
26E500:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E504:  LDR.W           R3, [R9]
26E508:  MOV             R6, R0
26E50A:  LDR.W           R2, [R10]
26E50E:  LDR             R1, [R5]
26E510:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E514:  MOV             R1, R0
26E516:  LDR             R0, =(s_warGameService_ptr - 0x26E51C)
26E518:  ADD             R0, PC; s_warGameService_ptr
26E51A:  LDR             R5, [R0]; s_warGameService
26E51C:  STR             R1, [R5]
26E51E:  LDR             R0, [R6]
26E520:  LDR             R2, [R0,#0x54]
26E522:  MOV             R0, R6
26E524:  BLX             R2
26E526:  STR             R0, [R5]
26E528:  LDR             R0, [R6]
26E52A:  LDR.W           R1, [R0,#0x390]
26E52E:  MOV             R0, R6
26E530:  BLX             R1
26E532:  CBZ             R0, loc_26E54C
26E534:  LDR             R1, =(aOswrapper - 0x26E540); "OSWrapper"
26E536:  MOVS            R0, #3; prio
26E538:  LDR             R2, =(aJniExceptionLi - 0x26E542); "JNI Exception (line %d):"
26E53A:  MOVS            R3, #0xC8
26E53C:  ADD             R1, PC; "OSWrapper"
26E53E:  ADD             R2, PC; "JNI Exception (line %d):"
26E540:  BLX             __android_log_print
26E544:  LDR             R0, [R6]
26E546:  LDR             R1, [R0,#0x40]
26E548:  MOV             R0, R6
26E54A:  BLX             R1
26E54C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E550:  MOV             R6, R0
26E552:  MOV             R1, R11
26E554:  LDR             R0, [R6]
26E556:  LDR.W           R2, [R0,#0x2C0]
26E55A:  MOV             R0, R6
26E55C:  BLX             R2
26E55E:  MOV             R5, R0
26E560:  LDR             R0, [R6]
26E562:  MOV             R1, R5
26E564:  MOVS            R2, #0
26E566:  MOV             R3, R11
26E568:  LDR.W           R4, [R0,#0x340]
26E56C:  MOV             R0, R6
26E56E:  STR.W           R8, [SP,#0x20+var_20]
26E572:  BLX             R4
26E574:  LDR             R0, =(s_saveToCloud_ptr - 0x26E57E)
26E576:  MOV             R3, R5
26E578:  LDR             R1, =(s_warGameService_ptr - 0x26E580)
26E57A:  ADD             R0, PC; s_saveToCloud_ptr
26E57C:  ADD             R1, PC; s_warGameService_ptr
26E57E:  LDR             R0, [R0]; s_saveToCloud
26E580:  LDR             R1, [R1]; s_warGameService
26E582:  LDR             R2, [R0]
26E584:  MOV             R0, R6
26E586:  LDR             R1, [R1]
26E588:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E58C:  LDR             R0, [R6]
26E58E:  MOV             R1, R5
26E590:  LDR             R2, [R0,#0x5C]
26E592:  MOV             R0, R6
26E594:  BLX             R2
26E596:  LDR             R0, [R6]
26E598:  LDR.W           R1, [R0,#0x390]
26E59C:  MOV             R0, R6
26E59E:  BLX             R1
26E5A0:  CBZ             R0, loc_26E5C6
26E5A2:  LDR             R1, =(aOswrapper - 0x26E5B0); "OSWrapper"
26E5A4:  MOVS            R0, #3; prio
26E5A6:  LDR             R2, =(aJniExceptionLi - 0x26E5B2); "JNI Exception (line %d):"
26E5A8:  MOV.W           R3, #0x1B2
26E5AC:  ADD             R1, PC; "OSWrapper"
26E5AE:  ADD             R2, PC; "JNI Exception (line %d):"
26E5B0:  BLX             __android_log_print
26E5B4:  LDR             R0, [R6]
26E5B6:  LDR             R1, [R0,#0x40]
26E5B8:  MOV             R0, R6
26E5BA:  ADD             SP, SP, #4
26E5BC:  POP.W           {R8-R11}
26E5C0:  POP.W           {R4-R7,LR}
26E5C4:  BX              R1
26E5C6:  ADD             SP, SP, #4
26E5C8:  POP.W           {R8-R11}
26E5CC:  POP             {R4-R7,PC}
