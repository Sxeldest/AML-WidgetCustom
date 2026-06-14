; =========================================================
; Game Engine Function: sub_F6A7A
; Address            : 0xF6A7A - 0xF6A98
; =========================================================

F6A7A:  PUSH            {R4,R6,R7,LR}
F6A7C:  ADD             R7, SP, #8
F6A7E:  LDRB            R2, [R0]
F6A80:  MOV             R4, R1
F6A82:  LDR             R1, [R0,#8]
F6A84:  LSLS            R2, R2, #0x1F
F6A86:  IT EQ
F6A88:  ADDEQ           R1, R0, #4
F6A8A:  SUBS            R1, R4, R1
F6A8C:  MOVS            R2, #1
F6A8E:  ASRS            R1, R1, #2
F6A90:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE5eraseEjj; std::wstring::erase(uint,uint)
F6A94:  MOV             R0, R4
F6A96:  POP             {R4,R6,R7,PC}
