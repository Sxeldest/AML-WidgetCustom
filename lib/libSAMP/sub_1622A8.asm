; =========================================================
; Game Engine Function: sub_1622A8
; Address            : 0x1622A8 - 0x1622DE
; =========================================================

1622A8:  PUSH            {R4,R5,R7,LR}
1622AA:  ADD             R7, SP, #8
1622AC:  LDR             R5, [R0,#4]
1622AE:  MOV             R4, R0
1622B0:  CBZ             R5, loc_1622DA
1622B2:  ADDS            R0, R5, #4
1622B4:  DMB.W           ISH
1622B8:  LDREX.W         R1, [R0]
1622BC:  SUBS            R2, R1, #1
1622BE:  STREX.W         R3, R2, [R0]
1622C2:  CMP             R3, #0
1622C4:  BNE             loc_1622B8
1622C6:  DMB.W           ISH
1622CA:  CBNZ            R1, loc_1622DA
1622CC:  LDR             R0, [R5]
1622CE:  LDR             R1, [R0,#8]
1622D0:  MOV             R0, R5
1622D2:  BLX             R1
1622D4:  MOV             R0, R5; this
1622D6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1622DA:  MOV             R0, R4
1622DC:  POP             {R4,R5,R7,PC}
