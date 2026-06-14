; =========================================================
; Game Engine Function: sub_F2DE0
; Address            : 0xF2DE0 - 0xF2E16
; =========================================================

F2DE0:  PUSH            {R4,R5,R7,LR}
F2DE2:  ADD             R7, SP, #8
F2DE4:  LDR             R5, [R0,#4]
F2DE6:  MOV             R4, R0
F2DE8:  CBZ             R5, loc_F2E12
F2DEA:  ADDS            R0, R5, #4
F2DEC:  DMB.W           ISH
F2DF0:  LDREX.W         R1, [R0]
F2DF4:  SUBS            R2, R1, #1
F2DF6:  STREX.W         R3, R2, [R0]
F2DFA:  CMP             R3, #0
F2DFC:  BNE             loc_F2DF0
F2DFE:  DMB.W           ISH
F2E02:  CBNZ            R1, loc_F2E12
F2E04:  LDR             R0, [R5]
F2E06:  LDR             R1, [R0,#8]
F2E08:  MOV             R0, R5
F2E0A:  BLX             R1
F2E0C:  MOV             R0, R5; this
F2E0E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2E12:  MOV             R0, R4
F2E14:  POP             {R4,R5,R7,PC}
