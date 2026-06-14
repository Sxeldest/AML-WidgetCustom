; =========================================================
; Game Engine Function: sub_81FD0
; Address            : 0x81FD0 - 0x81FEA
; =========================================================

81FD0:  PUSH            {R4,R6,R7,LR}
81FD2:  ADD             R7, SP, #8
81FD4:  MOV             R4, R0
81FD6:  MOVS            R0, #8; unsigned int
81FD8:  BLX             j__Znwj; operator new(uint)
81FDC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIPFvvENS_9allocatorIS3_EES2_EE - 0x81FE4); `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)> ...
81FDE:  LDR             R2, [R4,#4]
81FE0:  ADD             R1, PC; `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>
81FE2:  ADDS            R1, #8
81FE4:  STRD.W          R1, R2, [R0]
81FE8:  POP             {R4,R6,R7,PC}
