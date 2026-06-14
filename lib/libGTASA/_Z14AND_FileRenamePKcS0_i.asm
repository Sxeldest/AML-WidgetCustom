; =========================================================
; Game Engine Function: _Z14AND_FileRenamePKcS0_i
; Address            : 0x267734 - 0x2677A2
; =========================================================

267734:  PUSH            {R4-R7,LR}
267736:  ADD             R7, SP, #0xC
267738:  PUSH.W          {R8}
26773C:  SUB             SP, SP, #8
26773E:  MOV             R5, R1
267740:  MOV             R6, R0
267742:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
267746:  MOV             R4, R0
267748:  MOV             R1, R6
26774A:  LDR             R0, [R4]
26774C:  LDR.W           R2, [R0,#0x29C]
267750:  MOV             R0, R4
267752:  BLX             R2
267754:  MOV             R8, R0
267756:  LDR             R0, [R4]
267758:  MOV             R1, R5
26775A:  LDR.W           R2, [R0,#0x29C]
26775E:  MOV             R0, R4
267760:  BLX             R2
267762:  MOV             R5, R0
267764:  LDR             R0, =(s_FileRename_ptr - 0x26776E)
267766:  LDR             R1, =(dword_6D81DC - 0x267772)
267768:  MOV             R3, R8
26776A:  ADD             R0, PC; s_FileRename_ptr
26776C:  STR             R5, [SP,#0x18+var_18]
26776E:  ADD             R1, PC; dword_6D81DC
267770:  LDR             R0, [R0]; s_FileRename
267772:  LDR             R1, [R1]
267774:  LDR             R2, [R0]
267776:  MOV             R0, R4
267778:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26777C:  MOV             R6, R0
26777E:  LDR             R0, [R4]
267780:  MOV             R1, R8
267782:  LDR             R2, [R0,#0x5C]
267784:  MOV             R0, R4
267786:  BLX             R2
267788:  LDR             R0, [R4]
26778A:  MOV             R1, R5
26778C:  LDR             R2, [R0,#0x5C]
26778E:  MOV             R0, R4
267790:  BLX             R2
267792:  CMP             R6, #0
267794:  IT NE
267796:  MOVNE           R6, #1
267798:  MOV             R0, R6
26779A:  ADD             SP, SP, #8
26779C:  POP.W           {R8}
2677A0:  POP             {R4-R7,PC}
