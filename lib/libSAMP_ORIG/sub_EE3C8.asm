; =========================================================
; Game Engine Function: sub_EE3C8
; Address            : 0xEE3C8 - 0xEE3FA
; =========================================================

EE3C8:  PUSH            {R4-R7,LR}
EE3CA:  ADD             R7, SP, #0xC
EE3CC:  PUSH.W          {R11}
EE3D0:  MOV             R5, R0
EE3D2:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE3DA)
EE3D4:  MOV             R4, R1
EE3D6:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE3D8:  LDR             R0, [R0]; this
EE3DA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE3DE:  MOV             R6, R0
EE3E0:  MOV             R0, R4
EE3E2:  MOV             R1, R6
EE3E4:  BL              sub_EE674
EE3E8:  MOV             R1, R0; this
EE3EA:  MOV             R0, R5; int
EE3EC:  MOV             R2, R6
EE3EE:  POP.W           {R11}
EE3F2:  POP.W           {R4-R7,LR}
EE3F6:  B.W             sub_EE550
