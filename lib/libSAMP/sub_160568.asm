; =========================================================
; Game Engine Function: sub_160568
; Address            : 0x160568 - 0x16059E
; =========================================================

160568:  PUSH            {R4,R5,R7,LR}
16056A:  ADD             R7, SP, #8
16056C:  LDR             R5, [R0,#4]
16056E:  MOV             R4, R0
160570:  CBZ             R5, loc_16059A
160572:  ADDS            R0, R5, #4
160574:  DMB.W           ISH
160578:  LDREX.W         R1, [R0]
16057C:  SUBS            R2, R1, #1
16057E:  STREX.W         R3, R2, [R0]
160582:  CMP             R3, #0
160584:  BNE             loc_160578
160586:  DMB.W           ISH
16058A:  CBNZ            R1, loc_16059A
16058C:  LDR             R0, [R5]
16058E:  LDR             R1, [R0,#8]
160590:  MOV             R0, R5
160592:  BLX             R1
160594:  MOV             R0, R5; this
160596:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
16059A:  MOV             R0, R4
16059C:  POP             {R4,R5,R7,PC}
