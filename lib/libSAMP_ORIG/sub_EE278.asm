; =========================================================
; Game Engine Function: sub_EE278
; Address            : 0xEE278 - 0xEE2AA
; =========================================================

EE278:  PUSH            {R4-R7,LR}
EE27A:  ADD             R7, SP, #0xC
EE27C:  PUSH.W          {R11}
EE280:  MOV             R5, R0
EE282:  LDR             R0, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE28A)
EE284:  MOV             R4, R1
EE286:  ADD             R0, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE288:  LDR             R0, [R0]; this
EE28A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE28E:  MOV             R6, R0
EE290:  MOV             R0, R4
EE292:  MOV             R1, R6
EE294:  BL              sub_EE674
EE298:  MOV             R1, R0; this
EE29A:  MOV             R0, R5; int
EE29C:  MOV             R2, R6
EE29E:  POP.W           {R11}
EE2A2:  POP.W           {R4-R7,LR}
EE2A6:  B.W             sub_EE550
