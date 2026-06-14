; =========================================================
; Game Engine Function: _Z31WarGameService_ShowLeaderboardsv
; Address            : 0x26E1C4 - 0x26E280
; =========================================================

26E1C4:  PUSH            {R4-R7,LR}
26E1C6:  ADD             R7, SP, #0xC
26E1C8:  PUSH.W          {R8}
26E1CC:  LDR             R0, =(s_warGameService_ptr - 0x26E1D2)
26E1CE:  ADD             R0, PC; s_warGameService_ptr
26E1D0:  LDR             R0, [R0]; s_warGameService
26E1D2:  LDR             R0, [R0]
26E1D4:  CBNZ            R0, loc_26E232
26E1D6:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26E1E2)
26E1D8:  LDR             R1, =(s_warGameService_class_ptr - 0x26E1E4)
26E1DA:  LDR.W           R8, =(dword_6D81DC - 0x26E1E6)
26E1DE:  ADD             R0, PC; s_warGameService_ctor_ptr
26E1E0:  ADD             R1, PC; s_warGameService_class_ptr
26E1E2:  ADD             R8, PC; dword_6D81DC
26E1E4:  LDR             R6, [R0]; s_warGameService_ctor
26E1E6:  LDR             R5, [R1]; s_warGameService_class
26E1E8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E1EC:  LDR.W           R3, [R8]
26E1F0:  MOV             R4, R0
26E1F2:  LDR             R2, [R6]
26E1F4:  LDR             R1, [R5]
26E1F6:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26E1FA:  MOV             R1, R0
26E1FC:  LDR             R0, =(s_warGameService_ptr - 0x26E202)
26E1FE:  ADD             R0, PC; s_warGameService_ptr
26E200:  LDR             R5, [R0]; s_warGameService
26E202:  STR             R1, [R5]
26E204:  LDR             R0, [R4]
26E206:  LDR             R2, [R0,#0x54]
26E208:  MOV             R0, R4
26E20A:  BLX             R2
26E20C:  STR             R0, [R5]
26E20E:  LDR             R0, [R4]
26E210:  LDR.W           R1, [R0,#0x390]
26E214:  MOV             R0, R4
26E216:  BLX             R1
26E218:  CBZ             R0, loc_26E232
26E21A:  LDR             R1, =(aOswrapper - 0x26E226); "OSWrapper"
26E21C:  MOVS            R0, #3; prio
26E21E:  LDR             R2, =(aJniExceptionLi - 0x26E228); "JNI Exception (line %d):"
26E220:  MOVS            R3, #0xC8
26E222:  ADD             R1, PC; "OSWrapper"
26E224:  ADD             R2, PC; "JNI Exception (line %d):"
26E226:  BLX             __android_log_print
26E22A:  LDR             R0, [R4]
26E22C:  LDR             R1, [R0,#0x40]
26E22E:  MOV             R0, R4
26E230:  BLX             R1
26E232:  LDR             R0, =(s_showLeaderboards_ptr - 0x26E23A)
26E234:  LDR             R1, =(s_warGameService_ptr - 0x26E23C)
26E236:  ADD             R0, PC; s_showLeaderboards_ptr
26E238:  ADD             R1, PC; s_warGameService_ptr
26E23A:  LDR             R5, [R0]; s_showLeaderboards
26E23C:  LDR             R6, [R1]; s_warGameService
26E23E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26E242:  LDR             R2, [R5]
26E244:  MOV             R4, R0
26E246:  LDR             R1, [R6]
26E248:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26E24C:  LDR             R0, [R4]
26E24E:  LDR.W           R1, [R0,#0x390]
26E252:  MOV             R0, R4
26E254:  BLX             R1
26E256:  CBZ             R0, loc_26E27A
26E258:  LDR             R1, =(aOswrapper - 0x26E266); "OSWrapper"
26E25A:  MOVS            R0, #3; prio
26E25C:  LDR             R2, =(aJniExceptionLi - 0x26E268); "JNI Exception (line %d):"
26E25E:  MOV.W           R3, #0x174
26E262:  ADD             R1, PC; "OSWrapper"
26E264:  ADD             R2, PC; "JNI Exception (line %d):"
26E266:  BLX             __android_log_print
26E26A:  LDR             R0, [R4]
26E26C:  LDR             R1, [R0,#0x40]
26E26E:  MOV             R0, R4
26E270:  POP.W           {R8}
26E274:  POP.W           {R4-R7,LR}
26E278:  BX              R1
26E27A:  POP.W           {R8}
26E27E:  POP             {R4-R7,PC}
