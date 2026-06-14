; =========================================================
; Game Engine Function: sub_213A9C
; Address            : 0x213A9C - 0x213AC4
; =========================================================

213A9C:  PUSH            {R4,R6,R7,LR}
213A9E:  ADD             R7, SP, #8
213AA0:  MOVS            R1, #0x14; n
213AA2:  MOVS            R2, #0; c
213AA4:  MOV             R4, R0
213AA6:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6__initEjw; std::wstring::__init(uint,wchar_t)
213AAA:  LDRB            R0, [R4]
213AAC:  LSLS            R0, R0, #0x1F
213AAE:  LDR             R0, [R4]
213AB0:  BIC.W           R0, R0, #1
213AB4:  SUB.W           R1, R0, #1
213AB8:  IT EQ
213ABA:  MOVEQ           R1, #1
213ABC:  MOV             R0, R4
213ABE:  BL              sub_214074
213AC2:  POP             {R4,R6,R7,PC}
