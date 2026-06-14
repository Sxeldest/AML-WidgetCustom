; =========================================================
; Game Engine Function: _Z13OS_FileRename14OSFileDataAreaPKcS1_b
; Address            : 0x2676BC - 0x26772C
; =========================================================

2676BC:  PUSH            {R4-R7,LR}
2676BE:  ADD             R7, SP, #0xC
2676C0:  PUSH.W          {R8}
2676C4:  SUB             SP, SP, #8
2676C6:  MOV             R5, R2
2676C8:  MOV             R6, R1
2676CA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2676CE:  MOV             R4, R0
2676D0:  MOV             R1, R6
2676D2:  LDR             R0, [R4]
2676D4:  LDR.W           R2, [R0,#0x29C]
2676D8:  MOV             R0, R4
2676DA:  BLX             R2
2676DC:  MOV             R6, R0
2676DE:  LDR             R0, [R4]
2676E0:  MOV             R1, R5
2676E2:  LDR.W           R2, [R0,#0x29C]
2676E6:  MOV             R0, R4
2676E8:  BLX             R2
2676EA:  MOV             R5, R0
2676EC:  LDR             R0, =(s_FileRename_ptr - 0x2676F6)
2676EE:  LDR             R1, =(dword_6D81DC - 0x2676FA)
2676F0:  MOV             R3, R6
2676F2:  ADD             R0, PC; s_FileRename_ptr
2676F4:  STR             R5, [SP,#0x18+var_18]
2676F6:  ADD             R1, PC; dword_6D81DC
2676F8:  LDR             R0, [R0]; s_FileRename
2676FA:  LDR             R1, [R1]
2676FC:  LDR             R2, [R0]
2676FE:  MOV             R0, R4
267700:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
267704:  MOV             R8, R0
267706:  LDR             R0, [R4]
267708:  MOV             R1, R6
26770A:  LDR             R2, [R0,#0x5C]
26770C:  MOV             R0, R4
26770E:  BLX             R2
267710:  LDR             R0, [R4]
267712:  MOV             R1, R5
267714:  LDR             R2, [R0,#0x5C]
267716:  MOV             R0, R4
267718:  BLX             R2
26771A:  MOVS            R0, #3
26771C:  CMP.W           R8, #0
267720:  IT NE
267722:  MOVNE           R0, #0
267724:  ADD             SP, SP, #8
267726:  POP.W           {R8}
26772A:  POP             {R4-R7,PC}
