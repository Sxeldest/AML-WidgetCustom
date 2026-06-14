; =========================================================
; Game Engine Function: sub_F2B10
; Address            : 0xF2B10 - 0xF2B46
; =========================================================

F2B10:  PUSH            {R4,R5,R7,LR}
F2B12:  ADD             R7, SP, #8
F2B14:  LDR             R5, [R0,#4]
F2B16:  MOV             R4, R0
F2B18:  CBZ             R5, loc_F2B42
F2B1A:  ADDS            R0, R5, #4
F2B1C:  DMB.W           ISH
F2B20:  LDREX.W         R1, [R0]
F2B24:  SUBS            R2, R1, #1
F2B26:  STREX.W         R3, R2, [R0]
F2B2A:  CMP             R3, #0
F2B2C:  BNE             loc_F2B20
F2B2E:  DMB.W           ISH
F2B32:  CBNZ            R1, loc_F2B42
F2B34:  LDR             R0, [R5]
F2B36:  LDR             R1, [R0,#8]
F2B38:  MOV             R0, R5
F2B3A:  BLX             R1
F2B3C:  MOV             R0, R5; this
F2B3E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2B42:  MOV             R0, R4
F2B44:  POP             {R4,R5,R7,PC}
