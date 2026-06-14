; =========================================================
; Game Engine Function: _Z35WarGameService_IncrementAchievementPKci
; Address            : 0x26DD5C - 0x26DE42
; =========================================================

26DD5C:  PUSH            {R4-R7,LR}
26DD5E:  ADD             R7, SP, #0xC
26DD60:  PUSH.W          {R8-R10}
26DD64:  SUB             SP, SP, #8
26DD66:  MOV             R10, R0
26DD68:  LDR             R0, =(s_warGameService_ptr - 0x26DD70)
26DD6A:  MOV             R9, R1
26DD6C:  ADD             R0, PC; s_warGameService_ptr
26DD6E:  LDR             R0, [R0]; s_warGameService
26DD70:  LDR             R0, [R0]
26DD72:  CBNZ            R0, loc_26DDD0
26DD74:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26DD80)
26DD76:  LDR             R1, =(s_warGameService_class_ptr - 0x26DD82)
26DD78:  LDR.W           R8, =(dword_6D81DC - 0x26DD84)
26DD7C:  ADD             R0, PC; s_warGameService_ctor_ptr
26DD7E:  ADD             R1, PC; s_warGameService_class_ptr
26DD80:  ADD             R8, PC; dword_6D81DC
26DD82:  LDR             R4, [R0]; s_warGameService_ctor
26DD84:  LDR             R5, [R1]; s_warGameService_class
26DD86:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26DD8A:  LDR.W           R3, [R8]
26DD8E:  MOV             R6, R0
26DD90:  LDR             R2, [R4]
26DD92:  LDR             R1, [R5]
26DD94:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26DD98:  MOV             R1, R0
26DD9A:  LDR             R0, =(s_warGameService_ptr - 0x26DDA0)
26DD9C:  ADD             R0, PC; s_warGameService_ptr
26DD9E:  LDR             R4, [R0]; s_warGameService
26DDA0:  STR             R1, [R4]
26DDA2:  LDR             R0, [R6]
26DDA4:  LDR             R2, [R0,#0x54]
26DDA6:  MOV             R0, R6
26DDA8:  BLX             R2
26DDAA:  STR             R0, [R4]
26DDAC:  LDR             R0, [R6]
26DDAE:  LDR.W           R1, [R0,#0x390]
26DDB2:  MOV             R0, R6
26DDB4:  BLX             R1
26DDB6:  CBZ             R0, loc_26DDD0
26DDB8:  LDR             R1, =(aOswrapper - 0x26DDC4); "OSWrapper"
26DDBA:  MOVS            R0, #3; prio
26DDBC:  LDR             R2, =(aJniExceptionLi - 0x26DDC6); "JNI Exception (line %d):"
26DDBE:  MOVS            R3, #0xC8
26DDC0:  ADD             R1, PC; "OSWrapper"
26DDC2:  ADD             R2, PC; "JNI Exception (line %d):"
26DDC4:  BLX             __android_log_print
26DDC8:  LDR             R0, [R6]
26DDCA:  LDR             R1, [R0,#0x40]
26DDCC:  MOV             R0, R6
26DDCE:  BLX             R1
26DDD0:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26DDD4:  MOV             R6, R0
26DDD6:  MOV             R1, R10
26DDD8:  LDR             R0, [R6]
26DDDA:  LDR.W           R2, [R0,#0x29C]
26DDDE:  MOV             R0, R6
26DDE0:  BLX             R2
26DDE2:  MOV             R5, R0
26DDE4:  LDR             R0, =(s_incrementAchievement_ptr - 0x26DDEE)
26DDE6:  LDR             R1, =(s_warGameService_ptr - 0x26DDF0)
26DDE8:  MOV             R3, R5
26DDEA:  ADD             R0, PC; s_incrementAchievement_ptr
26DDEC:  ADD             R1, PC; s_warGameService_ptr
26DDEE:  LDR             R0, [R0]; s_incrementAchievement
26DDF0:  LDR             R1, [R1]; s_warGameService
26DDF2:  LDR             R2, [R0]
26DDF4:  MOV             R0, R6
26DDF6:  LDR             R1, [R1]
26DDF8:  STR.W           R9, [SP,#0x20+var_20]
26DDFC:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26DE00:  LDR             R0, [R6]
26DE02:  MOV             R1, R5
26DE04:  LDR             R2, [R0,#0x5C]
26DE06:  MOV             R0, R6
26DE08:  BLX             R2
26DE0A:  LDR             R0, [R6]
26DE0C:  LDR.W           R1, [R0,#0x390]
26DE10:  MOV             R0, R6
26DE12:  BLX             R1
26DE14:  CBZ             R0, loc_26DE3A
26DE16:  LDR             R1, =(aOswrapper - 0x26DE24); "OSWrapper"
26DE18:  MOVS            R0, #3; prio
26DE1A:  LDR             R2, =(aJniExceptionLi - 0x26DE26); "JNI Exception (line %d):"
26DE1C:  MOVW            R3, #0x167
26DE20:  ADD             R1, PC; "OSWrapper"
26DE22:  ADD             R2, PC; "JNI Exception (line %d):"
26DE24:  BLX             __android_log_print
26DE28:  LDR             R0, [R6]
26DE2A:  LDR             R1, [R0,#0x40]
26DE2C:  MOV             R0, R6
26DE2E:  ADD             SP, SP, #8
26DE30:  POP.W           {R8-R10}
26DE34:  POP.W           {R4-R7,LR}
26DE38:  BX              R1
26DE3A:  ADD             SP, SP, #8
26DE3C:  POP.W           {R8-R10}
26DE40:  POP             {R4-R7,PC}
