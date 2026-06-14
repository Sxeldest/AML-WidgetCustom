; =========================================================
; Game Engine Function: _ZN11AndroidFile10AsyncFlushEv
; Address            : 0x27CA0C - 0x27CA86
; =========================================================

27CA0C:  PUSH            {R4-R7,LR}
27CA0E:  ADD             R7, SP, #0xC
27CA10:  PUSH.W          {R8-R10}
27CA14:  MOV             R4, R0
27CA16:  LDR             R0, =(fileMutex_ptr - 0x27CA1C)
27CA18:  ADD             R0, PC; fileMutex_ptr
27CA1A:  LDR             R0, [R0]; fileMutex
27CA1C:  LDR             R0, [R0]; mutex
27CA1E:  BLX             pthread_mutex_lock
27CA22:  LDR             R5, [R4,#0xC]
27CA24:  CBZ             R5, loc_27CA72
27CA26:  LDR             R0, [R4]
27CA28:  LDR.W           R8, [R4,#0x10]
27CA2C:  LDRD.W          R1, R6, [R0]
27CA30:  CMP             R1, #1
27CA32:  BNE             loc_27CA42
27CA34:  MOV             R0, R5; ptr
27CA36:  MOVS            R1, #1; size
27CA38:  MOV             R2, R8; n
27CA3A:  MOV             R3, R6; stream
27CA3C:  BLX             fread
27CA40:  B               loc_27CA6E
27CA42:  MOV             R0, R6; asset
27CA44:  BLX             AAsset_getLength
27CA48:  MOV             R9, R0
27CA4A:  MOV             R0, R6; asset
27CA4C:  BLX             AAsset_getLength
27CA50:  MOV             R10, R0
27CA52:  MOV             R0, R6; asset
27CA54:  BLX             AAsset_getRemainingLength
27CA58:  SUB.W           R0, R0, R10
27CA5C:  MOV             R1, R5; buf
27CA5E:  ADD             R0, R9
27CA60:  CMP             R8, R0
27CA62:  IT GT
27CA64:  MOVGT           R8, R0
27CA66:  MOV             R0, R6; asset
27CA68:  MOV             R2, R8; count
27CA6A:  BLX             AAsset_read
27CA6E:  MOVS            R0, #0
27CA70:  STR             R0, [R4,#0xC]
27CA72:  LDR             R0, =(fileMutex_ptr - 0x27CA78)
27CA74:  ADD             R0, PC; fileMutex_ptr
27CA76:  LDR             R0, [R0]; fileMutex
27CA78:  LDR             R0, [R0]; mutex
27CA7A:  BLX             pthread_mutex_unlock
27CA7E:  MOVS            R0, #0
27CA80:  POP.W           {R8-R10}
27CA84:  POP             {R4-R7,PC}
