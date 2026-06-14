; =========================================================
; Game Engine Function: sub_EE2B0
; Address            : 0xEE2B0 - 0xEE2E2
; =========================================================

EE2B0:  PUSH            {R4-R7,LR}
EE2B2:  ADD             R7, SP, #0xC
EE2B4:  PUSH.W          {R11}
EE2B8:  MOV             R5, R0
EE2BA:  LDR             R0, =(_ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE2C2)
EE2BC:  MOV             R4, R1
EE2BE:  ADD             R0, PC; _ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE2C0:  LDR             R0, [R0]; this
EE2C2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE2C6:  MOV             R6, R0
EE2C8:  MOV             R0, R4
EE2CA:  MOV             R1, R6
EE2CC:  BL              sub_EE674
EE2D0:  MOV             R1, R0; this
EE2D2:  MOV             R0, R5; int
EE2D4:  MOV             R2, R6
EE2D6:  POP.W           {R11}
EE2DA:  POP.W           {R4-R7,LR}
EE2DE:  B.W             sub_EE550
