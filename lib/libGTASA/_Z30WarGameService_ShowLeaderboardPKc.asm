; =========================================================
; Game Engine Function: _Z30WarGameService_ShowLeaderboardPKc
; Address            : 0x26E2B0 - 0x26E38A
; =========================================================

26E2B0:  PUSH            {R4-R7,LR}
26E2B2:  ADD             R7, SP, #0xC
26E2B4:  PUSH.W          {R8,R9,R11}
26E2B8:  MOV             R9, R0
26E2BA:  LDR             R0, =(s_warGameService_ptr - 0x26E2C0)
26E2BC:  ADD             R0, PC; s_warGameService_ptr
26E2BE:  LDR             R0, [R0]; s_warGameService
26E2C0:  LDR             R0, [R0]
26E2C2:  CBNZ            R0, loc_26E320
26E2C4:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E2D0)
26E2C6:  LDR             R1, =(s_warGameService_class_ptr - 0x26E2D2)
26E2C8:  LDR.W           R8, =(dword_6D81DC - 0x26E2D4)
26E2CC:  ADD             R0, PC; s_warGameService_ctor_ptr
26E2CE:  ADD             R1, PC; s_warGameService_class_ptr
26E2D0:  ADD             R8, PC; dword_6D81DC
26E2D2:  LDR             R6, [R0]; s_warGameService_ctor
26E2D4:  LDR             R4, [R1]; s_warGameService_class
26E2D6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E2DA:  LDR.W           R3, [R8]
26E2DE:  MOV             R5, R0
26E2E0:  LDR             R2, [R6]
26E2E2:  LDR             R1, [R4]
26E2E4:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E2E8:  MOV             R1, R0
26E2EA:  LDR             R0, =(s_warGameService_ptr - 0x26E2F0)
26E2EC:  ADD             R0, PC; s_warGameService_ptr
26E2EE:  LDR             R4, [R0]; s_warGameService
26E2F0:  STR             R1, [R4]
26E2F2:  LDR             R0, [R5]
26E2F4:  LDR             R2, [R0,#0x54]
26E2F6:  MOV             R0, R5
26E2F8:  BLX             R2
26E2FA:  STR             R0, [R4]
26E2FC:  LDR             R0, [R5]
26E2FE:  LDR.W           R1, [R0,#0x390]
26E302:  MOV             R0, R5
26E304:  BLX             R1
26E306:  CBZ             R0, loc_26E320
26E308:  LDR             R1, =(aOswrapper - 0x26E314); "OSWrapper"
26E30A:  MOVS            R0, #3; prio
26E30C:  LDR             R2, =(aJniExceptionLi - 0x26E316); "JNI Exception (line %d):"
26E30E:  MOVS            R3, #0xC8
26E310:  ADD             R1, PC; "OSWrapper"
26E312:  ADD             R2, PC; "JNI Exception (line %d):"
26E314:  BLX             __android_log_print
26E318:  LDR             R0, [R5]
26E31A:  LDR             R1, [R0,#0x40]
26E31C:  MOV             R0, R5
26E31E:  BLX             R1
26E320:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E324:  MOV             R5, R0
26E326:  MOV             R1, R9
26E328:  LDR             R0, [R5]
26E32A:  LDR.W           R2, [R0,#0x29C]
26E32E:  MOV             R0, R5
26E330:  BLX             R2
26E332:  MOV             R4, R0
26E334:  LDR             R0, =(s_showLeaderboard_ptr - 0x26E33E)
26E336:  LDR             R1, =(s_warGameService_ptr - 0x26E340)
26E338:  MOV             R3, R4
26E33A:  ADD             R0, PC; s_showLeaderboard_ptr
26E33C:  ADD             R1, PC; s_warGameService_ptr
26E33E:  LDR             R0, [R0]; s_showLeaderboard
26E340:  LDR             R1, [R1]; s_warGameService
26E342:  LDR             R2, [R0]
26E344:  MOV             R0, R5
26E346:  LDR             R1, [R1]
26E348:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E34C:  LDR             R0, [R5]
26E34E:  MOV             R1, R4
26E350:  LDR             R2, [R0,#0x5C]
26E352:  MOV             R0, R5
26E354:  BLX             R2
26E356:  LDR             R0, [R5]
26E358:  LDR.W           R1, [R0,#0x390]
26E35C:  MOV             R0, R5
26E35E:  BLX             R1
26E360:  CBZ             R0, loc_26E384
26E362:  LDR             R1, =(aOswrapper - 0x26E370); "OSWrapper"
26E364:  MOVS            R0, #3; prio
26E366:  LDR             R2, =(aJniExceptionLi - 0x26E372); "JNI Exception (line %d):"
26E368:  MOVW            R3, #0x17F
26E36C:  ADD             R1, PC; "OSWrapper"
26E36E:  ADD             R2, PC; "JNI Exception (line %d):"
26E370:  BLX             __android_log_print
26E374:  LDR             R0, [R5]
26E376:  LDR             R1, [R0,#0x40]
26E378:  MOV             R0, R5
26E37A:  POP.W           {R8,R9,R11}
26E37E:  POP.W           {R4-R7,LR}
26E382:  BX              R1
26E384:  POP.W           {R8,R9,R11}
26E388:  POP             {R4-R7,PC}
