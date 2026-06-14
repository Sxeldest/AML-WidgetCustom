; =========================================================
; Game Engine Function: _Z27WarGameService_SaveSnapshotPKcS0_PKhii
; Address            : 0x26E778 - 0x26E8B8
; =========================================================

26E778:  PUSH            {R4-R7,LR}
26E77A:  ADD             R7, SP, #0xC
26E77C:  PUSH.W          {R8-R11}
26E780:  SUB             SP, SP, #0x14
26E782:  MOV             R6, R0
26E784:  LDR             R0, =(s_warGameService_ptr - 0x26E78E)
26E786:  STR             R2, [SP,#0x30+var_20]
26E788:  MOV             R9, R3
26E78A:  ADD             R0, PC; s_warGameService_ptr
26E78C:  LDR.W           R11, [R7,#arg_0]
26E790:  MOV             R4, R1
26E792:  LDR             R0, [R0]; s_warGameService
26E794:  LDR             R0, [R0]
26E796:  CBNZ            R0, loc_26E802
26E798:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E7A0)
26E79A:  LDR             R1, =(s_warGameService_class_ptr - 0x26E7A2)
26E79C:  ADD             R0, PC; s_warGameService_ctor_ptr
26E79E:  ADD             R1, PC; s_warGameService_class_ptr
26E7A0:  LDR.W           R10, [R0]; s_warGameService_ctor
26E7A4:  LDR.W           R8, [R1]; s_warGameService_class
26E7A8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E7AC:  MOV             R5, R0
26E7AE:  LDR             R0, =(dword_6D81DC - 0x26E7B8)
26E7B0:  LDR.W           R2, [R10]
26E7B4:  ADD             R0, PC; dword_6D81DC
26E7B6:  LDR.W           R1, [R8]
26E7BA:  LDR             R3, [R0]
26E7BC:  MOV             R0, R5
26E7BE:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E7C2:  MOV             R1, R0
26E7C4:  LDR             R0, =(s_warGameService_ptr - 0x26E7CE)
26E7C6:  MOV             R8, R6
26E7C8:  MOV             R6, R4
26E7CA:  ADD             R0, PC; s_warGameService_ptr
26E7CC:  LDR             R4, [R0]; s_warGameService
26E7CE:  STR             R1, [R4]
26E7D0:  LDR             R0, [R5]
26E7D2:  LDR             R2, [R0,#0x54]
26E7D4:  MOV             R0, R5
26E7D6:  BLX             R2
26E7D8:  STR             R0, [R4]
26E7DA:  MOV             R4, R6
26E7DC:  LDR             R0, [R5]
26E7DE:  MOV             R6, R8
26E7E0:  LDR.W           R1, [R0,#0x390]
26E7E4:  MOV             R0, R5
26E7E6:  BLX             R1
26E7E8:  CBZ             R0, loc_26E802
26E7EA:  LDR             R1, =(aOswrapper - 0x26E7F6); "OSWrapper"
26E7EC:  MOVS            R0, #3; prio
26E7EE:  LDR             R2, =(aJniExceptionLi - 0x26E7F8); "JNI Exception (line %d):"
26E7F0:  MOVS            R3, #0xC8
26E7F2:  ADD             R1, PC; "OSWrapper"
26E7F4:  ADD             R2, PC; "JNI Exception (line %d):"
26E7F6:  BLX             __android_log_print
26E7FA:  LDR             R0, [R5]
26E7FC:  LDR             R1, [R0,#0x40]
26E7FE:  MOV             R0, R5
26E800:  BLX             R1
26E802:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E806:  MOV             R5, R0
26E808:  MOV             R1, R6
26E80A:  LDR             R0, [R5]
26E80C:  LDR.W           R2, [R0,#0x29C]
26E810:  MOV             R0, R5
26E812:  BLX             R2
26E814:  MOV             R10, R0
26E816:  LDR             R0, [R5]
26E818:  MOV             R1, R4
26E81A:  LDR.W           R2, [R0,#0x29C]
26E81E:  MOV             R0, R5
26E820:  BLX             R2
26E822:  MOV             R8, R0
26E824:  LDR             R0, [R5]
26E826:  MOV             R1, R9
26E828:  LDR.W           R2, [R0,#0x2C0]
26E82C:  MOV             R0, R5
26E82E:  BLX             R2
26E830:  MOV             R6, R0
26E832:  LDR             R0, [R5]
26E834:  MOV             R1, R6
26E836:  MOVS            R2, #0
26E838:  MOV             R3, R9
26E83A:  LDR.W           R4, [R0,#0x340]
26E83E:  LDR             R0, [SP,#0x30+var_20]
26E840:  STR             R0, [SP,#0x30+var_30]
26E842:  MOV             R0, R5
26E844:  BLX             R4
26E846:  LDR             R0, =(s_saveSnapshot_ptr - 0x26E850)
26E848:  MOV             R3, R10
26E84A:  LDR             R1, =(s_warGameService_ptr - 0x26E852)
26E84C:  ADD             R0, PC; s_saveSnapshot_ptr
26E84E:  ADD             R1, PC; s_warGameService_ptr
26E850:  LDR             R0, [R0]; s_saveSnapshot
26E852:  LDR             R1, [R1]; s_warGameService
26E854:  LDR             R2, [R0]
26E856:  MOV.W           R0, R11,ASR#31
26E85A:  LDR             R1, [R1]
26E85C:  STRD.W          R8, R6, [SP,#0x30+var_30]
26E860:  STRD.W          R11, R0, [SP,#0x30+var_28]
26E864:  MOV             R0, R5
26E866:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E86A:  LDR             R0, [R5]
26E86C:  LDR.W           R1, [R0,#0x390]
26E870:  MOV             R0, R5
26E872:  BLX             R1
26E874:  CBZ             R0, loc_26E890
26E876:  LDR             R1, =(aOswrapper - 0x26E884); "OSWrapper"
26E878:  MOVS            R0, #3; prio
26E87A:  LDR             R2, =(aJniExceptionLi - 0x26E886); "JNI Exception (line %d):"
26E87C:  MOVW            R3, #0x257
26E880:  ADD             R1, PC; "OSWrapper"
26E882:  ADD             R2, PC; "JNI Exception (line %d):"
26E884:  BLX             __android_log_print
26E888:  LDR             R0, [R5]
26E88A:  LDR             R1, [R0,#0x40]
26E88C:  MOV             R0, R5
26E88E:  BLX             R1
26E890:  LDR             R0, [R5]
26E892:  MOV             R1, R6
26E894:  LDR             R2, [R0,#0x5C]
26E896:  MOV             R0, R5
26E898:  BLX             R2
26E89A:  LDR             R0, [R5]
26E89C:  MOV             R1, R10
26E89E:  LDR             R2, [R0,#0x5C]
26E8A0:  MOV             R0, R5
26E8A2:  BLX             R2
26E8A4:  LDR             R0, [R5]
26E8A6:  MOV             R1, R8
26E8A8:  LDR             R2, [R0,#0x5C]
26E8AA:  MOV             R0, R5
26E8AC:  ADD             SP, SP, #0x14
26E8AE:  POP.W           {R8-R11}
26E8B2:  POP.W           {R4-R7,LR}
26E8B6:  BX              R2
