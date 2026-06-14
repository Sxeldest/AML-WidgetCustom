; =========================================================
; Game Engine Function: sub_10E060
; Address            : 0x10E060 - 0x10E096
; =========================================================

10E060:  PUSH            {R4,R5,R7,LR}
10E062:  ADD             R7, SP, #8
10E064:  LDR             R5, [R0,#4]
10E066:  MOV             R4, R0
10E068:  CBZ             R5, loc_10E092
10E06A:  ADDS            R0, R5, #4
10E06C:  DMB.W           ISH
10E070:  LDREX.W         R1, [R0]
10E074:  SUBS            R2, R1, #1
10E076:  STREX.W         R3, R2, [R0]
10E07A:  CMP             R3, #0
10E07C:  BNE             loc_10E070
10E07E:  DMB.W           ISH
10E082:  CBNZ            R1, loc_10E092
10E084:  LDR             R0, [R5]
10E086:  LDR             R1, [R0,#8]
10E088:  MOV             R0, R5
10E08A:  BLX             R1
10E08C:  MOV             R0, R5; this
10E08E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10E092:  MOV             R0, R4
10E094:  POP             {R4,R5,R7,PC}
