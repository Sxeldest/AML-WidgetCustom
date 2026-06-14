; =========================================================
; Game Engine Function: _Z20AND_UpdateMuliplayerv
; Address            : 0x27B7DC - 0x27B896
; =========================================================

27B7DC:  PUSH            {R4-R7,LR}
27B7DE:  ADD             R7, SP, #0xC
27B7E0:  PUSH.W          {R8}
27B7E4:  LDR             R0, =(s_warGameService_ptr - 0x27B7EA)
27B7E6:  ADD             R0, PC; s_warGameService_ptr
27B7E8:  LDR             R0, [R0]; s_warGameService
27B7EA:  LDR             R0, [R0]
27B7EC:  CBNZ            R0, loc_27B84A
27B7EE:  LDR             R0, =(s_warGameService_ctor_ptr - 0x27B7FA)
27B7F0:  LDR             R1, =(s_warGameService_class_ptr - 0x27B7FC)
27B7F2:  LDR.W           R8, =(dword_6D81DC - 0x27B7FE)
27B7F6:  ADD             R0, PC; s_warGameService_ctor_ptr
27B7F8:  ADD             R1, PC; s_warGameService_class_ptr
27B7FA:  ADD             R8, PC; dword_6D81DC
27B7FC:  LDR             R6, [R0]; s_warGameService_ctor
27B7FE:  LDR             R5, [R1]; s_warGameService_class
27B800:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B804:  LDR.W           R3, [R8]
27B808:  MOV             R4, R0
27B80A:  LDR             R2, [R6]
27B80C:  LDR             R1, [R5]
27B80E:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
27B812:  MOV             R1, R0
27B814:  LDR             R0, =(s_warGameService_ptr - 0x27B81A)
27B816:  ADD             R0, PC; s_warGameService_ptr
27B818:  LDR             R5, [R0]; s_warGameService
27B81A:  STR             R1, [R5]
27B81C:  LDR             R0, [R4]
27B81E:  LDR             R2, [R0,#0x54]
27B820:  MOV             R0, R4
27B822:  BLX             R2
27B824:  STR             R0, [R5]
27B826:  LDR             R0, [R4]
27B828:  LDR.W           R1, [R0,#0x390]
27B82C:  MOV             R0, R4
27B82E:  BLX             R1
27B830:  CBZ             R0, loc_27B84A
27B832:  LDR             R1, =(aOswrapper - 0x27B83E); "OSWrapper"
27B834:  MOVS            R0, #3; prio
27B836:  LDR             R2, =(aJniExceptionLi - 0x27B840); "JNI Exception (line %d):"
27B838:  MOVS            R3, #0xC8
27B83A:  ADD             R1, PC; "OSWrapper"
27B83C:  ADD             R2, PC; "JNI Exception (line %d):"
27B83E:  BLX             __android_log_print
27B842:  LDR             R0, [R4]
27B844:  LDR             R1, [R0,#0x40]
27B846:  MOV             R0, R4
27B848:  BLX             R1
27B84A:  LDR             R0, =(s_updateMuliplayer_ptr - 0x27B852)
27B84C:  LDR             R1, =(s_warGameService_ptr - 0x27B854)
27B84E:  ADD             R0, PC; s_updateMuliplayer_ptr
27B850:  ADD             R1, PC; s_warGameService_ptr
27B852:  LDR             R5, [R0]; s_updateMuliplayer
27B854:  LDR             R6, [R1]; s_warGameService
27B856:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B85A:  LDR             R2, [R5]
27B85C:  MOV             R4, R0
27B85E:  LDR             R1, [R6]
27B860:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27B864:  LDR             R0, [R4]
27B866:  LDR.W           R1, [R0,#0x390]
27B86A:  MOV             R0, R4
27B86C:  BLX             R1
27B86E:  CBZ             R0, loc_27B890
27B870:  LDR             R1, =(aOswrapper - 0x27B87C); "OSWrapper"
27B872:  MOVS            R0, #3; prio
27B874:  LDR             R2, =(aJniExceptionLi - 0x27B87E); "JNI Exception (line %d):"
27B876:  MOVS            R3, #0xF6
27B878:  ADD             R1, PC; "OSWrapper"
27B87A:  ADD             R2, PC; "JNI Exception (line %d):"
27B87C:  BLX             __android_log_print
27B880:  LDR             R0, [R4]
27B882:  LDR             R1, [R0,#0x40]
27B884:  MOV             R0, R4
27B886:  POP.W           {R8}
27B88A:  POP.W           {R4-R7,LR}
27B88E:  BX              R1
27B890:  POP.W           {R8}
27B894:  POP             {R4-R7,PC}
