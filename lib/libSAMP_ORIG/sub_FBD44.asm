; =========================================================
; Game Engine Function: sub_FBD44
; Address            : 0xFBD44 - 0xFBD6C
; =========================================================

FBD44:  PUSH            {R4,R6,R7,LR}
FBD46:  ADD             R7, SP, #8
FBD48:  MOVS            R1, #0x14; n
FBD4A:  MOVS            R2, #0; c
FBD4C:  MOV             R4, R0
FBD4E:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6__initEjw; std::wstring::__init(uint,wchar_t)
FBD52:  LDRB            R0, [R4]
FBD54:  LSLS            R0, R0, #0x1F
FBD56:  LDR             R0, [R4]
FBD58:  BIC.W           R0, R0, #1
FBD5C:  SUB.W           R1, R0, #1
FBD60:  IT EQ
FBD62:  MOVEQ           R1, #1
FBD64:  MOV             R0, R4
FBD66:  BL              sub_FC334
FBD6A:  POP             {R4,R6,R7,PC}
