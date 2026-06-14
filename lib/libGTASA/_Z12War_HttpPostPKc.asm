; =========================================================
; Game Engine Function: _Z12War_HttpPostPKc
; Address            : 0x26C85C - 0x26C960
; =========================================================

26C85C:  PUSH            {R4-R7,LR}
26C85E:  ADD             R7, SP, #0xC
26C860:  PUSH.W          {R8,R9,R11}
26C864:  MOV             R9, R0
26C866:  LDR             R0, =(s_warHttp_ptr - 0x26C86C)
26C868:  ADD             R0, PC; s_warHttp_ptr
26C86A:  LDR             R0, [R0]; s_warHttp
26C86C:  LDR             R0, [R0]
26C86E:  CBNZ            R0, loc_26C8CC
26C870:  LDR             R0, =(s_warHttp_ctor_ptr - 0x26C87C)
26C872:  LDR             R1, =(s_warHttp_class_ptr - 0x26C87E)
26C874:  LDR.W           R8, =(dword_6D81DC - 0x26C880)
26C878:  ADD             R0, PC; s_warHttp_ctor_ptr
26C87A:  ADD             R1, PC; s_warHttp_class_ptr
26C87C:  ADD             R8, PC; dword_6D81DC
26C87E:  LDR             R6, [R0]; s_warHttp_ctor
26C880:  LDR             R5, [R1]; s_warHttp_class
26C882:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C886:  LDR.W           R3, [R8]
26C88A:  MOV             R4, R0
26C88C:  LDR             R2, [R6]
26C88E:  LDR             R1, [R5]
26C890:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26C894:  MOV             R1, R0
26C896:  LDR             R0, =(s_warHttp_ptr - 0x26C89C)
26C898:  ADD             R0, PC; s_warHttp_ptr
26C89A:  LDR             R5, [R0]; s_warHttp
26C89C:  STR             R1, [R5]
26C89E:  LDR             R0, [R4]
26C8A0:  LDR             R2, [R0,#0x54]
26C8A2:  MOV             R0, R4
26C8A4:  BLX             R2
26C8A6:  STR             R0, [R5]
26C8A8:  LDR             R0, [R4]
26C8AA:  LDR.W           R1, [R0,#0x390]
26C8AE:  MOV             R0, R4
26C8B0:  BLX             R1
26C8B2:  CBZ             R0, loc_26C8CC
26C8B4:  LDR             R1, =(aOswrapper - 0x26C8C0); "OSWrapper"
26C8B6:  MOVS            R0, #3; prio
26C8B8:  LDR             R2, =(aJniExceptionLi - 0x26C8C2); "JNI Exception (line %d):"
26C8BA:  MOVS            R3, #0x31 ; '1'
26C8BC:  ADD             R1, PC; "OSWrapper"
26C8BE:  ADD             R2, PC; "JNI Exception (line %d):"
26C8C0:  BLX             __android_log_print
26C8C4:  LDR             R0, [R4]
26C8C6:  LDR             R1, [R0,#0x40]
26C8C8:  MOV             R0, R4
26C8CA:  BLX             R1
26C8CC:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C8D0:  MOV             R4, R0
26C8D2:  MOV             R1, R9
26C8D4:  LDR             R0, [R4]
26C8D6:  LDR.W           R2, [R0,#0x29C]
26C8DA:  MOV             R0, R4
26C8DC:  BLX             R2
26C8DE:  MOV             R5, R0
26C8E0:  LDR             R0, =(s_warHttpPost_ptr - 0x26C8EA)
26C8E2:  LDR             R1, =(s_warHttp_ptr - 0x26C8EC)
26C8E4:  MOV             R3, R5
26C8E6:  ADD             R0, PC; s_warHttpPost_ptr
26C8E8:  ADD             R1, PC; s_warHttp_ptr
26C8EA:  LDR             R0, [R0]; s_warHttpPost
26C8EC:  LDR             R1, [R1]; s_warHttp
26C8EE:  LDR             R2, [R0]
26C8F0:  MOV             R0, R4
26C8F2:  LDR             R1, [R1]
26C8F4:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26C8F8:  MOV             R6, R0
26C8FA:  LDR             R0, [R4]
26C8FC:  MOV             R1, R5
26C8FE:  LDR             R2, [R0,#0x5C]
26C900:  MOV             R0, R4
26C902:  BLX             R2
26C904:  LDR             R0, [R4]
26C906:  MOV             R1, R6
26C908:  MOVS            R2, #0
26C90A:  LDR.W           R3, [R0,#0x2A4]
26C90E:  MOV             R0, R4
26C910:  BLX             R3
26C912:  MOV             R5, R0
26C914:  BLX             strlen
26C918:  ADDS            R0, #1; byte_count
26C91A:  BLX             malloc
26C91E:  MOV             R1, R5; char *
26C920:  MOV             R8, R0
26C922:  BLX             strcpy
26C926:  LDR             R0, [R4]
26C928:  MOV             R1, R6
26C92A:  MOV             R2, R5
26C92C:  LDR.W           R3, [R0,#0x2A8]
26C930:  MOV             R0, R4
26C932:  BLX             R3
26C934:  LDR             R0, [R4]
26C936:  LDR.W           R1, [R0,#0x390]
26C93A:  MOV             R0, R4
26C93C:  BLX             R1
26C93E:  CBZ             R0, loc_26C958
26C940:  LDR             R1, =(aOswrapper - 0x26C94C); "OSWrapper"
26C942:  MOVS            R0, #3; prio
26C944:  LDR             R2, =(aJniExceptionLi - 0x26C94E); "JNI Exception (line %d):"
26C946:  MOVS            R3, #0x51 ; 'Q'
26C948:  ADD             R1, PC; "OSWrapper"
26C94A:  ADD             R2, PC; "JNI Exception (line %d):"
26C94C:  BLX             __android_log_print
26C950:  LDR             R0, [R4]
26C952:  LDR             R1, [R0,#0x40]
26C954:  MOV             R0, R4
26C956:  BLX             R1
26C958:  MOV             R0, R8
26C95A:  POP.W           {R8,R9,R11}
26C95E:  POP             {R4-R7,PC}
