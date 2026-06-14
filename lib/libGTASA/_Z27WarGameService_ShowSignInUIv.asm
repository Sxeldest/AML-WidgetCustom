; =========================================================
; Game Engine Function: _Z27WarGameService_ShowSignInUIv
; Address            : 0x26D5F4 - 0x26D6B0
; =========================================================

26D5F4:  PUSH            {R4-R7,LR}
26D5F6:  ADD             R7, SP, #0xC
26D5F8:  PUSH.W          {R8}
26D5FC:  LDR             R0, =(s_warGameService_ptr - 0x26D602)
26D5FE:  ADD             R0, PC; s_warGameService_ptr
26D600:  LDR             R0, [R0]; s_warGameService
26D602:  LDR             R0, [R0]
26D604:  CBNZ            R0, loc_26D662
26D606:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26D612)
26D608:  LDR             R1, =(s_warGameService_class_ptr - 0x26D614)
26D60A:  LDR.W           R8, =(dword_6D81DC - 0x26D616)
26D60E:  ADD             R0, PC; s_warGameService_ctor_ptr
26D610:  ADD             R1, PC; s_warGameService_class_ptr
26D612:  ADD             R8, PC; dword_6D81DC
26D614:  LDR             R6, [R0]; s_warGameService_ctor
26D616:  LDR             R5, [R1]; s_warGameService_class
26D618:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D61C:  LDR.W           R3, [R8]
26D620:  MOV             R4, R0
26D622:  LDR             R2, [R6]
26D624:  LDR             R1, [R5]
26D626:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26D62A:  MOV             R1, R0
26D62C:  LDR             R0, =(s_warGameService_ptr - 0x26D632)
26D62E:  ADD             R0, PC; s_warGameService_ptr
26D630:  LDR             R5, [R0]; s_warGameService
26D632:  STR             R1, [R5]
26D634:  LDR             R0, [R4]
26D636:  LDR             R2, [R0,#0x54]
26D638:  MOV             R0, R4
26D63A:  BLX             R2
26D63C:  STR             R0, [R5]
26D63E:  LDR             R0, [R4]
26D640:  LDR.W           R1, [R0,#0x390]
26D644:  MOV             R0, R4
26D646:  BLX             R1
26D648:  CBZ             R0, loc_26D662
26D64A:  LDR             R1, =(aOswrapper - 0x26D656); "OSWrapper"
26D64C:  MOVS            R0, #3; prio
26D64E:  LDR             R2, =(aJniExceptionLi - 0x26D658); "JNI Exception (line %d):"
26D650:  MOVS            R3, #0xC8
26D652:  ADD             R1, PC; "OSWrapper"
26D654:  ADD             R2, PC; "JNI Exception (line %d):"
26D656:  BLX             __android_log_print
26D65A:  LDR             R0, [R4]
26D65C:  LDR             R1, [R0,#0x40]
26D65E:  MOV             R0, R4
26D660:  BLX             R1
26D662:  LDR             R0, =(s_showSignInUI_ptr - 0x26D66A)
26D664:  LDR             R1, =(s_warGameService_ptr - 0x26D66C)
26D666:  ADD             R0, PC; s_showSignInUI_ptr
26D668:  ADD             R1, PC; s_warGameService_ptr
26D66A:  LDR             R5, [R0]; s_showSignInUI
26D66C:  LDR             R6, [R1]; s_warGameService
26D66E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D672:  LDR             R2, [R5]
26D674:  MOV             R4, R0
26D676:  LDR             R1, [R6]
26D678:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26D67C:  LDR             R0, [R4]
26D67E:  LDR.W           R1, [R0,#0x390]
26D682:  MOV             R0, R4
26D684:  BLX             R1
26D686:  CBZ             R0, loc_26D6AA
26D688:  LDR             R1, =(aOswrapper - 0x26D696); "OSWrapper"
26D68A:  MOVS            R0, #3; prio
26D68C:  LDR             R2, =(aJniExceptionLi - 0x26D698); "JNI Exception (line %d):"
26D68E:  MOVW            R3, #0x11D
26D692:  ADD             R1, PC; "OSWrapper"
26D694:  ADD             R2, PC; "JNI Exception (line %d):"
26D696:  BLX             __android_log_print
26D69A:  LDR             R0, [R4]
26D69C:  LDR             R1, [R0,#0x40]
26D69E:  MOV             R0, R4
26D6A0:  POP.W           {R8}
26D6A4:  POP.W           {R4-R7,LR}
26D6A8:  BX              R1
26D6AA:  POP.W           {R8}
26D6AE:  POP             {R4-R7,PC}
