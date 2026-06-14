; =========================================================
; Game Engine Function: sub_F2A5C
; Address            : 0xF2A5C - 0xF2A92
; =========================================================

F2A5C:  PUSH            {R4,R5,R7,LR}
F2A5E:  ADD             R7, SP, #8
F2A60:  LDR             R5, [R0,#4]
F2A62:  MOV             R4, R0
F2A64:  CBZ             R5, loc_F2A8E
F2A66:  ADDS            R0, R5, #4
F2A68:  DMB.W           ISH
F2A6C:  LDREX.W         R1, [R0]
F2A70:  SUBS            R2, R1, #1
F2A72:  STREX.W         R3, R2, [R0]
F2A76:  CMP             R3, #0
F2A78:  BNE             loc_F2A6C
F2A7A:  DMB.W           ISH
F2A7E:  CBNZ            R1, loc_F2A8E
F2A80:  LDR             R0, [R5]
F2A82:  LDR             R1, [R0,#8]
F2A84:  MOV             R0, R5
F2A86:  BLX             R1
F2A88:  MOV             R0, R5; this
F2A8A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2A8E:  MOV             R0, R4
F2A90:  POP             {R4,R5,R7,PC}
