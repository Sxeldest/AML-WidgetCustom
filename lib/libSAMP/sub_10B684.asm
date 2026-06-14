; =========================================================
; Game Engine Function: sub_10B684
; Address            : 0x10B684 - 0x10B6A6
; =========================================================

10B684:  PUSH            {R4,R6,R7,LR}
10B686:  ADD             R7, SP, #8
10B688:  MOV             R4, R0
10B68A:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI14CRedAndBlueHudNS_9allocatorIS1_EEEE - 0x10B690); `vtable for'std::__shared_ptr_emplace<CRedAndBlueHud> ...
10B68C:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CRedAndBlueHud>
10B68E:  ADD.W           R1, R0, #8
10B692:  MOV             R0, R4
10B694:  STR.W           R1, [R0],#0xC
10B698:  BL              sub_115EE8
10B69C:  MOV             R0, R4
10B69E:  POP.W           {R4,R6,R7,LR}
10B6A2:  B.W             sub_2242D4
