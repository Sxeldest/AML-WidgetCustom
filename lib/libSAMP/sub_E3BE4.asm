; =========================================================
; Game Engine Function: sub_E3BE4
; Address            : 0xE3BE4 - 0xE3C0C
; =========================================================

E3BE4:  PUSH            {R4,R6,R7,LR}
E3BE6:  ADD             R7, SP, #8
E3BE8:  MOV             R4, R0
E3BEA:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3BF4)
E3BEC:  LDRB.W          R1, [R4,#0x20]
E3BF0:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3BF2:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
E3BF4:  ADDS            R0, #8
E3BF6:  STR             R0, [R4]
E3BF8:  LSLS            R0, R1, #0x1F
E3BFA:  ITT NE
E3BFC:  LDRNE           R0, [R4,#0x28]; void *
E3BFE:  BLXNE           j__ZdlPv; operator delete(void *)
E3C02:  MOV             R0, R4
E3C04:  POP.W           {R4,R6,R7,LR}
E3C08:  B.W             sub_224274
