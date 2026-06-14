; =========================================================
; Game Engine Function: _Z26WarGamepad_GetGamepadTrackiiPiS_
; Address            : 0x26851C - 0x268578
; =========================================================

26851C:  PUSH            {R4-R7,LR}
26851E:  ADD             R7, SP, #0xC
268520:  PUSH.W          {R8-R11}
268524:  SUB             SP, SP, #0xC
268526:  MOV             R11, R0
268528:  LDR             R0, =(s_getGamepadTrack_ptr - 0x268534)
26852A:  LDR.W           R10, =(dword_6D81DC - 0x26853A)
26852E:  MOV             R8, R3
268530:  ADD             R0, PC; s_getGamepadTrack_ptr
268532:  MOV             R9, R2
268534:  MOV             R4, R1
268536:  ADD             R10, PC; dword_6D81DC
268538:  LDR             R5, [R0]; s_getGamepadTrack
26853A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26853E:  LDR.W           R1, [R10]
268542:  MOV             R6, R0
268544:  LDR             R2, [R5]
268546:  MOVS            R0, #0
268548:  STRD.W          R4, R0, [SP,#0x28+var_28]
26854C:  MOV             R0, R6
26854E:  MOV             R3, R11
268550:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
268554:  STR.W           R0, [R9]
268558:  MOVS            R0, #1
26855A:  LDR             R2, [R5]
26855C:  MOV             R3, R11
26855E:  LDR.W           R1, [R10]
268562:  STRD.W          R4, R0, [SP,#0x28+var_28]
268566:  MOV             R0, R6
268568:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
26856C:  STR.W           R0, [R8]
268570:  ADD             SP, SP, #0xC
268572:  POP.W           {R8-R11}
268576:  POP             {R4-R7,PC}
