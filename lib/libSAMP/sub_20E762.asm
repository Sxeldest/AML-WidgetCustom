; =========================================================
; Game Engine Function: sub_20E762
; Address            : 0x20E762 - 0x20E77E
; =========================================================

20E762:  PUSH            {R4,R6,R7,LR}
20E764:  ADD             R7, SP, #8
20E766:  LDRB            R2, [R0]
20E768:  MOV             R4, R1
20E76A:  LDR             R1, [R0,#8]
20E76C:  LSLS            R2, R2, #0x1F
20E76E:  IT EQ
20E770:  ADDEQ           R1, R0, #1
20E772:  SUBS            R1, R4, R1
20E774:  MOVS            R2, #1
20E776:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj; std::string::erase(uint,uint)
20E77A:  MOV             R0, R4
20E77C:  POP             {R4,R6,R7,PC}
