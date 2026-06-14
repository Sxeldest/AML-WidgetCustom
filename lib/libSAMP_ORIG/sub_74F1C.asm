; =========================================================
; Game Engine Function: sub_74F1C
; Address            : 0x74F1C - 0x74F44
; =========================================================

74F1C:  PUSH            {R4,R6,R7,LR}
74F1E:  ADD             R7, SP, #8
74F20:  MOV             R4, R0
74F22:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74F2C)
74F24:  LDRB.W          R1, [R4,#0x20]
74F28:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74F2A:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
74F2C:  ADDS            R0, #8
74F2E:  STR             R0, [R4]
74F30:  LSLS            R0, R1, #0x1F
74F32:  ITT NE
74F34:  LDRNE           R0, [R4,#0x28]; void *
74F36:  BLXNE           j__ZdlPv; operator delete(void *)
74F3A:  MOV             R0, R4
74F3C:  POP.W           {R4,R6,R7,LR}
74F40:  B.W             sub_10C170
