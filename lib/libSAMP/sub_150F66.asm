; =========================================================
; Game Engine Function: sub_150F66
; Address            : 0x150F66 - 0x150F9C
; =========================================================

150F66:  PUSH            {R4,R5,R7,LR}
150F68:  ADD             R7, SP, #8
150F6A:  LDR             R5, [R0,#4]
150F6C:  MOV             R4, R0
150F6E:  CBZ             R5, loc_150F98
150F70:  ADDS            R0, R5, #4
150F72:  DMB.W           ISH
150F76:  LDREX.W         R1, [R0]
150F7A:  SUBS            R2, R1, #1
150F7C:  STREX.W         R3, R2, [R0]
150F80:  CMP             R3, #0
150F82:  BNE             loc_150F76
150F84:  DMB.W           ISH
150F88:  CBNZ            R1, loc_150F98
150F8A:  LDR             R0, [R5]
150F8C:  LDR             R1, [R0,#8]
150F8E:  MOV             R0, R5
150F90:  BLX             R1
150F92:  MOV             R0, R5; this
150F94:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
150F98:  MOV             R0, R4
150F9A:  POP             {R4,R5,R7,PC}
