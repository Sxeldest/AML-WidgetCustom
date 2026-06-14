; =========================================================
; Game Engine Function: _Z20AND_StartInvitedGameb
; Address            : 0x27B438 - 0x27B4F6
; =========================================================

27B438:  PUSH            {R4-R7,LR}
27B43A:  ADD             R7, SP, #0xC
27B43C:  PUSH.W          {R8,R9,R11}
27B440:  MOV             R9, R0
27B442:  LDR             R0, =(s_warGameService_ptr - 0x27B448)
27B444:  ADD             R0, PC; s_warGameService_ptr
27B446:  LDR             R0, [R0]; s_warGameService
27B448:  LDR             R0, [R0]
27B44A:  CBNZ            R0, loc_27B4A8
27B44C:  LDR             R0, =(s_warGameService_ctor_ptr - 0x27B458)
27B44E:  LDR             R1, =(s_warGameService_class_ptr - 0x27B45A)
27B450:  LDR.W           R8, =(dword_6D81DC - 0x27B45C)
27B454:  ADD             R0, PC; s_warGameService_ctor_ptr
27B456:  ADD             R1, PC; s_warGameService_class_ptr
27B458:  ADD             R8, PC; dword_6D81DC
27B45A:  LDR             R6, [R0]; s_warGameService_ctor
27B45C:  LDR             R4, [R1]; s_warGameService_class
27B45E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B462:  LDR.W           R3, [R8]
27B466:  MOV             R5, R0
27B468:  LDR             R2, [R6]
27B46A:  LDR             R1, [R4]
27B46C:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
27B470:  MOV             R1, R0
27B472:  LDR             R0, =(s_warGameService_ptr - 0x27B478)
27B474:  ADD             R0, PC; s_warGameService_ptr
27B476:  LDR             R4, [R0]; s_warGameService
27B478:  STR             R1, [R4]
27B47A:  LDR             R0, [R5]
27B47C:  LDR             R2, [R0,#0x54]
27B47E:  MOV             R0, R5
27B480:  BLX             R2
27B482:  STR             R0, [R4]
27B484:  LDR             R0, [R5]
27B486:  LDR.W           R1, [R0,#0x390]
27B48A:  MOV             R0, R5
27B48C:  BLX             R1
27B48E:  CBZ             R0, loc_27B4A8
27B490:  LDR             R1, =(aOswrapper - 0x27B49C); "OSWrapper"
27B492:  MOVS            R0, #3; prio
27B494:  LDR             R2, =(aJniExceptionLi - 0x27B49E); "JNI Exception (line %d):"
27B496:  MOVS            R3, #0xC8
27B498:  ADD             R1, PC; "OSWrapper"
27B49A:  ADD             R2, PC; "JNI Exception (line %d):"
27B49C:  BLX             __android_log_print
27B4A0:  LDR             R0, [R5]
27B4A2:  LDR             R1, [R0,#0x40]
27B4A4:  MOV             R0, R5
27B4A6:  BLX             R1
27B4A8:  LDR             R0, =(s_startInvitedGame_ptr - 0x27B4B0)
27B4AA:  LDR             R1, =(s_warGameService_ptr - 0x27B4B2)
27B4AC:  ADD             R0, PC; s_startInvitedGame_ptr
27B4AE:  ADD             R1, PC; s_warGameService_ptr
27B4B0:  LDR             R4, [R0]; s_startInvitedGame
27B4B2:  LDR             R6, [R1]; s_warGameService
27B4B4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B4B8:  LDR             R2, [R4]
27B4BA:  MOV             R3, R9
27B4BC:  LDR             R1, [R6]
27B4BE:  MOV             R5, R0
27B4C0:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27B4C4:  LDR             R0, [R5]
27B4C6:  LDR.W           R1, [R0,#0x390]
27B4CA:  MOV             R0, R5
27B4CC:  BLX             R1
27B4CE:  CBZ             R0, loc_27B4F0
27B4D0:  LDR             R1, =(aOswrapper - 0x27B4DC); "OSWrapper"
27B4D2:  MOVS            R0, #3; prio
27B4D4:  LDR             R2, =(aJniExceptionLi - 0x27B4DE); "JNI Exception (line %d):"
27B4D6:  MOVS            R3, #0xD2
27B4D8:  ADD             R1, PC; "OSWrapper"
27B4DA:  ADD             R2, PC; "JNI Exception (line %d):"
27B4DC:  BLX             __android_log_print
27B4E0:  LDR             R0, [R5]
27B4E2:  LDR             R1, [R0,#0x40]
27B4E4:  MOV             R0, R5
27B4E6:  POP.W           {R8,R9,R11}
27B4EA:  POP.W           {R4-R7,LR}
27B4EE:  BX              R1
27B4F0:  POP.W           {R8,R9,R11}
27B4F4:  POP             {R4-R7,PC}
