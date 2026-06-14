; =========================================================
; Game Engine Function: sub_10A9BA
; Address            : 0x10A9BA - 0x10A9F0
; =========================================================

10A9BA:  PUSH            {R4,R5,R7,LR}
10A9BC:  ADD             R7, SP, #8
10A9BE:  LDR             R5, [R0,#4]
10A9C0:  MOV             R4, R0
10A9C2:  CBZ             R5, loc_10A9EC
10A9C4:  ADDS            R0, R5, #4
10A9C6:  DMB.W           ISH
10A9CA:  LDREX.W         R1, [R0]
10A9CE:  SUBS            R2, R1, #1
10A9D0:  STREX.W         R3, R2, [R0]
10A9D4:  CMP             R3, #0
10A9D6:  BNE             loc_10A9CA
10A9D8:  DMB.W           ISH
10A9DC:  CBNZ            R1, loc_10A9EC
10A9DE:  LDR             R0, [R5]
10A9E0:  LDR             R1, [R0,#8]
10A9E2:  MOV             R0, R5
10A9E4:  BLX             R1
10A9E6:  MOV             R0, R5; this
10A9E8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A9EC:  MOV             R0, R4
10A9EE:  POP             {R4,R5,R7,PC}
