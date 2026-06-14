; =========================================================
; Game Engine Function: sub_206210
; Address            : 0x206210 - 0x206242
; =========================================================

206210:  PUSH            {R4-R7,LR}
206212:  ADD             R7, SP, #0xC
206214:  PUSH.W          {R11}
206218:  MOV             R5, R0
20621A:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x206222)
20621C:  MOV             R4, R1
20621E:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
206220:  LDR             R0, [R0]; this
206222:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
206226:  MOV             R6, R0
206228:  MOV             R0, R4
20622A:  MOV             R1, R6
20622C:  BL              sub_20652C
206230:  MOV             R1, R0; this
206232:  MOV             R0, R5; int
206234:  MOV             R2, R6
206236:  POP.W           {R11}
20623A:  POP.W           {R4-R7,LR}
20623E:  B.W             sub_206408
