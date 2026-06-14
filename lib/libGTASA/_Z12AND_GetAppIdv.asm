; =========================================================
; Game Engine Function: _Z12AND_GetAppIdv
; Address            : 0x26BDE8 - 0x26BE5E
; =========================================================

26BDE8:  LDR             R0, =(staticAppId_ptr - 0x26BDEE)
26BDEA:  ADD             R0, PC; staticAppId_ptr
26BDEC:  LDR             R0, [R0]; staticAppId
26BDEE:  LDRB            R0, [R0]
26BDF0:  CBNZ            R0, loc_26BE56
26BDF2:  PUSH            {R4-R7,LR}
26BDF4:  ADD             R7, SP, #0xC
26BDF6:  PUSH.W          {R11}
26BDFA:  SUB             SP, SP, #8
26BDFC:  LDR             R0, =(s_GetAppId_ptr - 0x26BE04)
26BDFE:  LDR             R5, =(dword_6D81DC - 0x26BE06)
26BE00:  ADD             R0, PC; s_GetAppId_ptr
26BE02:  ADD             R5, PC; dword_6D81DC
26BE04:  LDR             R6, [R0]; s_GetAppId
26BE06:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BE0A:  LDR             R1, [R5]
26BE0C:  MOV             R4, R0
26BE0E:  LDR             R2, [R6]
26BE10:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
26BE14:  MOV             R5, R0
26BE16:  LDR             R0, [R4]
26BE18:  SUB.W           R2, R7, #-var_11
26BE1C:  MOV             R1, R5
26BE1E:  LDR.W           R3, [R0,#0x2A4]
26BE22:  MOV             R0, R4
26BE24:  BLX             R3
26BE26:  MOV             R6, R0
26BE28:  LDR             R0, =(staticAppId_ptr - 0x26BE30)
26BE2A:  MOV             R1, R6; char *
26BE2C:  ADD             R0, PC; staticAppId_ptr
26BE2E:  LDR             R0, [R0]; staticAppId ; char *
26BE30:  BLX             strcpy
26BE34:  LDR             R0, [R4]
26BE36:  MOV             R1, R5
26BE38:  MOV             R2, R6
26BE3A:  LDR.W           R3, [R0,#0x2A8]
26BE3E:  MOV             R0, R4
26BE40:  BLX             R3
26BE42:  LDR             R0, [R4]
26BE44:  MOV             R1, R5
26BE46:  LDR             R2, [R0,#0x5C]
26BE48:  MOV             R0, R4
26BE4A:  BLX             R2
26BE4C:  ADD             SP, SP, #8
26BE4E:  POP.W           {R11}
26BE52:  POP.W           {R4-R7,LR}
26BE56:  LDR             R0, =(staticAppId_ptr - 0x26BE5C)
26BE58:  ADD             R0, PC; staticAppId_ptr
26BE5A:  LDR             R0, [R0]; staticAppId
26BE5C:  BX              LR
