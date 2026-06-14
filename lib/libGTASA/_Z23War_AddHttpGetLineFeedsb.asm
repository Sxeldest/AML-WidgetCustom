; =========================================================
; Game Engine Function: _Z23War_AddHttpGetLineFeedsb
; Address            : 0x27C3EC - 0x27C47E
; =========================================================

27C3EC:  PUSH            {R4-R7,LR}
27C3EE:  ADD             R7, SP, #0xC
27C3F0:  PUSH.W          {R8,R9,R11}
27C3F4:  MOV             R9, R0
27C3F6:  LDR             R0, =(s_warHttp_ptr - 0x27C3FC)
27C3F8:  ADD             R0, PC; s_warHttp_ptr
27C3FA:  LDR             R0, [R0]; s_warHttp
27C3FC:  LDR             R0, [R0]
27C3FE:  CBNZ            R0, loc_27C45C
27C400:  LDR             R0, =(s_warHttp_ctor_ptr - 0x27C40C)
27C402:  LDR             R1, =(s_warHttp_class_ptr - 0x27C40E)
27C404:  LDR.W           R8, =(dword_6D81DC - 0x27C410)
27C408:  ADD             R0, PC; s_warHttp_ctor_ptr
27C40A:  ADD             R1, PC; s_warHttp_class_ptr
27C40C:  ADD             R8, PC; dword_6D81DC
27C40E:  LDR             R6, [R0]; s_warHttp_ctor
27C410:  LDR             R4, [R1]; s_warHttp_class
27C412:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27C416:  LDR.W           R3, [R8]
27C41A:  MOV             R5, R0
27C41C:  LDR             R2, [R6]
27C41E:  LDR             R1, [R4]
27C420:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
27C424:  MOV             R1, R0
27C426:  LDR             R0, =(s_warHttp_ptr - 0x27C42C)
27C428:  ADD             R0, PC; s_warHttp_ptr
27C42A:  LDR             R4, [R0]; s_warHttp
27C42C:  STR             R1, [R4]
27C42E:  LDR             R0, [R5]
27C430:  LDR             R2, [R0,#0x54]
27C432:  MOV             R0, R5
27C434:  BLX             R2
27C436:  STR             R0, [R4]
27C438:  LDR             R0, [R5]
27C43A:  LDR.W           R1, [R0,#0x390]
27C43E:  MOV             R0, R5
27C440:  BLX             R1
27C442:  CBZ             R0, loc_27C45C
27C444:  LDR             R1, =(aOswrapper - 0x27C450); "OSWrapper"
27C446:  MOVS            R0, #3; prio
27C448:  LDR             R2, =(aJniExceptionLi - 0x27C452); "JNI Exception (line %d):"
27C44A:  MOVS            R3, #0x31 ; '1'
27C44C:  ADD             R1, PC; "OSWrapper"
27C44E:  ADD             R2, PC; "JNI Exception (line %d):"
27C450:  BLX             __android_log_print
27C454:  LDR             R0, [R5]
27C456:  LDR             R1, [R0,#0x40]
27C458:  MOV             R0, R5
27C45A:  BLX             R1
27C45C:  LDR             R0, =(s_warAddLineFeeds_ptr - 0x27C464)
27C45E:  LDR             R1, =(s_warHttp_ptr - 0x27C466)
27C460:  ADD             R0, PC; s_warAddLineFeeds_ptr
27C462:  ADD             R1, PC; s_warHttp_ptr
27C464:  LDR             R4, [R0]; s_warAddLineFeeds
27C466:  LDR             R5, [R1]; s_warHttp
27C468:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27C46C:  LDR             R2, [R4]
27C46E:  MOV             R3, R9
27C470:  LDR             R1, [R5]
27C472:  POP.W           {R8,R9,R11}
27C476:  POP.W           {R4-R7,LR}
27C47A:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
