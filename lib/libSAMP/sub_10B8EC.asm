; =========================================================
; Game Engine Function: sub_10B8EC
; Address            : 0x10B8EC - 0x10B922
; =========================================================

10B8EC:  PUSH            {R4,R5,R7,LR}
10B8EE:  ADD             R7, SP, #8
10B8F0:  LDR             R5, [R0,#4]
10B8F2:  MOV             R4, R0
10B8F4:  CBZ             R5, loc_10B91E
10B8F6:  ADDS            R0, R5, #4
10B8F8:  DMB.W           ISH
10B8FC:  LDREX.W         R1, [R0]
10B900:  SUBS            R2, R1, #1
10B902:  STREX.W         R3, R2, [R0]
10B906:  CMP             R3, #0
10B908:  BNE             loc_10B8FC
10B90A:  DMB.W           ISH
10B90E:  CBNZ            R1, loc_10B91E
10B910:  LDR             R0, [R5]
10B912:  LDR             R1, [R0,#8]
10B914:  MOV             R0, R5
10B916:  BLX             R1
10B918:  MOV             R0, R5; this
10B91A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10B91E:  MOV             R0, R4
10B920:  POP             {R4,R5,R7,PC}
