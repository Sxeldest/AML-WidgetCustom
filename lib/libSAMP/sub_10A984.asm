; =========================================================
; Game Engine Function: sub_10A984
; Address            : 0x10A984 - 0x10A9BA
; =========================================================

10A984:  PUSH            {R4,R5,R7,LR}
10A986:  ADD             R7, SP, #8
10A988:  LDR             R5, [R0,#4]
10A98A:  MOV             R4, R0
10A98C:  CBZ             R5, loc_10A9B6
10A98E:  ADDS            R0, R5, #4
10A990:  DMB.W           ISH
10A994:  LDREX.W         R1, [R0]
10A998:  SUBS            R2, R1, #1
10A99A:  STREX.W         R3, R2, [R0]
10A99E:  CMP             R3, #0
10A9A0:  BNE             loc_10A994
10A9A2:  DMB.W           ISH
10A9A6:  CBNZ            R1, loc_10A9B6
10A9A8:  LDR             R0, [R5]
10A9AA:  LDR             R1, [R0,#8]
10A9AC:  MOV             R0, R5
10A9AE:  BLX             R1
10A9B0:  MOV             R0, R5; this
10A9B2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A9B6:  MOV             R0, R4
10A9B8:  POP             {R4,R5,R7,PC}
