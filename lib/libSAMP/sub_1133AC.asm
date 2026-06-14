; =========================================================
; Game Engine Function: sub_1133AC
; Address            : 0x1133AC - 0x1133E2
; =========================================================

1133AC:  PUSH            {R4,R5,R7,LR}
1133AE:  ADD             R7, SP, #8
1133B0:  LDR             R5, [R0,#4]
1133B2:  MOV             R4, R0
1133B4:  CBZ             R5, loc_1133DE
1133B6:  ADDS            R0, R5, #4
1133B8:  DMB.W           ISH
1133BC:  LDREX.W         R1, [R0]
1133C0:  SUBS            R2, R1, #1
1133C2:  STREX.W         R3, R2, [R0]
1133C6:  CMP             R3, #0
1133C8:  BNE             loc_1133BC
1133CA:  DMB.W           ISH
1133CE:  CBNZ            R1, loc_1133DE
1133D0:  LDR             R0, [R5]
1133D2:  LDR             R1, [R0,#8]
1133D4:  MOV             R0, R5
1133D6:  BLX             R1
1133D8:  MOV             R0, R5; this
1133DA:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1133DE:  MOV             R0, R4
1133E0:  POP             {R4,R5,R7,PC}
