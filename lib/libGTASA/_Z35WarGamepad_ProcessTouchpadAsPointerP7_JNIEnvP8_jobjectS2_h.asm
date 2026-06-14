; =========================================================
; Game Engine Function: _Z35WarGamepad_ProcessTouchpadAsPointerP7_JNIEnvP8_jobjectS2_h
; Address            : 0x27A4D8 - 0x27A55C
; =========================================================

27A4D8:  PUSH            {R4-R7,LR}
27A4DA:  ADD             R7, SP, #0xC
27A4DC:  PUSH.W          {R8}
27A4E0:  MOV             R4, R0
27A4E2:  MOV             R6, R2
27A4E4:  LDR             R0, [R4]
27A4E6:  ADR             R1, aAndroidViewVie; "android/view/ViewRoot"
27A4E8:  MOV             R8, R3
27A4EA:  LDR             R2, [R0,#0x18]
27A4EC:  MOV             R0, R4
27A4EE:  BLX             R2
27A4F0:  MOV             R1, R0
27A4F2:  CBZ             R1, loc_27A54C
27A4F4:  LDR             R0, [R4]
27A4F6:  ADR             R2, aSetprocessposi; "setProcessPositionEvents"
27A4F8:  LDR             R3, =(aZV - 0x27A502); "(Z)V"
27A4FA:  LDR.W           R5, [R0,#0x84]
27A4FE:  ADD             R3, PC; "(Z)V"
27A500:  MOV             R0, R4
27A502:  BLX             R5
27A504:  MOV             R2, R0
27A506:  CMP             R2, #0
27A508:  BEQ             loc_27A528
27A50A:  MOV             R0, R4
27A50C:  MOV             R1, R6
27A50E:  MOV             R3, R8
27A510:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27A514:  LDR             R0, [R4]
27A516:  LDR.W           R1, [R0,#0x390]
27A51A:  MOV             R0, R4
27A51C:  BLX             R1
27A51E:  CBZ             R0, loc_27A554
27A520:  LDR             R1, =(aComWardrumstud_2+0x19 - 0x27A528); "WarGamepad"
27A522:  ADR             R2, aSSetprocesspos; "%s - setProcessPositionEvents() threw e"...
27A524:  ADD             R1, PC; "WarGamepad"
27A526:  B               loc_27A53C
27A528:  LDR             R0, [R4]
27A52A:  LDR.W           R1, [R0,#0x390]
27A52E:  MOV             R0, R4
27A530:  BLX             R1
27A532:  CBZ             R0, loc_27A54C
27A534:  LDR             R1, =(aComWardrumstud_2+0x19 - 0x27A53C); "WarGamepad"
27A536:  LDR             R2, =(aSGetmethodidSe - 0x27A53E); "%s - GetMethodID( 'setProcessPositionEv"...
27A538:  ADD             R1, PC; "WarGamepad" ; tag
27A53A:  ADD             R2, PC; "%s - GetMethodID( 'setProcessPositionEv"...
27A53C:  ADR             R3, sub_27A5CC
27A53E:  MOVS            R0, #3; prio
27A540:  BLX             __android_log_print
27A544:  LDR             R0, [R4]
27A546:  LDR             R1, [R0,#0x44]
27A548:  MOV             R0, R4
27A54A:  BLX             R1
27A54C:  MOVS            R0, #0
27A54E:  POP.W           {R8}
27A552:  POP             {R4-R7,PC}
27A554:  MOVS            R0, #1
27A556:  POP.W           {R8}
27A55A:  POP             {R4-R7,PC}
