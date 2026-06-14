; =========================================================
; Game Engine Function: sub_10B5C4
; Address            : 0x10B5C4 - 0x10B5E4
; =========================================================

10B5C4:  PUSH            {R4,R6,R7,LR}
10B5C6:  ADD             R7, SP, #8
10B5C8:  MOV             R4, R0
10B5CA:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI15CTransparentHudNS_9allocatorIS1_EEEE - 0x10B5D2); `vtable for'std::__shared_ptr_emplace<CTransparentHud> ...
10B5CC:  MOVS            R1, #0
10B5CE:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CTransparentHud>
10B5D0:  STR             R1, [R4,#8]
10B5D2:  ADDS            R0, #8
10B5D4:  STRD.W          R0, R1, [R4]
10B5D8:  ADD.W           R0, R4, #0xC
10B5DC:  BL              sub_116BB0
10B5E0:  MOV             R0, R4
10B5E2:  POP             {R4,R6,R7,PC}
