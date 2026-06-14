; =========================================================
; Game Engine Function: _Z10NvUtilInitv
; Address            : 0x26919C - 0x269282
; =========================================================

26919C:  PUSH            {R4-R7,LR}
26919E:  ADD             R7, SP, #0xC
2691A0:  PUSH.W          {R8,R9,R11}
2691A4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2691A8:  MOV             R4, R0
2691AA:  LDR             R1, =(aComNvidiaDevte - 0x2691B2); "com/nvidia/devtech/NvUtil"
2691AC:  LDR             R0, [R4]
2691AE:  ADD             R1, PC; "com/nvidia/devtech/NvUtil"
2691B0:  LDR             R2, [R0,#0x18]
2691B2:  MOV             R0, R4
2691B4:  BLX             R2
2691B6:  MOV             R5, R0
2691B8:  LDR             R0, [R4]
2691BA:  LDR             R2, =(aHasapplocalval - 0x2691C8); "hasAppLocalValue"
2691BC:  MOV             R1, R5
2691BE:  LDR             R3, =(aLjavaLangStrin_0 - 0x2691CA); "(Ljava/lang/String;)Z"
2691C0:  LDR.W           R6, [R0,#0x84]
2691C4:  ADD             R2, PC; "hasAppLocalValue"
2691C6:  ADD             R3, PC; "(Ljava/lang/String;)Z"
2691C8:  MOV             R0, R4
2691CA:  BLX             R6
2691CC:  LDR             R1, =(dword_6DF168 - 0x2691D8)
2691CE:  ADR             R2, aGetapplocalval; "getAppLocalValue"
2691D0:  LDR.W           R9, =(aLjavaLangStrin_1 - 0x2691DA); "(Ljava/lang/String;)Ljava/lang/String;"
2691D4:  ADD             R1, PC; dword_6DF168
2691D6:  ADD             R9, PC; "(Ljava/lang/String;)Ljava/lang/String;"
2691D8:  STR             R0, [R1]
2691DA:  MOV             R1, R5
2691DC:  LDR             R0, [R4]
2691DE:  MOV             R3, R9
2691E0:  LDR.W           R6, [R0,#0x84]
2691E4:  MOV             R0, R4
2691E6:  BLX             R6
2691E8:  LDR.W           R8, =(dword_6DF16C - 0x2691F6)
2691EC:  ADR             R2, aSetapplocalval; "setAppLocalValue"
2691EE:  LDR             R3, =(aLjavaLangStrin_2 - 0x2691F8); "(Ljava/lang/String;Ljava/lang/String;)V"
2691F0:  MOV             R1, R5
2691F2:  ADD             R8, PC; dword_6DF16C
2691F4:  ADD             R3, PC; "(Ljava/lang/String;Ljava/lang/String;)V"
2691F6:  STR.W           R0, [R8]
2691FA:  LDR             R0, [R4]
2691FC:  LDR.W           R6, [R0,#0x84]
269200:  MOV             R0, R4
269202:  BLX             R6
269204:  LDR             R1, =(dword_6DF170 - 0x26920E)
269206:  ADR             R2, aGetparameter; "getParameter"
269208:  MOV             R3, R9
26920A:  ADD             R1, PC; dword_6DF170
26920C:  STR             R0, [R1]
26920E:  MOV             R1, R5
269210:  LDR             R0, [R4]
269212:  LDR.W           R6, [R0,#0x84]
269216:  MOV             R0, R4
269218:  BLX             R6
26921A:  LDR             R1, =(dword_6DF174 - 0x269224)
26921C:  ADR             R2, aGetinstance; "getInstance"
26921E:  ADR             R3, aLcomNvidiaDevt; "()Lcom/nvidia/devtech/NvUtil;"
269220:  ADD             R1, PC; dword_6DF174
269222:  STR             R0, [R1]
269224:  MOV             R1, R5
269226:  LDR             R0, [R4]
269228:  LDR.W           R6, [R0,#0x1C4]
26922C:  MOV             R0, R4
26922E:  BLX             R6
269230:  MOV             R2, R0
269232:  MOV             R0, R4
269234:  MOV             R1, R5
269236:  BLX             j__ZN7_JNIEnv22CallStaticObjectMethodEP7_jclassP10_jmethodIDz; _JNIEnv::CallStaticObjectMethod(_jclass *,_jmethodID *,...)
26923A:  LDR             R3, =(StorageRootBuffer_ptr - 0x269242)
26923C:  LDR             R2, =(dword_6DF178 - 0x269248)
26923E:  ADD             R3, PC; StorageRootBuffer_ptr
269240:  LDR.W           R1, [R8]
269244:  ADD             R2, PC; dword_6DF178
269246:  LDR             R4, [R3]; StorageRootBuffer
269248:  ADR             R3, aStorageRoot; "STORAGE_ROOT"
26924A:  STR             R0, [R2]
26924C:  MOV             R0, R1
26924E:  MOV.W           R2, #0x200
269252:  MOV             R1, R4
269254:  BL              sub_27A294
269258:  LDR             R0, =(StorageBaseRootBuffer_ptr - 0x269264)
26925A:  ADR             R3, aStorageRootBas; "STORAGE_ROOT_BASE"
26925C:  MOV.W           R2, #0x200
269260:  ADD             R0, PC; StorageBaseRootBuffer_ptr
269262:  LDR             R1, [R0]; StorageBaseRootBuffer
269264:  LDR.W           R0, [R8]
269268:  BL              sub_27A294
26926C:  LDR             R1, =(aOswrapper - 0x269278); "OSWrapper"
26926E:  ADR             R2, aStorageRootIsS; "Storage root is %s"
269270:  MOVS            R0, #3; prio
269272:  MOV             R3, R4
269274:  ADD             R1, PC; "OSWrapper"
269276:  POP.W           {R8,R9,R11}
26927A:  POP.W           {R4-R7,LR}
26927E:  B.W             sub_199CB8
