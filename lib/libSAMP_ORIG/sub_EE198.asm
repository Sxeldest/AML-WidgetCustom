; =========================================================
; Game Engine Function: sub_EE198
; Address            : 0xEE198 - 0xEE1CA
; =========================================================

EE198:  PUSH            {R4-R7,LR}
EE19A:  ADD             R7, SP, #0xC
EE19C:  PUSH.W          {R11}
EE1A0:  MOV             R5, R0
EE1A2:  LDR             R0, =(_ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE1AA)
EE1A4:  MOV             R4, R1
EE1A6:  ADD             R0, PC; _ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE1A8:  LDR             R0, [R0]; this
EE1AA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE1AE:  MOV             R6, R0
EE1B0:  MOV             R0, R4
EE1B2:  MOV             R1, R6
EE1B4:  BL              sub_EE674
EE1B8:  MOV             R1, R0; this
EE1BA:  MOV             R0, R5; int
EE1BC:  MOV             R2, R6
EE1BE:  POP.W           {R11}
EE1C2:  POP.W           {R4-R7,LR}
EE1C6:  B.W             sub_EE550
