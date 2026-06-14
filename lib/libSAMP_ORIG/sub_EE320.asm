; =========================================================
; Game Engine Function: sub_EE320
; Address            : 0xEE320 - 0xEE352
; =========================================================

EE320:  PUSH            {R4-R7,LR}
EE322:  ADD             R7, SP, #0xC
EE324:  PUSH.W          {R11}
EE328:  MOV             R5, R0
EE32A:  LDR             R0, =(_ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE332)
EE32C:  MOV             R4, R1
EE32E:  ADD             R0, PC; _ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE330:  LDR             R0, [R0]; this
EE332:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE336:  MOV             R6, R0
EE338:  MOV             R0, R4
EE33A:  MOV             R1, R6
EE33C:  BL              sub_EE674
EE340:  MOV             R1, R0; this
EE342:  MOV             R0, R5; int
EE344:  MOV             R2, R6
EE346:  POP.W           {R11}
EE34A:  POP.W           {R4-R7,LR}
EE34E:  B.W             sub_EE550
