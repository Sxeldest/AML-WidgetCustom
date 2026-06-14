; =========================================================
; Game Engine Function: _Z13AND_LeaveRoomv
; Address            : 0x27B6F4 - 0x27B7AE
; =========================================================

27B6F4:  PUSH            {R4-R7,LR}
27B6F6:  ADD             R7, SP, #0xC
27B6F8:  PUSH.W          {R8}
27B6FC:  LDR             R0, =(s_warGameService_ptr - 0x27B702)
27B6FE:  ADD             R0, PC; s_warGameService_ptr
27B700:  LDR             R0, [R0]; s_warGameService
27B702:  LDR             R0, [R0]
27B704:  CBNZ            R0, loc_27B762
27B706:  LDR             R0, =(s_warGameService_ctor_ptr - 0x27B712)
27B708:  LDR             R1, =(s_warGameService_class_ptr - 0x27B714)
27B70A:  LDR.W           R8, =(dword_6D81DC - 0x27B716)
27B70E:  ADD             R0, PC; s_warGameService_ctor_ptr
27B710:  ADD             R1, PC; s_warGameService_class_ptr
27B712:  ADD             R8, PC; dword_6D81DC
27B714:  LDR             R6, [R0]; s_warGameService_ctor
27B716:  LDR             R5, [R1]; s_warGameService_class
27B718:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B71C:  LDR.W           R3, [R8]
27B720:  MOV             R4, R0
27B722:  LDR             R2, [R6]
27B724:  LDR             R1, [R5]
27B726:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
27B72A:  MOV             R1, R0
27B72C:  LDR             R0, =(s_warGameService_ptr - 0x27B732)
27B72E:  ADD             R0, PC; s_warGameService_ptr
27B730:  LDR             R5, [R0]; s_warGameService
27B732:  STR             R1, [R5]
27B734:  LDR             R0, [R4]
27B736:  LDR             R2, [R0,#0x54]
27B738:  MOV             R0, R4
27B73A:  BLX             R2
27B73C:  STR             R0, [R5]
27B73E:  LDR             R0, [R4]
27B740:  LDR.W           R1, [R0,#0x390]
27B744:  MOV             R0, R4
27B746:  BLX             R1
27B748:  CBZ             R0, loc_27B762
27B74A:  LDR             R1, =(aOswrapper - 0x27B756); "OSWrapper"
27B74C:  MOVS            R0, #3; prio
27B74E:  LDR             R2, =(aJniExceptionLi - 0x27B758); "JNI Exception (line %d):"
27B750:  MOVS            R3, #0xC8
27B752:  ADD             R1, PC; "OSWrapper"
27B754:  ADD             R2, PC; "JNI Exception (line %d):"
27B756:  BLX             __android_log_print
27B75A:  LDR             R0, [R4]
27B75C:  LDR             R1, [R0,#0x40]
27B75E:  MOV             R0, R4
27B760:  BLX             R1
27B762:  LDR             R0, =(s_leaveRoom_ptr - 0x27B76A)
27B764:  LDR             R1, =(s_warGameService_ptr - 0x27B76C)
27B766:  ADD             R0, PC; s_leaveRoom_ptr
27B768:  ADD             R1, PC; s_warGameService_ptr
27B76A:  LDR             R5, [R0]; s_leaveRoom
27B76C:  LDR             R6, [R1]; s_warGameService
27B76E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B772:  LDR             R2, [R5]
27B774:  MOV             R4, R0
27B776:  LDR             R1, [R6]
27B778:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27B77C:  LDR             R0, [R4]
27B77E:  LDR.W           R1, [R0,#0x390]
27B782:  MOV             R0, R4
27B784:  BLX             R1
27B786:  CBZ             R0, loc_27B7A8
27B788:  LDR             R1, =(aOswrapper - 0x27B794); "OSWrapper"
27B78A:  MOVS            R0, #3; prio
27B78C:  LDR             R2, =(aJniExceptionLi - 0x27B796); "JNI Exception (line %d):"
27B78E:  MOVS            R3, #0xEE
27B790:  ADD             R1, PC; "OSWrapper"
27B792:  ADD             R2, PC; "JNI Exception (line %d):"
27B794:  BLX             __android_log_print
27B798:  LDR             R0, [R4]
27B79A:  LDR             R1, [R0,#0x40]
27B79C:  MOV             R0, R4
27B79E:  POP.W           {R8}
27B7A2:  POP.W           {R4-R7,LR}
27B7A6:  BX              R1
27B7A8:  POP.W           {R8}
27B7AC:  POP             {R4-R7,PC}
