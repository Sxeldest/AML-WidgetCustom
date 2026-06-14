; =========================================================
; Game Engine Function: sub_162424
; Address            : 0x162424 - 0x16245A
; =========================================================

162424:  PUSH            {R4,R5,R7,LR}
162426:  ADD             R7, SP, #8
162428:  LDR             R5, [R0,#4]
16242A:  MOV             R4, R0
16242C:  CBZ             R5, loc_162456
16242E:  ADDS            R0, R5, #4
162430:  DMB.W           ISH
162434:  LDREX.W         R1, [R0]
162438:  SUBS            R2, R1, #1
16243A:  STREX.W         R3, R2, [R0]
16243E:  CMP             R3, #0
162440:  BNE             loc_162434
162442:  DMB.W           ISH
162446:  CBNZ            R1, loc_162456
162448:  LDR             R0, [R5]
16244A:  LDR             R1, [R0,#8]
16244C:  MOV             R0, R5
16244E:  BLX             R1
162450:  MOV             R0, R5; this
162452:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
162456:  MOV             R0, R4
162458:  POP             {R4,R5,R7,PC}
