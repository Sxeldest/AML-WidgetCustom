; =========================================================
; Game Engine Function: _Z29WarGameService_DeleteSnapshotPKc
; Address            : 0x26EBAC - 0x26EC80
; =========================================================

26EBAC:  PUSH            {R4-R7,LR}
26EBAE:  ADD             R7, SP, #0xC
26EBB0:  PUSH.W          {R8,R9,R11}
26EBB4:  MOV             R9, R0
26EBB6:  LDR             R0, =(s_warGameService_ptr - 0x26EBBC)
26EBB8:  ADD             R0, PC; s_warGameService_ptr
26EBBA:  LDR             R0, [R0]; s_warGameService
26EBBC:  LDR             R0, [R0]
26EBBE:  CBNZ            R0, loc_26EC1C
26EBC0:  LDR             R0, =(s_warGameService_ctor_ptr - 0x26EBCC)
26EBC2:  LDR             R1, =(s_warGameService_class_ptr - 0x26EBCE)
26EBC4:  LDR.W           R8, =(dword_6D81DC - 0x26EBD0)
26EBC8:  ADD             R0, PC; s_warGameService_ctor_ptr
26EBCA:  ADD             R1, PC; s_warGameService_class_ptr
26EBCC:  ADD             R8, PC; dword_6D81DC
26EBCE:  LDR             R6, [R0]; s_warGameService_ctor
26EBD0:  LDR             R4, [R1]; s_warGameService_class
26EBD2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EBD6:  LDR.W           R3, [R8]
26EBDA:  MOV             R5, R0
26EBDC:  LDR             R2, [R6]
26EBDE:  LDR             R1, [R4]
26EBE0:  BLX             j__ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz; _JNIEnv::NewObject(_jclass *,_jmethodID *,...)
26EBE4:  MOV             R1, R0
26EBE6:  LDR             R0, =(s_warGameService_ptr - 0x26EBEC)
26EBE8:  ADD             R0, PC; s_warGameService_ptr
26EBEA:  LDR             R4, [R0]; s_warGameService
26EBEC:  STR             R1, [R4]
26EBEE:  LDR             R0, [R5]
26EBF0:  LDR             R2, [R0,#0x54]
26EBF2:  MOV             R0, R5
26EBF4:  BLX             R2
26EBF6:  STR             R0, [R4]
26EBF8:  LDR             R0, [R5]
26EBFA:  LDR.W           R1, [R0,#0x390]
26EBFE:  MOV             R0, R5
26EC00:  BLX             R1
26EC02:  CBZ             R0, loc_26EC1C
26EC04:  LDR             R1, =(aOswrapper - 0x26EC10); "OSWrapper"
26EC06:  MOVS            R0, #3; prio
26EC08:  LDR             R2, =(aJniExceptionLi - 0x26EC12); "JNI Exception (line %d):"
26EC0A:  MOVS            R3, #0xC8
26EC0C:  ADD             R1, PC; "OSWrapper"
26EC0E:  ADD             R2, PC; "JNI Exception (line %d):"
26EC10:  BLX             __android_log_print
26EC14:  LDR             R0, [R5]
26EC16:  LDR             R1, [R0,#0x40]
26EC18:  MOV             R0, R5
26EC1A:  BLX             R1
26EC1C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26EC20:  MOV             R5, R0
26EC22:  MOV             R1, R9
26EC24:  LDR             R0, [R5]
26EC26:  LDR.W           R2, [R0,#0x29C]
26EC2A:  MOV             R0, R5
26EC2C:  BLX             R2
26EC2E:  MOV             R4, R0
26EC30:  LDR             R0, =(s_deleteSnapshot_ptr - 0x26EC3A)
26EC32:  LDR             R1, =(s_warGameService_ptr - 0x26EC3C)
26EC34:  MOV             R3, R4
26EC36:  ADD             R0, PC; s_deleteSnapshot_ptr
26EC38:  ADD             R1, PC; s_warGameService_ptr
26EC3A:  LDR             R0, [R0]; s_deleteSnapshot
26EC3C:  LDR             R1, [R1]; s_warGameService
26EC3E:  LDR             R2, [R0]
26EC40:  MOV             R0, R5
26EC42:  LDR             R1, [R1]
26EC44:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26EC48:  LDR             R0, [R5]
26EC4A:  LDR.W           R1, [R0,#0x390]
26EC4E:  MOV             R0, R5
26EC50:  BLX             R1
26EC52:  CBZ             R0, loc_26EC6E
26EC54:  LDR             R1, =(aOswrapper - 0x26EC62); "OSWrapper"
26EC56:  MOVS            R0, #3; prio
26EC58:  LDR             R2, =(aJniExceptionLi - 0x26EC64); "JNI Exception (line %d):"
26EC5A:  MOVW            R3, #0x26F
26EC5E:  ADD             R1, PC; "OSWrapper"
26EC60:  ADD             R2, PC; "JNI Exception (line %d):"
26EC62:  BLX             __android_log_print
26EC66:  LDR             R0, [R5]
26EC68:  LDR             R1, [R0,#0x40]
26EC6A:  MOV             R0, R5
26EC6C:  BLX             R1
26EC6E:  LDR             R0, [R5]
26EC70:  MOV             R1, R4
26EC72:  LDR             R2, [R0,#0x5C]
26EC74:  MOV             R0, R5
26EC76:  POP.W           {R8,R9,R11}
26EC7A:  POP.W           {R4-R7,LR}
26EC7E:  BX              R2
