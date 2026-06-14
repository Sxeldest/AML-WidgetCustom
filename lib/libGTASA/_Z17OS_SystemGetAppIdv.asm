; =========================================================
; Game Engine Function: _Z17OS_SystemGetAppIdv
; Address            : 0x26BD5C - 0x26BDD2
; =========================================================

26BD5C:  LDR             R0, =(staticAppId_ptr - 0x26BD62)
26BD5E:  ADD             R0, PC; staticAppId_ptr
26BD60:  LDR             R0, [R0]; staticAppId
26BD62:  LDRB            R0, [R0]
26BD64:  CBNZ            R0, loc_26BDCA
26BD66:  PUSH            {R4-R7,LR}
26BD68:  ADD             R7, SP, #0xC
26BD6A:  PUSH.W          {R11}
26BD6E:  SUB             SP, SP, #8
26BD70:  LDR             R0, =(s_GetAppId_ptr - 0x26BD78)
26BD72:  LDR             R5, =(dword_6D81DC - 0x26BD7A)
26BD74:  ADD             R0, PC; s_GetAppId_ptr
26BD76:  ADD             R5, PC; dword_6D81DC
26BD78:  LDR             R6, [R0]; s_GetAppId
26BD7A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BD7E:  LDR             R1, [R5]
26BD80:  MOV             R4, R0
26BD82:  LDR             R2, [R6]
26BD84:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26BD88:  MOV             R5, R0
26BD8A:  LDR             R0, [R4]
26BD8C:  SUB.W           R2, R7, #-var_11
26BD90:  MOV             R1, R5
26BD92:  LDR.W           R3, [R0,#0x2A4]
26BD96:  MOV             R0, R4
26BD98:  BLX             R3
26BD9A:  MOV             R6, R0
26BD9C:  LDR             R0, =(staticAppId_ptr - 0x26BDA4)
26BD9E:  MOV             R1, R6; char *
26BDA0:  ADD             R0, PC; staticAppId_ptr
26BDA2:  LDR             R0, [R0]; staticAppId ; char *
26BDA4:  BLX             strcpy
26BDA8:  LDR             R0, [R4]
26BDAA:  MOV             R1, R5
26BDAC:  MOV             R2, R6
26BDAE:  LDR.W           R3, [R0,#0x2A8]
26BDB2:  MOV             R0, R4
26BDB4:  BLX             R3
26BDB6:  LDR             R0, [R4]
26BDB8:  MOV             R1, R5
26BDBA:  LDR             R2, [R0,#0x5C]
26BDBC:  MOV             R0, R4
26BDBE:  BLX             R2
26BDC0:  ADD             SP, SP, #8
26BDC2:  POP.W           {R11}
26BDC6:  POP.W           {R4-R7,LR}
26BDCA:  LDR             R0, =(staticAppId_ptr - 0x26BDD0)
26BDCC:  ADD             R0, PC; staticAppId_ptr
26BDCE:  LDR             R0, [R0]; staticAppId
26BDD0:  BX              LR
