; =========================================================
; Game Engine Function: _Z20OS_ServiceGetAdStatei
; Address            : 0x26C5FC - 0x26C62A
; =========================================================

26C5FC:  PUSH            {R4,R6,R7,LR}
26C5FE:  ADD             R7, SP, #8
26C600:  MOV             R4, R0
26C602:  LDR             R0, =(byte_6D70E8 - 0x26C608)
26C604:  ADD             R0, PC; byte_6D70E8
26C606:  LDRB            R0, [R0]
26C608:  CMP             R0, #1
26C60A:  ITT NE
26C60C:  MOVNE           R0, #0
26C60E:  POPNE           {R4,R6,R7,PC}
26C610:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C614:  LDR             R1, =(dword_6D70F4 - 0x26C61C)
26C616:  LDR             R3, =(dword_6D70EC - 0x26C61E)
26C618:  ADD             R1, PC; dword_6D70F4
26C61A:  ADD             R3, PC; dword_6D70EC
26C61C:  LDR             R2, [R1]
26C61E:  LDR             R1, [R3]
26C620:  MOV             R3, R4
26C622:  POP.W           {R4,R6,R7,LR}
26C626:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
