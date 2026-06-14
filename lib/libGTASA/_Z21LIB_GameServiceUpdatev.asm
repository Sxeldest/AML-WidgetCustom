; =========================================================
; Game Engine Function: _Z21LIB_GameServiceUpdatev
; Address            : 0x26D37C - 0x26D4EC
; =========================================================

26D37C:  PUSH            {R4-R7,LR}
26D37E:  ADD             R7, SP, #0xC
26D380:  PUSH.W          {R8}
26D384:  SUB             SP, SP, #8
26D386:  LDR             R0, =(s_warGameService_ptr - 0x26D38C)
26D388:  ADD             R0, PC; s_warGameService_ptr
26D38A:  LDR             R0, [R0]; s_warGameService
26D38C:  LDR             R0, [R0]
26D38E:  CBNZ            R0, loc_26D3EC
26D390:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26D39C)
26D392:  LDR             R1, =(s_warGameService_class_ptr - 0x26D39E)
26D394:  LDR.W           R8, =(dword_6D81DC - 0x26D3A0)
26D398:  ADD             R0, PC; s_warGameService_ctor_ptr
26D39A:  ADD             R1, PC; s_warGameService_class_ptr
26D39C:  ADD             R8, PC; dword_6D81DC
26D39E:  LDR             R6, [R0]; s_warGameService_ctor
26D3A0:  LDR             R5, [R1]; s_warGameService_class
26D3A2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26D3A6:  LDR.W           R3, [R8]
26D3AA:  MOV             R4, R0
26D3AC:  LDR             R2, [R6]
26D3AE:  LDR             R1, [R5]
26D3B0:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26D3B4:  MOV             R1, R0
26D3B6:  LDR             R0, =(s_warGameService_ptr - 0x26D3BC)
26D3B8:  ADD             R0, PC; s_warGameService_ptr
26D3BA:  LDR             R5, [R0]; s_warGameService
26D3BC:  STR             R1, [R5]
26D3BE:  LDR             R0, [R4]
26D3C0:  LDR             R2, [R0,#0x54]
26D3C2:  MOV             R0, R4
26D3C4:  BLX             R2
26D3C6:  STR             R0, [R5]
26D3C8:  LDR             R0, [R4]
26D3CA:  LDR.W           R1, [R0,#0x390]
26D3CE:  MOV             R0, R4
26D3D0:  BLX             R1
26D3D2:  CBZ             R0, loc_26D3EC
26D3D4:  LDR             R1, =(aOswrapper - 0x26D3E0); "OSWrapper"
26D3D6:  MOVS            R0, #3; prio
26D3D8:  LDR             R2, =(aJniExceptionLi - 0x26D3E2); "JNI Exception (line %d):"
26D3DA:  MOVS            R3, #0xC8
26D3DC:  ADD             R1, PC; "OSWrapper"
26D3DE:  ADD             R2, PC; "JNI Exception (line %d):"
26D3E0:  BLX             __android_log_print
26D3E4:  LDR             R0, [R4]
26D3E6:  LDR             R1, [R0,#0x40]
26D3E8:  MOV             R0, R4
26D3EA:  BLX             R1
26D3EC:  LDR             R0, =(gameServiceMutex_ptr - 0x26D3F2)
26D3EE:  ADD             R0, PC; gameServiceMutex_ptr
26D3F0:  LDR             R0, [R0]; gameServiceMutex
26D3F2:  LDR             R0, [R0]; mutex
26D3F4:  BLX             pthread_mutex_lock
26D3F8:  LDR             R0, =(byte_6D712D - 0x26D3FE)
26D3FA:  ADD             R0, PC; byte_6D712D
26D3FC:  LDRB            R0, [R0]
26D3FE:  CMP             R0, #1
26D400:  BNE             loc_26D41E
26D402:  LDR             R0, =(byte_6D712C - 0x26D40A)
26D404:  ADD             R1, SP, #0x18+var_14
26D406:  ADD             R0, PC; byte_6D712C
26D408:  LDRB            R0, [R0]
26D40A:  EOR.W           R0, R0, #1
26D40E:  STR             R0, [SP,#0x18+var_14]
26D410:  MOVS            R0, #0xC
26D412:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D416:  LDR             R0, =(byte_6D712D - 0x26D41E)
26D418:  MOVS            R1, #0
26D41A:  ADD             R0, PC; byte_6D712D
26D41C:  STRB            R1, [R0]
26D41E:  LDR             R0, =(byte_6D712E - 0x26D424)
26D420:  ADD             R0, PC; byte_6D712E
26D422:  LDRB            R0, [R0]
26D424:  CMP             R0, #1
26D426:  BNE             loc_26D438
26D428:  MOVS            R0, #0xD
26D42A:  MOVS            R1, #0
26D42C:  MOVS            R4, #0
26D42E:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D432:  LDR             R0, =(byte_6D712E - 0x26D438)
26D434:  ADD             R0, PC; byte_6D712E
26D436:  STRB            R4, [R0]
26D438:  LDR             R0, =(byte_6D712F - 0x26D43E)
26D43A:  ADD             R0, PC; byte_6D712F
26D43C:  LDRB            R0, [R0]
26D43E:  CMP             R0, #1
26D440:  BNE             loc_26D452
26D442:  MOVS            R0, #0xE
26D444:  MOVS            R1, #0
26D446:  MOVS            R4, #0
26D448:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D44C:  LDR             R0, =(byte_6D712F - 0x26D452)
26D44E:  ADD             R0, PC; byte_6D712F
26D450:  STRB            R4, [R0]
26D452:  LDR             R0, =(byte_6D7130 - 0x26D458)
26D454:  ADD             R0, PC; byte_6D7130
26D456:  LDRB            R0, [R0]
26D458:  CMP             R0, #1
26D45A:  BNE             loc_26D47A
26D45C:  LDR             R4, =(dword_6D7134 - 0x26D464)
26D45E:  MOVS            R0, #0xF
26D460:  ADD             R4, PC; dword_6D7134
26D462:  MOV             R1, R4
26D464:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D468:  LDR             R0, [R4,#(dword_6D713C - 0x6D7134)]; void *
26D46A:  CMP             R0, #0
26D46C:  IT NE
26D46E:  BLXNE           _ZdaPv; operator delete[](void *)
26D472:  LDR             R0, =(byte_6D7130 - 0x26D47A)
26D474:  MOVS            R1, #0
26D476:  ADD             R0, PC; byte_6D7130
26D478:  STRB            R1, [R0]
26D47A:  LDR             R0, =(byte_6D7144 - 0x26D480)
26D47C:  ADD             R0, PC; byte_6D7144
26D47E:  LDRB            R0, [R0]
26D480:  CMP             R0, #1
26D482:  BNE             loc_26D494
26D484:  MOVS            R0, #0x12
26D486:  MOVS            R1, #0
26D488:  MOVS            R4, #0
26D48A:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D48E:  LDR             R0, =(byte_6D7144 - 0x26D494)
26D490:  ADD             R0, PC; byte_6D7144
26D492:  STRB            R4, [R0]
26D494:  LDR             R0, =(byte_6D7145 - 0x26D49A)
26D496:  ADD             R0, PC; byte_6D7145
26D498:  LDRB            R0, [R0]
26D49A:  CMP             R0, #1
26D49C:  BNE             loc_26D4BC
26D49E:  LDR             R4, =(byte_6D7148 - 0x26D4A6)
26D4A0:  MOVS            R0, #0x13
26D4A2:  ADD             R4, PC; byte_6D7148
26D4A4:  MOV             R1, R4
26D4A6:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D4AA:  LDR             R0, [R4,#(dword_6D714C - 0x6D7148)]; void *
26D4AC:  CMP             R0, #0
26D4AE:  IT NE
26D4B0:  BLXNE           _ZdaPv; operator delete[](void *)
26D4B4:  LDR             R0, =(byte_6D7145 - 0x26D4BC)
26D4B6:  MOVS            R1, #0
26D4B8:  ADD             R0, PC; byte_6D7145
26D4BA:  STRB            R1, [R0]
26D4BC:  LDR             R0, =(dword_6855DC - 0x26D4C2)
26D4BE:  ADD             R0, PC; dword_6855DC
26D4C0:  LDR             R0, [R0]
26D4C2:  CMP             R0, #0
26D4C4:  BLT             loc_26D4D8
26D4C6:  LDR             R4, =(dword_6855DC - 0x26D4CE)
26D4C8:  MOVS            R0, #0x11
26D4CA:  ADD             R4, PC; dword_6855DC
26D4CC:  MOV             R1, R4
26D4CE:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
26D4D2:  MOV.W           R0, #0xFFFFFFFF
26D4D6:  STR             R0, [R4]
26D4D8:  LDR             R0, =(gameServiceMutex_ptr - 0x26D4DE)
26D4DA:  ADD             R0, PC; gameServiceMutex_ptr
26D4DC:  LDR             R0, [R0]; gameServiceMutex
26D4DE:  LDR             R0, [R0]; mutex
26D4E0:  BLX             pthread_mutex_unlock
26D4E4:  ADD             SP, SP, #8
26D4E6:  POP.W           {R8}
26D4EA:  POP             {R4-R7,PC}
