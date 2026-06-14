; =========================================================
; Game Engine Function: sub_151E72
; Address            : 0x151E72 - 0x151EA8
; =========================================================

151E72:  PUSH            {R4,R5,R7,LR}
151E74:  ADD             R7, SP, #8
151E76:  LDR             R5, [R0,#4]
151E78:  MOV             R4, R0
151E7A:  CBZ             R5, loc_151EA4
151E7C:  ADDS            R0, R5, #4
151E7E:  DMB.W           ISH
151E82:  LDREX.W         R1, [R0]
151E86:  SUBS            R2, R1, #1
151E88:  STREX.W         R3, R2, [R0]
151E8C:  CMP             R3, #0
151E8E:  BNE             loc_151E82
151E90:  DMB.W           ISH
151E94:  CBNZ            R1, loc_151EA4
151E96:  LDR             R0, [R5]
151E98:  LDR             R1, [R0,#8]
151E9A:  MOV             R0, R5
151E9C:  BLX             R1
151E9E:  MOV             R0, R5; this
151EA0:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
151EA4:  MOV             R0, R4
151EA6:  POP             {R4,R5,R7,PC}
