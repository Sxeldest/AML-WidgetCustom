; =========================================================
; Game Engine Function: _Z32WarGameService_notifyStateLoadedP7_JNIEnvP8_jobjectiiP11_jbyteArray
; Address            : 0x27BDF4 - 0x27BEC2
; =========================================================

27BDF4:  PUSH            {R4-R7,LR}
27BDF6:  ADD             R7, SP, #0xC
27BDF8:  PUSH.W          {R8-R10}
27BDFC:  SUB             SP, SP, #8
27BDFE:  LDR             R5, [R7,#arg_0]
27BE00:  MOV             R10, R2
27BE02:  MOV             R4, R0
27BE04:  CBZ             R5, loc_27BE36
27BE06:  LDR             R0, [R4]
27BE08:  MOV             R1, R5
27BE0A:  LDR.W           R2, [R0,#0x2AC]
27BE0E:  MOV             R0, R4
27BE10:  BLX             R2
27BE12:  MOV             R9, R0
27BE14:  BLX             _Znaj; operator new[](uint)
27BE18:  MOV             R8, R0
27BE1A:  LDR             R0, [R4]
27BE1C:  MOV             R1, R5
27BE1E:  MOVS            R2, #0
27BE20:  MOV             R3, R9
27BE22:  LDR.W           R6, [R0,#0x320]
27BE26:  MOV             R0, R4
27BE28:  STR.W           R8, [SP,#0x20+var_20]
27BE2C:  BLX             R6
27BE2E:  CMP.W           R10, #0
27BE32:  BNE             loc_27BE8A
27BE34:  B               loc_27BE44
27BE36:  MOV.W           R9, #0
27BE3A:  MOV.W           R8, #0
27BE3E:  CMP.W           R10, #0
27BE42:  BNE             loc_27BE8A
27BE44:  LDR             R0, =(gameServiceMutex_ptr - 0x27BE4A)
27BE46:  ADD             R0, PC; gameServiceMutex_ptr
27BE48:  LDR             R0, [R0]; gameServiceMutex
27BE4A:  LDR             R0, [R0]; mutex
27BE4C:  BLX             pthread_mutex_lock
27BE50:  LDR             R0, =(byte_6D7130 - 0x27BE56)
27BE52:  ADD             R0, PC; byte_6D7130
27BE54:  LDRB            R0, [R0]
27BE56:  CMP             R0, #1
27BE58:  BNE             loc_27BE68
27BE5A:  LDR             R0, =(dword_6D7134 - 0x27BE60)
27BE5C:  ADD             R0, PC; dword_6D7134
27BE5E:  LDR             R0, [R0,#(dword_6D713C - 0x6D7134)]; void *
27BE60:  CMP             R0, #0
27BE62:  IT NE
27BE64:  BLXNE           _ZdaPv; operator delete[](void *)
27BE68:  LDR             R1, =(gameServiceMutex_ptr - 0x27BE72)
27BE6A:  MOVS            R3, #0
27BE6C:  LDR             R0, =(dword_6D7134 - 0x27BE76)
27BE6E:  ADD             R1, PC; gameServiceMutex_ptr
27BE70:  LDR             R2, =(byte_6D7130 - 0x27BE7A)
27BE72:  ADD             R0, PC; dword_6D7134
27BE74:  LDR             R1, [R1]; gameServiceMutex
27BE76:  ADD             R2, PC; byte_6D7130
27BE78:  STRD.W          R3, R3, [R0]
27BE7C:  STRD.W          R8, R9, [R0,#(dword_6D713C - 0x6D7134)]
27BE80:  LDR             R0, [R1]; mutex
27BE82:  MOVS            R1, #1
27BE84:  STRB            R1, [R2]
27BE86:  BLX             pthread_mutex_unlock
27BE8A:  LDR             R0, [R4]
27BE8C:  LDR.W           R1, [R0,#0x390]
27BE90:  MOV             R0, R4
27BE92:  BLX             R1
27BE94:  CBZ             R0, loc_27BEBA
27BE96:  LDR             R1, =(aOswrapper - 0x27BEA4); "OSWrapper"
27BE98:  MOVS            R0, #3; prio
27BE9A:  LDR             R2, =(aJniExceptionLi - 0x27BEA6); "JNI Exception (line %d):"
27BE9C:  MOVW            R3, #0x21B
27BEA0:  ADD             R1, PC; "OSWrapper"
27BEA2:  ADD             R2, PC; "JNI Exception (line %d):"
27BEA4:  BLX             __android_log_print
27BEA8:  LDR             R0, [R4]
27BEAA:  LDR             R1, [R0,#0x40]
27BEAC:  MOV             R0, R4
27BEAE:  ADD             SP, SP, #8
27BEB0:  POP.W           {R8-R10}
27BEB4:  POP.W           {R4-R7,LR}
27BEB8:  BX              R1
27BEBA:  ADD             SP, SP, #8
27BEBC:  POP.W           {R8-R10}
27BEC0:  POP             {R4-R7,PC}
