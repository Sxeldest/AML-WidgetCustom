; =========================================================
; Game Engine Function: sub_F139E
; Address            : 0xF139E - 0xF1412
; =========================================================

F139E:  PUSH            {R4,R5,R7,LR}
F13A0:  ADD             R7, SP, #8
F13A2:  CBZ             R1, locret_F13FE
F13A4:  MOV             R3, R0
F13A6:  LDR             R0, [R1,#4]
F13A8:  CBZ             R0, loc_F13B0
F13AA:  LDR             R4, [R0,#4]
F13AC:  ADDS            R4, #1
F13AE:  BNE             locret_F13FE
F13B0:  LDR             R5, [R3,#4]
F13B2:  CBZ             R5, loc_F13D8
F13B4:  ADDS            R0, R5, #4
F13B6:  LDREX.W         R3, [R0]
F13BA:  ADDS            R3, #1
F13BC:  STREX.W         R4, R3, [R0]
F13C0:  CMP             R4, #0
F13C2:  BNE             loc_F13B6
F13C4:  ADD.W           R0, R5, #8
F13C8:  LDREX.W         R3, [R0]
F13CC:  ADDS            R3, #1
F13CE:  STREX.W         R4, R3, [R0]
F13D2:  CMP             R4, #0
F13D4:  BNE             loc_F13C8
F13D6:  LDR             R0, [R1,#4]; this
F13D8:  STRD.W          R2, R5, [R1]
F13DC:  CBZ             R0, loc_F13E2
F13DE:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F13E2:  CBZ             R5, locret_F13FE
F13E4:  ADDS            R0, R5, #4
F13E6:  DMB.W           ISH
F13EA:  LDREX.W         R1, [R0]
F13EE:  SUBS            R2, R1, #1
F13F0:  STREX.W         R3, R2, [R0]
F13F4:  CMP             R3, #0
F13F6:  BNE             loc_F13EA
F13F8:  DMB.W           ISH
F13FC:  CBZ             R1, loc_F1400
F13FE:  POP             {R4,R5,R7,PC}
F1400:  LDR             R0, [R5]
F1402:  LDR             R1, [R0,#8]
F1404:  MOV             R0, R5
F1406:  BLX             R1
F1408:  MOV             R0, R5
F140A:  POP.W           {R4,R5,R7,LR}
F140E:  B.W             sub_2242E0
