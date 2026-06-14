; =========================================================
; Game Engine Function: _ZN9CTxdStore9RemoveTxdEi
; Address            : 0x5D4068 - 0x5D40C6
; =========================================================

5D4068:  PUSH            {R4,R6,R7,LR}
5D406A:  ADD             R7, SP, #8
5D406C:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D4072)
5D406E:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D4070:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D4072:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D4074:  LDR             R2, [R1,#4]
5D4076:  LDRSB           R2, [R2,R0]
5D4078:  CMP             R2, #0
5D407A:  BLT             loc_5D4088
5D407C:  LDR             R1, [R1]
5D407E:  RSB.W           R0, R0, R0,LSL#3
5D4082:  ADD.W           R4, R1, R0,LSL#3
5D4086:  B               loc_5D408A
5D4088:  MOVS            R4, #0
5D408A:  LDR             R0, [R4]
5D408C:  CBZ             R0, loc_5D40A0
5D408E:  LDR             R1, =(_Z32RemoveIfRefCountIsGreaterThanOneP9RwTexturePv_ptr - 0x5D4096)
5D4090:  MOVS            R2, #0
5D4092:  ADD             R1, PC; _Z32RemoveIfRefCountIsGreaterThanOneP9RwTexturePv_ptr
5D4094:  LDR             R1, [R1]; RemoveIfRefCountIsGreaterThanOne(RwTexture *,void *)
5D4096:  BLX.W           j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
5D409A:  LDR             R0, [R4]
5D409C:  BLX.W           j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
5D40A0:  LDRSH.W         R0, [R4,#6]
5D40A4:  ADDS            R1, R0, #1
5D40A6:  BEQ             loc_5D40C0
5D40A8:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D40B2)
5D40AA:  RSB.W           R0, R0, R0,LSL#3
5D40AE:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D40B0:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D40B2:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D40B4:  LDR             R1, [R1]
5D40B6:  ADD.W           R0, R1, R0,LSL#3
5D40BA:  LDRH            R1, [R0,#4]
5D40BC:  SUBS            R1, #1
5D40BE:  STRH            R1, [R0,#4]
5D40C0:  MOVS            R0, #0
5D40C2:  STR             R0, [R4]
5D40C4:  POP             {R4,R6,R7,PC}
