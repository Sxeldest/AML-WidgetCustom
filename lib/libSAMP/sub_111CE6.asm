; =========================================================
; Game Engine Function: sub_111CE6
; Address            : 0x111CE6 - 0x111D1C
; =========================================================

111CE6:  PUSH            {R4,R5,R7,LR}
111CE8:  ADD             R7, SP, #8
111CEA:  LDR             R5, [R0,#4]
111CEC:  MOV             R4, R0
111CEE:  CBZ             R5, loc_111D18
111CF0:  ADDS            R0, R5, #4
111CF2:  DMB.W           ISH
111CF6:  LDREX.W         R1, [R0]
111CFA:  SUBS            R2, R1, #1
111CFC:  STREX.W         R3, R2, [R0]
111D00:  CMP             R3, #0
111D02:  BNE             loc_111CF6
111D04:  DMB.W           ISH
111D08:  CBNZ            R1, loc_111D18
111D0A:  LDR             R0, [R5]
111D0C:  LDR             R1, [R0,#8]
111D0E:  MOV             R0, R5
111D10:  BLX             R1
111D12:  MOV             R0, R5; this
111D14:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
111D18:  MOV             R0, R4
111D1A:  POP             {R4,R5,R7,PC}
