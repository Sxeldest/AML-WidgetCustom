; =========================================================
; Game Engine Function: sub_1563DC
; Address            : 0x1563DC - 0x156412
; =========================================================

1563DC:  PUSH            {R4,R5,R7,LR}
1563DE:  ADD             R7, SP, #8
1563E0:  LDR             R5, [R0,#4]
1563E2:  MOV             R4, R0
1563E4:  CBZ             R5, loc_15640E
1563E6:  ADDS            R0, R5, #4
1563E8:  DMB.W           ISH
1563EC:  LDREX.W         R1, [R0]
1563F0:  SUBS            R2, R1, #1
1563F2:  STREX.W         R3, R2, [R0]
1563F6:  CMP             R3, #0
1563F8:  BNE             loc_1563EC
1563FA:  DMB.W           ISH
1563FE:  CBNZ            R1, loc_15640E
156400:  LDR             R0, [R5]
156402:  LDR             R1, [R0,#8]
156404:  MOV             R0, R5
156406:  BLX             R1
156408:  MOV             R0, R5; this
15640A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15640E:  MOV             R0, R4
156410:  POP             {R4,R5,R7,PC}
