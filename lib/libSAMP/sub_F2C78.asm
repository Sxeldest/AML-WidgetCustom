; =========================================================
; Game Engine Function: sub_F2C78
; Address            : 0xF2C78 - 0xF2CAE
; =========================================================

F2C78:  PUSH            {R4,R5,R7,LR}
F2C7A:  ADD             R7, SP, #8
F2C7C:  LDR             R5, [R0,#4]
F2C7E:  MOV             R4, R0
F2C80:  CBZ             R5, loc_F2CAA
F2C82:  ADDS            R0, R5, #4
F2C84:  DMB.W           ISH
F2C88:  LDREX.W         R1, [R0]
F2C8C:  SUBS            R2, R1, #1
F2C8E:  STREX.W         R3, R2, [R0]
F2C92:  CMP             R3, #0
F2C94:  BNE             loc_F2C88
F2C96:  DMB.W           ISH
F2C9A:  CBNZ            R1, loc_F2CAA
F2C9C:  LDR             R0, [R5]
F2C9E:  LDR             R1, [R0,#8]
F2CA0:  MOV             R0, R5
F2CA2:  BLX             R1
F2CA4:  MOV             R0, R5; this
F2CA6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2CAA:  MOV             R0, R4
F2CAC:  POP             {R4,R5,R7,PC}
