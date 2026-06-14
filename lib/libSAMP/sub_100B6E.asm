; =========================================================
; Game Engine Function: sub_100B6E
; Address            : 0x100B6E - 0x100BA4
; =========================================================

100B6E:  PUSH            {R4,R5,R7,LR}
100B70:  ADD             R7, SP, #8
100B72:  LDR             R5, [R0,#4]
100B74:  MOV             R4, R0
100B76:  CBZ             R5, loc_100BA0
100B78:  ADDS            R0, R5, #4
100B7A:  DMB.W           ISH
100B7E:  LDREX.W         R1, [R0]
100B82:  SUBS            R2, R1, #1
100B84:  STREX.W         R3, R2, [R0]
100B88:  CMP             R3, #0
100B8A:  BNE             loc_100B7E
100B8C:  DMB.W           ISH
100B90:  CBNZ            R1, loc_100BA0
100B92:  LDR             R0, [R5]
100B94:  LDR             R1, [R0,#8]
100B96:  MOV             R0, R5
100B98:  BLX             R1
100B9A:  MOV             R0, R5; this
100B9C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
100BA0:  MOV             R0, R4
100BA2:  POP             {R4,R5,R7,PC}
