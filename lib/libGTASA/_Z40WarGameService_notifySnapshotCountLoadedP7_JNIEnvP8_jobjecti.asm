; =========================================================
; Game Engine Function: _Z40WarGameService_notifySnapshotCountLoadedP7_JNIEnvP8_jobjecti
; Address            : 0x27C080 - 0x27C0D8
; =========================================================

27C080:  PUSH            {R4-R7,LR}
27C082:  ADD             R7, SP, #0xC
27C084:  PUSH.W          {R11}
27C088:  MOV             R4, R0
27C08A:  LDR             R0, =(gameServiceMutex_ptr - 0x27C092)
27C08C:  MOV             R5, R2
27C08E:  ADD             R0, PC; gameServiceMutex_ptr
27C090:  LDR             R6, [R0]; gameServiceMutex
27C092:  LDR             R0, [R6]; mutex
27C094:  BLX             pthread_mutex_lock
27C098:  LDR             R1, =(dword_6855DC - 0x27C0A0)
27C09A:  LDR             R0, [R6]; mutex
27C09C:  ADD             R1, PC; dword_6855DC
27C09E:  STR             R5, [R1]
27C0A0:  BLX             pthread_mutex_unlock
27C0A4:  LDR             R0, [R4]
27C0A6:  LDR.W           R1, [R0,#0x390]
27C0AA:  MOV             R0, R4
27C0AC:  BLX             R1
27C0AE:  CBZ             R0, loc_27C0D2
27C0B0:  LDR             R1, =(aOswrapper - 0x27C0BE); "OSWrapper"
27C0B2:  MOVS            R0, #3; prio
27C0B4:  LDR             R2, =(aJniExceptionLi - 0x27C0C0); "JNI Exception (line %d):"
27C0B6:  MOVW            R3, #0x299
27C0BA:  ADD             R1, PC; "OSWrapper"
27C0BC:  ADD             R2, PC; "JNI Exception (line %d):"
27C0BE:  BLX             __android_log_print
27C0C2:  LDR             R0, [R4]
27C0C4:  LDR             R1, [R0,#0x40]
27C0C6:  MOV             R0, R4
27C0C8:  POP.W           {R11}
27C0CC:  POP.W           {R4-R7,LR}
27C0D0:  BX              R1
27C0D2:  POP.W           {R11}
27C0D6:  POP             {R4-R7,PC}
