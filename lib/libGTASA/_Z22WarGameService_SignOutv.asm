; =========================================================
; Game Engine Function: _Z22WarGameService_SignOutv
; Address            : 0x26D6EC - 0x26D7A8
; =========================================================

26D6EC:  PUSH            {R4-R7,LR}
26D6EE:  ADD             R7, SP, #0xC
26D6F0:  PUSH.W          {R8}
26D6F4:  LDR             R0, =(s_warGameService_ptr - 0x26D6FA)
26D6F6:  ADD             R0, PC; s_warGameService_ptr
26D6F8:  LDR             R0, [R0]; s_warGameService
26D6FA:  LDR             R0, [R0]
26D6FC:  CBNZ            R0, loc_26D75A
26D6FE:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26D70A)
26D700:  LDR             R1, =(s_warGameService_class_ptr - 0x26D70C)
26D702:  LDR.W           R8, =(dword_6D81DC - 0x26D70E)
26D706:  ADD             R0, PC; s_warGameService_ctor_ptr
26D708:  ADD             R1, PC; s_warGameService_class_ptr
26D70A:  ADD             R8, PC; dword_6D81DC
26D70C:  LDR             R6, [R0]; s_warGameService_ctor
26D70E:  LDR             R5, [R1]; s_warGameService_class
26D710:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D714:  LDR.W           R3, [R8]
26D718:  MOV             R4, R0
26D71A:  LDR             R2, [R6]
26D71C:  LDR             R1, [R5]
26D71E:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26D722:  MOV             R1, R0
26D724:  LDR             R0, =(s_warGameService_ptr - 0x26D72A)
26D726:  ADD             R0, PC; s_warGameService_ptr
26D728:  LDR             R5, [R0]; s_warGameService
26D72A:  STR             R1, [R5]
26D72C:  LDR             R0, [R4]
26D72E:  LDR             R2, [R0,#0x54]
26D730:  MOV             R0, R4
26D732:  BLX             R2
26D734:  STR             R0, [R5]
26D736:  LDR             R0, [R4]
26D738:  LDR.W           R1, [R0,#0x390]
26D73C:  MOV             R0, R4
26D73E:  BLX             R1
26D740:  CBZ             R0, loc_26D75A
26D742:  LDR             R1, =(aOswrapper - 0x26D74E); "OSWrapper"
26D744:  MOVS            R0, #3; prio
26D746:  LDR             R2, =(aJniExceptionLi - 0x26D750); "JNI Exception (line %d):"
26D748:  MOVS            R3, #0xC8
26D74A:  ADD             R1, PC; "OSWrapper"
26D74C:  ADD             R2, PC; "JNI Exception (line %d):"
26D74E:  BLX             __android_log_print
26D752:  LDR             R0, [R4]
26D754:  LDR             R1, [R0,#0x40]
26D756:  MOV             R0, R4
26D758:  BLX             R1
26D75A:  LDR             R0, =(s_signOut_ptr - 0x26D762)
26D75C:  LDR             R1, =(s_warGameService_ptr - 0x26D764)
26D75E:  ADD             R0, PC; s_signOut_ptr
26D760:  ADD             R1, PC; s_warGameService_ptr
26D762:  LDR             R5, [R0]; s_signOut
26D764:  LDR             R6, [R1]; s_warGameService
26D766:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D76A:  LDR             R2, [R5]
26D76C:  MOV             R4, R0
26D76E:  LDR             R1, [R6]
26D770:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26D774:  LDR             R0, [R4]
26D776:  LDR.W           R1, [R0,#0x390]
26D77A:  MOV             R0, R4
26D77C:  BLX             R1
26D77E:  CBZ             R0, loc_26D7A2
26D780:  LDR             R1, =(aOswrapper - 0x26D78E); "OSWrapper"
26D782:  MOVS            R0, #3; prio
26D784:  LDR             R2, =(aJniExceptionLi - 0x26D790); "JNI Exception (line %d):"
26D786:  MOV.W           R3, #0x126
26D78A:  ADD             R1, PC; "OSWrapper"
26D78C:  ADD             R2, PC; "JNI Exception (line %d):"
26D78E:  BLX             __android_log_print
26D792:  LDR             R0, [R4]
26D794:  LDR             R1, [R0,#0x40]
26D796:  MOV             R0, R4
26D798:  POP.W           {R8}
26D79C:  POP.W           {R4-R7,LR}
26D7A0:  BX              R1
26D7A2:  POP.W           {R8}
26D7A6:  POP             {R4-R7,PC}
