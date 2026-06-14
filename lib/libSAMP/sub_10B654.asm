; =========================================================
; Game Engine Function: sub_10B654
; Address            : 0x10B654 - 0x10B674
; =========================================================

10B654:  PUSH            {R4,R6,R7,LR}
10B656:  ADD             R7, SP, #8
10B658:  MOV             R4, R0
10B65A:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI14CRedAndBlueHudNS_9allocatorIS1_EEEE - 0x10B662); `vtable for'std::__shared_ptr_emplace<CRedAndBlueHud> ...
10B65C:  MOVS            R1, #0
10B65E:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CRedAndBlueHud>
10B660:  STR             R1, [R4,#8]
10B662:  ADDS            R0, #8
10B664:  STRD.W          R0, R1, [R4]
10B668:  ADD.W           R0, R4, #0xC
10B66C:  BL              sub_115E8C
10B670:  MOV             R0, R4
10B672:  POP             {R4,R6,R7,PC}
