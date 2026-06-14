; =========================================================
; Game Engine Function: sub_154716
; Address            : 0x154716 - 0x15474C
; =========================================================

154716:  PUSH            {R4,R5,R7,LR}
154718:  ADD             R7, SP, #8
15471A:  LDR             R5, [R0,#4]
15471C:  MOV             R4, R0
15471E:  CBZ             R5, loc_154748
154720:  ADDS            R0, R5, #4
154722:  DMB.W           ISH
154726:  LDREX.W         R1, [R0]
15472A:  SUBS            R2, R1, #1
15472C:  STREX.W         R3, R2, [R0]
154730:  CMP             R3, #0
154732:  BNE             loc_154726
154734:  DMB.W           ISH
154738:  CBNZ            R1, loc_154748
15473A:  LDR             R0, [R5]
15473C:  LDR             R1, [R0,#8]
15473E:  MOV             R0, R5
154740:  BLX             R1
154742:  MOV             R0, R5; this
154744:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
154748:  MOV             R0, R4
15474A:  POP             {R4,R5,R7,PC}
