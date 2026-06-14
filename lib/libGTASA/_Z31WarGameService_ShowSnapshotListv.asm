; =========================================================
; Game Engine Function: _Z31WarGameService_ShowSnapshotListv
; Address            : 0x26E8E8 - 0x26E9A4
; =========================================================

26E8E8:  PUSH            {R4-R7,LR}
26E8EA:  ADD             R7, SP, #0xC
26E8EC:  PUSH.W          {R8}
26E8F0:  LDR             R0, =(s_warGameService_ptr - 0x26E8F6)
26E8F2:  ADD             R0, PC; s_warGameService_ptr
26E8F4:  LDR             R0, [R0]; s_warGameService
26E8F6:  LDR             R0, [R0]
26E8F8:  CBNZ            R0, loc_26E956
26E8FA:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E906)
26E8FC:  LDR             R1, =(s_warGameService_class_ptr - 0x26E908)
26E8FE:  LDR.W           R8, =(dword_6D81DC - 0x26E90A)
26E902:  ADD             R0, PC; s_warGameService_ctor_ptr
26E904:  ADD             R1, PC; s_warGameService_class_ptr
26E906:  ADD             R8, PC; dword_6D81DC
26E908:  LDR             R6, [R0]; s_warGameService_ctor
26E90A:  LDR             R5, [R1]; s_warGameService_class
26E90C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E910:  LDR.W           R3, [R8]
26E914:  MOV             R4, R0
26E916:  LDR             R2, [R6]
26E918:  LDR             R1, [R5]
26E91A:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E91E:  MOV             R1, R0
26E920:  LDR             R0, =(s_warGameService_ptr - 0x26E926)
26E922:  ADD             R0, PC; s_warGameService_ptr
26E924:  LDR             R5, [R0]; s_warGameService
26E926:  STR             R1, [R5]
26E928:  LDR             R0, [R4]
26E92A:  LDR             R2, [R0,#0x54]
26E92C:  MOV             R0, R4
26E92E:  BLX             R2
26E930:  STR             R0, [R5]
26E932:  LDR             R0, [R4]
26E934:  LDR.W           R1, [R0,#0x390]
26E938:  MOV             R0, R4
26E93A:  BLX             R1
26E93C:  CBZ             R0, loc_26E956
26E93E:  LDR             R1, =(aOswrapper - 0x26E94A); "OSWrapper"
26E940:  MOVS            R0, #3; prio
26E942:  LDR             R2, =(aJniExceptionLi - 0x26E94C); "JNI Exception (line %d):"
26E944:  MOVS            R3, #0xC8
26E946:  ADD             R1, PC; "OSWrapper"
26E948:  ADD             R2, PC; "JNI Exception (line %d):"
26E94A:  BLX             __android_log_print
26E94E:  LDR             R0, [R4]
26E950:  LDR             R1, [R0,#0x40]
26E952:  MOV             R0, R4
26E954:  BLX             R1
26E956:  LDR             R0, =(s_showSnapshotList_ptr - 0x26E95E)
26E958:  LDR             R1, =(s_warGameService_ptr - 0x26E960)
26E95A:  ADD             R0, PC; s_showSnapshotList_ptr
26E95C:  ADD             R1, PC; s_warGameService_ptr
26E95E:  LDR             R5, [R0]; s_showSnapshotList
26E960:  LDR             R6, [R1]; s_warGameService
26E962:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E966:  LDR             R2, [R5]
26E968:  MOV             R4, R0
26E96A:  LDR             R1, [R6]
26E96C:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E970:  LDR             R0, [R4]
26E972:  LDR.W           R1, [R0,#0x390]
26E976:  MOV             R0, R4
26E978:  BLX             R1
26E97A:  CBZ             R0, loc_26E99E
26E97C:  LDR             R1, =(aOswrapper - 0x26E98A); "OSWrapper"
26E97E:  MOVS            R0, #3; prio
26E980:  LDR             R2, =(aJniExceptionLi - 0x26E98C); "JNI Exception (line %d):"
26E982:  MOVW            R3, #0x23F
26E986:  ADD             R1, PC; "OSWrapper"
26E988:  ADD             R2, PC; "JNI Exception (line %d):"
26E98A:  BLX             __android_log_print
26E98E:  LDR             R0, [R4]
26E990:  LDR             R1, [R0,#0x40]
26E992:  MOV             R0, R4
26E994:  POP.W           {R8}
26E998:  POP.W           {R4-R7,LR}
26E99C:  BX              R1
26E99E:  POP.W           {R8}
26E9A2:  POP             {R4-R7,PC}
