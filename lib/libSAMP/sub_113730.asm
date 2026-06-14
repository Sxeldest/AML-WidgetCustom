; =========================================================
; Game Engine Function: sub_113730
; Address            : 0x113730 - 0x113750
; =========================================================

113730:  PUSH            {R4,R6,R7,LR}
113732:  ADD             R7, SP, #8
113734:  MOV             R4, R0
113736:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI14CRedAndBlueSpdNS_9allocatorIS1_EEEE - 0x11373E); `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd> ...
113738:  MOVS            R1, #0
11373A:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd>
11373C:  STR             R1, [R4,#8]
11373E:  ADDS            R0, #8
113740:  STRD.W          R0, R1, [R4]
113744:  ADD.W           R0, R4, #0x10
113748:  BL              sub_117858
11374C:  MOV             R0, R4
11374E:  POP             {R4,R6,R7,PC}
