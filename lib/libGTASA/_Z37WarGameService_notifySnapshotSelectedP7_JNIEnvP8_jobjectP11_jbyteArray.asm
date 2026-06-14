; =========================================================
; Game Engine Function: _Z37WarGameService_notifySnapshotSelectedP7_JNIEnvP8_jobjectP11_jbyteArray
; Address            : 0x27BF94 - 0x27C05E
; =========================================================

27BF94:  PUSH            {R4-R7,LR}
27BF96:  ADD             R7, SP, #0xC
27BF98:  PUSH.W          {R8}
27BF9C:  SUB             SP, SP, #8
27BF9E:  MOV             R4, R2
27BFA0:  MOV             R8, R0
27BFA2:  CBZ             R4, loc_27BFD0
27BFA4:  LDR.W           R0, [R8]
27BFA8:  MOV             R1, R4
27BFAA:  LDR.W           R2, [R0,#0x2AC]
27BFAE:  MOV             R0, R8
27BFB0:  BLX             R2
27BFB2:  MOV             R5, R0
27BFB4:  BLX             _Znaj; operator new[](uint)
27BFB8:  MOV             R6, R0
27BFBA:  LDR.W           R0, [R8]
27BFBE:  MOV             R1, R4
27BFC0:  MOVS            R2, #0
27BFC2:  MOV             R3, R5
27BFC4:  LDR.W           R12, [R0,#0x320]
27BFC8:  MOV             R0, R8
27BFCA:  STR             R6, [SP,#0x18+var_18]
27BFCC:  BLX             R12
27BFCE:  B               loc_27BFD4
27BFD0:  MOVS            R5, #0
27BFD2:  MOVS            R6, #0
27BFD4:  LDR             R0, =(gameServiceMutex_ptr - 0x27BFDA)
27BFD6:  ADD             R0, PC; gameServiceMutex_ptr
27BFD8:  LDR             R0, [R0]; gameServiceMutex
27BFDA:  LDR             R0, [R0]; mutex
27BFDC:  BLX             pthread_mutex_lock
27BFE0:  LDR             R0, =(byte_6D7145 - 0x27BFE6)
27BFE2:  ADD             R0, PC; byte_6D7145
27BFE4:  LDRB            R0, [R0]
27BFE6:  CMP             R0, #1
27BFE8:  BNE             loc_27BFF8
27BFEA:  LDR             R0, =(byte_6D7148 - 0x27BFF0)
27BFEC:  ADD             R0, PC; byte_6D7148
27BFEE:  LDR             R0, [R0,#(dword_6D714C - 0x6D7148)]; void *
27BFF0:  CMP             R0, #0
27BFF2:  IT NE
27BFF4:  BLXNE           _ZdaPv; operator delete[](void *)
27BFF8:  LDR             R1, =(gameServiceMutex_ptr - 0x27C004)
27BFFA:  CMP             R6, #0
27BFFC:  LDR             R0, =(byte_6D7148 - 0x27C008)
27BFFE:  MOV             R3, R6
27C000:  ADD             R1, PC; gameServiceMutex_ptr
27C002:  LDR             R2, =(byte_6D7145 - 0x27C00C)
27C004:  ADD             R0, PC; byte_6D7148
27C006:  LDR             R1, [R1]; gameServiceMutex
27C008:  ADD             R2, PC; byte_6D7145
27C00A:  STR             R6, [R0,#(dword_6D714C - 0x6D7148)]
27C00C:  IT NE
27C00E:  MOVNE           R3, #1
27C010:  STRB            R3, [R0]
27C012:  IT EQ
27C014:  MOVEQ           R5, R6
27C016:  STR             R5, [R0,#(dword_6D7150 - 0x6D7148)]
27C018:  LDR             R0, [R1]; mutex
27C01A:  MOVS            R1, #1
27C01C:  STRB            R1, [R2]
27C01E:  BLX             pthread_mutex_unlock
27C022:  LDR.W           R0, [R8]
27C026:  LDR.W           R1, [R0,#0x390]
27C02A:  MOV             R0, R8
27C02C:  BLX             R1
27C02E:  CBZ             R0, loc_27C056
27C030:  LDR             R1, =(aOswrapper - 0x27C03E); "OSWrapper"
27C032:  MOVS            R0, #3; prio
27C034:  LDR             R2, =(aJniExceptionLi - 0x27C040); "JNI Exception (line %d):"
27C036:  MOV.W           R3, #0x290
27C03A:  ADD             R1, PC; "OSWrapper"
27C03C:  ADD             R2, PC; "JNI Exception (line %d):"
27C03E:  BLX             __android_log_print
27C042:  LDR.W           R0, [R8]
27C046:  LDR             R1, [R0,#0x40]
27C048:  MOV             R0, R8
27C04A:  ADD             SP, SP, #8
27C04C:  POP.W           {R8}
27C050:  POP.W           {R4-R7,LR}
27C054:  BX              R1
27C056:  ADD             SP, SP, #8
27C058:  POP.W           {R8}
27C05C:  POP             {R4-R7,PC}
