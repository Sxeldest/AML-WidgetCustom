; =========================================================
; Game Engine Function: _Z34WarGameService_notifyStateConflictP7_JNIEnvP8_jobjectiP8_jstringP11_jbyteArrayS6_
; Address            : 0x27BCE4 - 0x27BDE0
; =========================================================

27BCE4:  PUSH            {R4-R7,LR}
27BCE6:  ADD             R7, SP, #0xC
27BCE8:  PUSH.W          {R8-R11}
27BCEC:  SUB             SP, SP, #0x14
27BCEE:  STR             R3, [SP,#0x30+var_28]
27BCF0:  MOV             R4, R0
27BCF2:  LDR             R0, [R4]
27BCF4:  LDR.W           R8, [R7,#arg_0]
27BCF8:  LDR.W           R2, [R0,#0x2AC]
27BCFC:  MOV             R0, R4
27BCFE:  MOV             R1, R8
27BD00:  BLX             R2
27BD02:  MOV             R11, R0
27BD04:  LDR             R0, [R4]
27BD06:  LDR             R1, [R7,#arg_4]
27BD08:  LDR.W           R2, [R0,#0x2AC]
27BD0C:  MOV             R0, R4
27BD0E:  BLX             R2
27BD10:  MOV             R5, R0
27BD12:  MOV             R0, R11; unsigned int
27BD14:  BLX             _Znaj; operator new[](uint)
27BD18:  MOV             R9, R0
27BD1A:  MOV             R0, R5; unsigned int
27BD1C:  BLX             _Znaj; operator new[](uint)
27BD20:  MOV             R10, R0
27BD22:  LDR             R0, [R4]
27BD24:  MOV             R1, R8
27BD26:  MOVS            R2, #0
27BD28:  MOV             R3, R11
27BD2A:  LDR.W           R6, [R0,#0x320]
27BD2E:  MOV             R0, R4
27BD30:  STR.W           R9, [SP,#0x30+var_30]
27BD34:  BLX             R6
27BD36:  LDR             R0, [R4]
27BD38:  MOVS            R2, #0
27BD3A:  LDR             R1, [R7,#arg_4]
27BD3C:  MOV             R3, R5
27BD3E:  LDR.W           R6, [R0,#0x320]
27BD42:  MOV             R0, R4
27BD44:  STR.W           R10, [SP,#0x30+var_30]
27BD48:  BLX             R6
27BD4A:  LDR             R0, =(off_6D7128 - 0x27BD56)
27BD4C:  ADD             R1, SP, #0x30+p
27BD4E:  MOV             R2, R10
27BD50:  MOV             R3, R5
27BD52:  ADD             R0, PC; off_6D7128
27BD54:  LDR             R6, [R0]
27BD56:  ADD             R0, SP, #0x30+var_24
27BD58:  STRD.W          R1, R0, [SP,#0x30+var_30]
27BD5C:  MOV             R0, R9
27BD5E:  MOV             R1, R11
27BD60:  BLX             R6
27BD62:  LDR             R1, [SP,#0x30+var_24]
27BD64:  CBZ             R1, loc_27BDA0
27BD66:  LDR             R0, [R4]
27BD68:  LDR.W           R2, [R0,#0x2C0]
27BD6C:  MOV             R0, R4
27BD6E:  BLX             R2
27BD70:  MOV             R5, R0
27BD72:  LDR             R0, [R4]
27BD74:  LDRD.W          R3, R1, [SP,#0x30+var_24]
27BD78:  MOVS            R2, #0
27BD7A:  LDR.W           R6, [R0,#0x340]
27BD7E:  MOV             R0, R4
27BD80:  STR             R1, [SP,#0x30+var_30]
27BD82:  MOV             R1, R5
27BD84:  BLX             R6
27BD86:  LDR             R0, =(s_resolveState_ptr - 0x27BD8E)
27BD88:  LDR             R1, =(s_warGameService_ptr - 0x27BD92)
27BD8A:  ADD             R0, PC; s_resolveState_ptr
27BD8C:  LDR             R3, [SP,#0x30+var_28]
27BD8E:  ADD             R1, PC; s_warGameService_ptr
27BD90:  STR             R5, [SP,#0x30+var_30]
27BD92:  LDR             R0, [R0]; s_resolveState
27BD94:  LDR             R1, [R1]; s_warGameService
27BD96:  LDR             R2, [R0]
27BD98:  MOV             R0, R4
27BD9A:  LDR             R1, [R1]
27BD9C:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27BDA0:  MOV             R0, R9; void *
27BDA2:  BLX             _ZdaPv; operator delete[](void *)
27BDA6:  MOV             R0, R10; void *
27BDA8:  BLX             _ZdaPv; operator delete[](void *)
27BDAC:  LDR             R0, [SP,#0x30+p]; p
27BDAE:  BLX             free
27BDB2:  LDR             R0, [R4]
27BDB4:  LDR.W           R1, [R0,#0x390]
27BDB8:  MOV             R0, R4
27BDBA:  BLX             R1
27BDBC:  CBZ             R0, loc_27BDD8
27BDBE:  LDR             R1, =(aOswrapper - 0x27BDCC); "OSWrapper"
27BDC0:  MOVS            R0, #3; prio
27BDC2:  LDR             R2, =(aJniExceptionLi - 0x27BDCE); "JNI Exception (line %d):"
27BDC4:  MOVW            R3, #0x20A
27BDC8:  ADD             R1, PC; "OSWrapper"
27BDCA:  ADD             R2, PC; "JNI Exception (line %d):"
27BDCC:  BLX             __android_log_print
27BDD0:  LDR             R0, [R4]
27BDD2:  LDR             R1, [R0,#0x40]
27BDD4:  MOV             R0, R4
27BDD6:  BLX             R1
27BDD8:  ADD             SP, SP, #0x14
27BDDA:  POP.W           {R8-R11}
27BDDE:  POP             {R4-R7,PC}
