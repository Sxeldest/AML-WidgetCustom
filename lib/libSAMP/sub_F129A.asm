; =========================================================
; Game Engine Function: sub_F129A
; Address            : 0xF129A - 0xF130E
; =========================================================

F129A:  PUSH            {R4,R5,R7,LR}
F129C:  ADD             R7, SP, #8
F129E:  CBZ             R1, locret_F12FA
F12A0:  MOV             R3, R0
F12A2:  LDR             R0, [R1,#4]
F12A4:  CBZ             R0, loc_F12AC
F12A6:  LDR             R4, [R0,#4]
F12A8:  ADDS            R4, #1
F12AA:  BNE             locret_F12FA
F12AC:  LDR             R5, [R3,#4]
F12AE:  CBZ             R5, loc_F12D4
F12B0:  ADDS            R0, R5, #4
F12B2:  LDREX.W         R3, [R0]
F12B6:  ADDS            R3, #1
F12B8:  STREX.W         R4, R3, [R0]
F12BC:  CMP             R4, #0
F12BE:  BNE             loc_F12B2
F12C0:  ADD.W           R0, R5, #8
F12C4:  LDREX.W         R3, [R0]
F12C8:  ADDS            R3, #1
F12CA:  STREX.W         R4, R3, [R0]
F12CE:  CMP             R4, #0
F12D0:  BNE             loc_F12C4
F12D2:  LDR             R0, [R1,#4]; this
F12D4:  STRD.W          R2, R5, [R1]
F12D8:  CBZ             R0, loc_F12DE
F12DA:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F12DE:  CBZ             R5, locret_F12FA
F12E0:  ADDS            R0, R5, #4
F12E2:  DMB.W           ISH
F12E6:  LDREX.W         R1, [R0]
F12EA:  SUBS            R2, R1, #1
F12EC:  STREX.W         R3, R2, [R0]
F12F0:  CMP             R3, #0
F12F2:  BNE             loc_F12E6
F12F4:  DMB.W           ISH
F12F8:  CBZ             R1, loc_F12FC
F12FA:  POP             {R4,R5,R7,PC}
F12FC:  LDR             R0, [R5]
F12FE:  LDR             R1, [R0,#8]
F1300:  MOV             R0, R5
F1302:  BLX             R1
F1304:  MOV             R0, R5
F1306:  POP.W           {R4,R5,R7,LR}
F130A:  B.W             sub_2242E0
