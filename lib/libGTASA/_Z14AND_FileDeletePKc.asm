; =========================================================
; Game Engine Function: _Z14AND_FileDeletePKc
; Address            : 0x2674E4 - 0x267532
; =========================================================

2674E4:  PUSH            {R4-R7,LR}
2674E6:  ADD             R7, SP, #0xC
2674E8:  PUSH.W          {R11}
2674EC:  MOV             R4, R0
2674EE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2674F2:  MOV             R5, R0
2674F4:  MOV             R1, R4
2674F6:  LDR             R0, [R5]
2674F8:  LDR.W           R2, [R0,#0x29C]
2674FC:  MOV             R0, R5
2674FE:  BLX             R2
267500:  MOV             R4, R0
267502:  LDR             R0, =(s_DeleteFile_ptr - 0x26750C)
267504:  LDR             R1, =(dword_6D81DC - 0x26750E)
267506:  MOV             R3, R4
267508:  ADD             R0, PC; s_DeleteFile_ptr
26750A:  ADD             R1, PC; dword_6D81DC
26750C:  LDR             R0, [R0]; s_DeleteFile
26750E:  LDR             R1, [R1]
267510:  LDR             R2, [R0]
267512:  MOV             R0, R5
267514:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
267518:  MOV             R6, R0
26751A:  LDR             R0, [R5]
26751C:  MOV             R1, R4
26751E:  LDR             R2, [R0,#0x5C]
267520:  MOV             R0, R5
267522:  BLX             R2
267524:  CMP             R6, #0
267526:  IT NE
267528:  MOVNE           R6, #1
26752A:  MOV             R0, R6
26752C:  POP.W           {R11}
267530:  POP             {R4-R7,PC}
