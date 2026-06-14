; =========================================================
; Game Engine Function: sub_20E8C4
; Address            : 0x20E8C4 - 0x20E8E2
; =========================================================

20E8C4:  PUSH            {R4,R6,R7,LR}
20E8C6:  ADD             R7, SP, #8
20E8C8:  LDRB            R2, [R0]
20E8CA:  MOV             R4, R1
20E8CC:  LDR             R1, [R0,#8]
20E8CE:  LSLS            R2, R2, #0x1F
20E8D0:  IT EQ
20E8D2:  ADDEQ           R1, R0, #4
20E8D4:  SUBS            R1, R4, R1
20E8D6:  MOVS            R2, #1
20E8D8:  ASRS            R1, R1, #2
20E8DA:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE5eraseEjj; std::wstring::erase(uint,uint)
20E8DE:  MOV             R0, R4
20E8E0:  POP             {R4,R6,R7,PC}
