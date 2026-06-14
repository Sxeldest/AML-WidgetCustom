; =========================================================
; Game Engine Function: sub_1587E8
; Address            : 0x1587E8 - 0x15881E
; =========================================================

1587E8:  PUSH            {R4,R5,R7,LR}
1587EA:  ADD             R7, SP, #8
1587EC:  LDR             R5, [R0,#4]
1587EE:  MOV             R4, R0
1587F0:  CBZ             R5, loc_15881A
1587F2:  ADDS            R0, R5, #4
1587F4:  DMB.W           ISH
1587F8:  LDREX.W         R1, [R0]
1587FC:  SUBS            R2, R1, #1
1587FE:  STREX.W         R3, R2, [R0]
158802:  CMP             R3, #0
158804:  BNE             loc_1587F8
158806:  DMB.W           ISH
15880A:  CBNZ            R1, loc_15881A
15880C:  LDR             R0, [R5]
15880E:  LDR             R1, [R0,#8]
158810:  MOV             R0, R5
158812:  BLX             R1
158814:  MOV             R0, R5; this
158816:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15881A:  MOV             R0, R4
15881C:  POP             {R4,R5,R7,PC}
