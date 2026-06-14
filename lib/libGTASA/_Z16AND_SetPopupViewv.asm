; =========================================================
; Game Engine Function: _Z16AND_SetPopupViewv
; Address            : 0x27B60C - 0x27B6C6
; =========================================================

27B60C:  PUSH            {R4-R7,LR}
27B60E:  ADD             R7, SP, #0xC
27B610:  PUSH.W          {R8}
27B614:  LDR             R0, =(s_warGameService_ptr - 0x27B61A)
27B616:  ADD             R0, PC; s_warGameService_ptr
27B618:  LDR             R0, [R0]; s_warGameService
27B61A:  LDR             R0, [R0]
27B61C:  CBNZ            R0, loc_27B67A
27B61E:  LDR             R0, =(s_warGameService_ctor_ptr - 0x27B62A)
27B620:  LDR             R1, =(s_warGameService_class_ptr - 0x27B62C)
27B622:  LDR.W           R8, =(dword_6D81DC - 0x27B62E)
27B626:  ADD             R0, PC; s_warGameService_ctor_ptr
27B628:  ADD             R1, PC; s_warGameService_class_ptr
27B62A:  ADD             R8, PC; dword_6D81DC
27B62C:  LDR             R6, [R0]; s_warGameService_ctor
27B62E:  LDR             R5, [R1]; s_warGameService_class
27B630:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B634:  LDR.W           R3, [R8]
27B638:  MOV             R4, R0
27B63A:  LDR             R2, [R6]
27B63C:  LDR             R1, [R5]
27B63E:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
27B642:  MOV             R1, R0
27B644:  LDR             R0, =(s_warGameService_ptr - 0x27B64A)
27B646:  ADD             R0, PC; s_warGameService_ptr
27B648:  LDR             R5, [R0]; s_warGameService
27B64A:  STR             R1, [R5]
27B64C:  LDR             R0, [R4]
27B64E:  LDR             R2, [R0,#0x54]
27B650:  MOV             R0, R4
27B652:  BLX             R2
27B654:  STR             R0, [R5]
27B656:  LDR             R0, [R4]
27B658:  LDR.W           R1, [R0,#0x390]
27B65C:  MOV             R0, R4
27B65E:  BLX             R1
27B660:  CBZ             R0, loc_27B67A
27B662:  LDR             R1, =(aOswrapper - 0x27B66E); "OSWrapper"
27B664:  MOVS            R0, #3; prio
27B666:  LDR             R2, =(aJniExceptionLi - 0x27B670); "JNI Exception (line %d):"
27B668:  MOVS            R3, #0xC8
27B66A:  ADD             R1, PC; "OSWrapper"
27B66C:  ADD             R2, PC; "JNI Exception (line %d):"
27B66E:  BLX             __android_log_print
27B672:  LDR             R0, [R4]
27B674:  LDR             R1, [R0,#0x40]
27B676:  MOV             R0, R4
27B678:  BLX             R1
27B67A:  LDR             R0, =(s_setPopupView_ptr - 0x27B682)
27B67C:  LDR             R1, =(s_warGameService_ptr - 0x27B684)
27B67E:  ADD             R0, PC; s_setPopupView_ptr
27B680:  ADD             R1, PC; s_warGameService_ptr
27B682:  LDR             R5, [R0]; s_setPopupView
27B684:  LDR             R6, [R1]; s_warGameService
27B686:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B68A:  LDR             R2, [R5]
27B68C:  MOV             R4, R0
27B68E:  LDR             R1, [R6]
27B690:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27B694:  LDR             R0, [R4]
27B696:  LDR.W           R1, [R0,#0x390]
27B69A:  MOV             R0, R4
27B69C:  BLX             R1
27B69E:  CBZ             R0, loc_27B6C0
27B6A0:  LDR             R1, =(aOswrapper - 0x27B6AC); "OSWrapper"
27B6A2:  MOVS            R0, #3; prio
27B6A4:  LDR             R2, =(aJniExceptionLi - 0x27B6AE); "JNI Exception (line %d):"
27B6A6:  MOVS            R3, #0xE4
27B6A8:  ADD             R1, PC; "OSWrapper"
27B6AA:  ADD             R2, PC; "JNI Exception (line %d):"
27B6AC:  BLX             __android_log_print
27B6B0:  LDR             R0, [R4]
27B6B2:  LDR             R1, [R0,#0x40]
27B6B4:  MOV             R0, R4
27B6B6:  POP.W           {R8}
27B6BA:  POP.W           {R4-R7,LR}
27B6BE:  BX              R1
27B6C0:  POP.W           {R8}
27B6C4:  POP             {R4-R7,PC}
