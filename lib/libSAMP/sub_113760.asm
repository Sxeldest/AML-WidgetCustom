; =========================================================
; Game Engine Function: sub_113760
; Address            : 0x113760 - 0x113782
; =========================================================

113760:  PUSH            {R4,R6,R7,LR}
113762:  ADD             R7, SP, #8
113764:  MOV             R4, R0
113766:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI14CRedAndBlueSpdNS_9allocatorIS1_EEEE - 0x11376C); `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd> ...
113768:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd>
11376A:  ADD.W           R1, R0, #8
11376E:  MOV             R0, R4
113770:  STR.W           R1, [R0],#0x10
113774:  BL              sub_1137C0
113778:  MOV             R0, R4
11377A:  POP.W           {R4,R6,R7,LR}
11377E:  B.W             sub_2242D4
