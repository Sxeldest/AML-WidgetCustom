; =========================================================
; Game Engine Function: _Z32WarGameService_UnlockAchievementPKc
; Address            : 0x26DB50 - 0x26DC2A
; =========================================================

26DB50:  PUSH            {R4-R7,LR}
26DB52:  ADD             R7, SP, #0xC
26DB54:  PUSH.W          {R8,R9,R11}
26DB58:  MOV             R9, R0
26DB5A:  LDR             R0, =(s_warGameService_ptr - 0x26DB60)
26DB5C:  ADD             R0, PC; s_warGameService_ptr
26DB5E:  LDR             R0, [R0]; s_warGameService
26DB60:  LDR             R0, [R0]
26DB62:  CBNZ            R0, loc_26DBC0
26DB64:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26DB70)
26DB66:  LDR             R1, =(s_warGameService_class_ptr - 0x26DB72)
26DB68:  LDR.W           R8, =(dword_6D81DC - 0x26DB74)
26DB6C:  ADD             R0, PC; s_warGameService_ctor_ptr
26DB6E:  ADD             R1, PC; s_warGameService_class_ptr
26DB70:  ADD             R8, PC; dword_6D81DC
26DB72:  LDR             R6, [R0]; s_warGameService_ctor
26DB74:  LDR             R4, [R1]; s_warGameService_class
26DB76:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26DB7A:  LDR.W           R3, [R8]
26DB7E:  MOV             R5, R0
26DB80:  LDR             R2, [R6]
26DB82:  LDR             R1, [R4]
26DB84:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26DB88:  MOV             R1, R0
26DB8A:  LDR             R0, =(s_warGameService_ptr - 0x26DB90)
26DB8C:  ADD             R0, PC; s_warGameService_ptr
26DB8E:  LDR             R4, [R0]; s_warGameService
26DB90:  STR             R1, [R4]
26DB92:  LDR             R0, [R5]
26DB94:  LDR             R2, [R0,#0x54]
26DB96:  MOV             R0, R5
26DB98:  BLX             R2
26DB9A:  STR             R0, [R4]
26DB9C:  LDR             R0, [R5]
26DB9E:  LDR.W           R1, [R0,#0x390]
26DBA2:  MOV             R0, R5
26DBA4:  BLX             R1
26DBA6:  CBZ             R0, loc_26DBC0
26DBA8:  LDR             R1, =(aOswrapper - 0x26DBB4); "OSWrapper"
26DBAA:  MOVS            R0, #3; prio
26DBAC:  LDR             R2, =(aJniExceptionLi - 0x26DBB6); "JNI Exception (line %d):"
26DBAE:  MOVS            R3, #0xC8
26DBB0:  ADD             R1, PC; "OSWrapper"
26DBB2:  ADD             R2, PC; "JNI Exception (line %d):"
26DBB4:  BLX             __android_log_print
26DBB8:  LDR             R0, [R5]
26DBBA:  LDR             R1, [R0,#0x40]
26DBBC:  MOV             R0, R5
26DBBE:  BLX             R1
26DBC0:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26DBC4:  MOV             R5, R0
26DBC6:  MOV             R1, R9
26DBC8:  LDR             R0, [R5]
26DBCA:  LDR.W           R2, [R0,#0x29C]
26DBCE:  MOV             R0, R5
26DBD0:  BLX             R2
26DBD2:  MOV             R4, R0
26DBD4:  LDR             R0, =(s_unlockAchievement_ptr - 0x26DBDE)
26DBD6:  LDR             R1, =(s_warGameService_ptr - 0x26DBE0)
26DBD8:  MOV             R3, R4
26DBDA:  ADD             R0, PC; s_unlockAchievement_ptr
26DBDC:  ADD             R1, PC; s_warGameService_ptr
26DBDE:  LDR             R0, [R0]; s_unlockAchievement
26DBE0:  LDR             R1, [R1]; s_warGameService
26DBE2:  LDR             R2, [R0]
26DBE4:  MOV             R0, R5
26DBE6:  LDR             R1, [R1]
26DBE8:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26DBEC:  LDR             R0, [R5]
26DBEE:  MOV             R1, R4
26DBF0:  LDR             R2, [R0,#0x5C]
26DBF2:  MOV             R0, R5
26DBF4:  BLX             R2
26DBF6:  LDR             R0, [R5]
26DBF8:  LDR.W           R1, [R0,#0x390]
26DBFC:  MOV             R0, R5
26DBFE:  BLX             R1
26DC00:  CBZ             R0, loc_26DC24
26DC02:  LDR             R1, =(aOswrapper - 0x26DC10); "OSWrapper"
26DC04:  MOVS            R0, #3; prio
26DC06:  LDR             R2, =(aJniExceptionLi - 0x26DC12); "JNI Exception (line %d):"
26DC08:  MOV.W           R3, #0x15C
26DC0C:  ADD             R1, PC; "OSWrapper"
26DC0E:  ADD             R2, PC; "JNI Exception (line %d):"
26DC10:  BLX             __android_log_print
26DC14:  LDR             R0, [R5]
26DC16:  LDR             R1, [R0,#0x40]
26DC18:  MOV             R0, R5
26DC1A:  POP.W           {R8,R9,R11}
26DC1E:  POP.W           {R4-R7,LR}
26DC22:  BX              R1
26DC24:  POP.W           {R8,R9,R11}
26DC28:  POP             {R4-R7,PC}
