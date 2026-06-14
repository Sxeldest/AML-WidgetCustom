; =========================================================
; Game Engine Function: sub_EE390
; Address            : 0xEE390 - 0xEE3C2
; =========================================================

EE390:  PUSH            {R4-R7,LR}
EE392:  ADD             R7, SP, #0xC
EE394:  PUSH.W          {R11}
EE398:  MOV             R5, R0
EE39A:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE3A2)
EE39C:  MOV             R4, R1
EE39E:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE3A0:  LDR             R0, [R0]; this
EE3A2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE3A6:  MOV             R6, R0
EE3A8:  MOV             R0, R4
EE3AA:  MOV             R1, R6
EE3AC:  BL              sub_EE674
EE3B0:  MOV             R1, R0; this
EE3B2:  MOV             R0, R5; int
EE3B4:  MOV             R2, R6
EE3B6:  POP.W           {R11}
EE3BA:  POP.W           {R4-R7,LR}
EE3BE:  B.W             sub_EE550
