; =========================================================
; Game Engine Function: sub_12E1EA
; Address            : 0x12E1EA - 0x12E220
; =========================================================

12E1EA:  PUSH            {R4,R5,R7,LR}
12E1EC:  ADD             R7, SP, #8
12E1EE:  LDR             R5, [R0,#4]
12E1F0:  MOV             R4, R0
12E1F2:  CBZ             R5, loc_12E21C
12E1F4:  ADDS            R0, R5, #4
12E1F6:  DMB.W           ISH
12E1FA:  LDREX.W         R1, [R0]
12E1FE:  SUBS            R2, R1, #1
12E200:  STREX.W         R3, R2, [R0]
12E204:  CMP             R3, #0
12E206:  BNE             loc_12E1FA
12E208:  DMB.W           ISH
12E20C:  CBNZ            R1, loc_12E21C
12E20E:  LDR             R0, [R5]
12E210:  LDR             R1, [R0,#8]
12E212:  MOV             R0, R5
12E214:  BLX             R1
12E216:  MOV             R0, R5; this
12E218:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12E21C:  MOV             R0, R4
12E21E:  POP             {R4,R5,R7,PC}
