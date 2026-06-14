; =========================================================
; Game Engine Function: sub_114014
; Address            : 0x114014 - 0x114036
; =========================================================

114014:  PUSH            {R4,R6,R7,LR}
114016:  ADD             R7, SP, #8
114018:  MOV             R4, R0
11401A:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI15CTransparentSpdNS_9allocatorIS1_EEEE - 0x114020); `vtable for'std::__shared_ptr_emplace<CTransparentSpd> ...
11401C:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CTransparentSpd>
11401E:  ADD.W           R1, R0, #8
114022:  MOV             R0, R4
114024:  STR.W           R1, [R0],#0x10
114028:  BL              sub_114074
11402C:  MOV             R0, R4
11402E:  POP.W           {R4,R6,R7,LR}
114032:  B.W             sub_2242D4
