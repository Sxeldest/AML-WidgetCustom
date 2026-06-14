; =========================================================
; Game Engine Function: sub_F2D2C
; Address            : 0xF2D2C - 0xF2D62
; =========================================================

F2D2C:  PUSH            {R4,R5,R7,LR}
F2D2E:  ADD             R7, SP, #8
F2D30:  LDR             R5, [R0,#4]
F2D32:  MOV             R4, R0
F2D34:  CBZ             R5, loc_F2D5E
F2D36:  ADDS            R0, R5, #4
F2D38:  DMB.W           ISH
F2D3C:  LDREX.W         R1, [R0]
F2D40:  SUBS            R2, R1, #1
F2D42:  STREX.W         R3, R2, [R0]
F2D46:  CMP             R3, #0
F2D48:  BNE             loc_F2D3C
F2D4A:  DMB.W           ISH
F2D4E:  CBNZ            R1, loc_F2D5E
F2D50:  LDR             R0, [R5]
F2D52:  LDR             R1, [R0,#8]
F2D54:  MOV             R0, R5
F2D56:  BLX             R1
F2D58:  MOV             R0, R5; this
F2D5A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2D5E:  MOV             R0, R4
F2D60:  POP             {R4,R5,R7,PC}
