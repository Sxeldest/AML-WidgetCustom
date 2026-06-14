; =========================================================
; Game Engine Function: sub_EE2E8
; Address            : 0xEE2E8 - 0xEE31A
; =========================================================

EE2E8:  PUSH            {R4-R7,LR}
EE2EA:  ADD             R7, SP, #0xC
EE2EC:  PUSH.W          {R11}
EE2F0:  MOV             R5, R0
EE2F2:  LDR             R0, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE2FA)
EE2F4:  MOV             R4, R1
EE2F6:  ADD             R0, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE2F8:  LDR             R0, [R0]; this
EE2FA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE2FE:  MOV             R6, R0
EE300:  MOV             R0, R4
EE302:  MOV             R1, R6
EE304:  BL              sub_EE674
EE308:  MOV             R1, R0; this
EE30A:  MOV             R0, R5; int
EE30C:  MOV             R2, R6
EE30E:  POP.W           {R11}
EE312:  POP.W           {R4-R7,LR}
EE316:  B.W             sub_EE550
