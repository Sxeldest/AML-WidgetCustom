; =========================================================
; Game Engine Function: sub_F2BC4
; Address            : 0xF2BC4 - 0xF2BFA
; =========================================================

F2BC4:  PUSH            {R4,R5,R7,LR}
F2BC6:  ADD             R7, SP, #8
F2BC8:  LDR             R5, [R0,#4]
F2BCA:  MOV             R4, R0
F2BCC:  CBZ             R5, loc_F2BF6
F2BCE:  ADDS            R0, R5, #4
F2BD0:  DMB.W           ISH
F2BD4:  LDREX.W         R1, [R0]
F2BD8:  SUBS            R2, R1, #1
F2BDA:  STREX.W         R3, R2, [R0]
F2BDE:  CMP             R3, #0
F2BE0:  BNE             loc_F2BD4
F2BE2:  DMB.W           ISH
F2BE6:  CBNZ            R1, loc_F2BF6
F2BE8:  LDR             R0, [R5]
F2BEA:  LDR             R1, [R0,#8]
F2BEC:  MOV             R0, R5
F2BEE:  BLX             R1
F2BF0:  MOV             R0, R5; this
F2BF2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F2BF6:  MOV             R0, R4
F2BF8:  POP             {R4,R5,R7,PC}
