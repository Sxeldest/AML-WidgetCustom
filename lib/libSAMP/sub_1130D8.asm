; =========================================================
; Game Engine Function: sub_1130D8
; Address            : 0x1130D8 - 0x11310E
; =========================================================

1130D8:  PUSH            {R4,R5,R7,LR}
1130DA:  ADD             R7, SP, #8
1130DC:  LDR             R5, [R0,#4]
1130DE:  MOV             R4, R0
1130E0:  CBZ             R5, loc_11310A
1130E2:  ADDS            R0, R5, #4
1130E4:  DMB.W           ISH
1130E8:  LDREX.W         R1, [R0]
1130EC:  SUBS            R2, R1, #1
1130EE:  STREX.W         R3, R2, [R0]
1130F2:  CMP             R3, #0
1130F4:  BNE             loc_1130E8
1130F6:  DMB.W           ISH
1130FA:  CBNZ            R1, loc_11310A
1130FC:  LDR             R0, [R5]
1130FE:  LDR             R1, [R0,#8]
113100:  MOV             R0, R5
113102:  BLX             R1
113104:  MOV             R0, R5; this
113106:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11310A:  MOV             R0, R4
11310C:  POP             {R4,R5,R7,PC}
