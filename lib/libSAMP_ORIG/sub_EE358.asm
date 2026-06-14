; =========================================================
; Game Engine Function: sub_EE358
; Address            : 0xEE358 - 0xEE38A
; =========================================================

EE358:  PUSH            {R4-R7,LR}
EE35A:  ADD             R7, SP, #0xC
EE35C:  PUSH.W          {R11}
EE360:  MOV             R5, R0
EE362:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE36A)
EE364:  MOV             R4, R1
EE366:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE368:  LDR             R0, [R0]; this
EE36A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE36E:  MOV             R6, R0
EE370:  MOV             R0, R4
EE372:  MOV             R1, R6
EE374:  BL              sub_EE674
EE378:  MOV             R1, R0; this
EE37A:  MOV             R0, R5; int
EE37C:  MOV             R2, R6
EE37E:  POP.W           {R11}
EE382:  POP.W           {R4-R7,LR}
EE386:  B.W             sub_EE550
