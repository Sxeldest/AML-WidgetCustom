; =========================================================
; Game Engine Function: sub_100ABA
; Address            : 0x100ABA - 0x100AF0
; =========================================================

100ABA:  PUSH            {R4,R5,R7,LR}
100ABC:  ADD             R7, SP, #8
100ABE:  LDR             R5, [R0,#4]
100AC0:  MOV             R4, R0
100AC2:  CBZ             R5, loc_100AEC
100AC4:  ADDS            R0, R5, #4
100AC6:  DMB.W           ISH
100ACA:  LDREX.W         R1, [R0]
100ACE:  SUBS            R2, R1, #1
100AD0:  STREX.W         R3, R2, [R0]
100AD4:  CMP             R3, #0
100AD6:  BNE             loc_100ACA
100AD8:  DMB.W           ISH
100ADC:  CBNZ            R1, loc_100AEC
100ADE:  LDR             R0, [R5]
100AE0:  LDR             R1, [R0,#8]
100AE2:  MOV             R0, R5
100AE4:  BLX             R1
100AE6:  MOV             R0, R5; this
100AE8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
100AEC:  MOV             R0, R4
100AEE:  POP             {R4,R5,R7,PC}
