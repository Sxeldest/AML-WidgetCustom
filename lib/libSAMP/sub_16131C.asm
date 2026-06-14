; =========================================================
; Game Engine Function: sub_16131C
; Address            : 0x16131C - 0x161352
; =========================================================

16131C:  PUSH            {R4,R5,R7,LR}
16131E:  ADD             R7, SP, #8
161320:  LDR             R5, [R0,#4]
161322:  MOV             R4, R0
161324:  CBZ             R5, loc_16134E
161326:  ADDS            R0, R5, #4
161328:  DMB.W           ISH
16132C:  LDREX.W         R1, [R0]
161330:  SUBS            R2, R1, #1
161332:  STREX.W         R3, R2, [R0]
161336:  CMP             R3, #0
161338:  BNE             loc_16132C
16133A:  DMB.W           ISH
16133E:  CBNZ            R1, loc_16134E
161340:  LDR             R0, [R5]
161342:  LDR             R1, [R0,#8]
161344:  MOV             R0, R5
161346:  BLX             R1
161348:  MOV             R0, R5; this
16134A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
16134E:  MOV             R0, R4
161350:  POP             {R4,R5,R7,PC}
