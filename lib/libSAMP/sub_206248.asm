; =========================================================
; Game Engine Function: sub_206248
; Address            : 0x206248 - 0x20627A
; =========================================================

206248:  PUSH            {R4-R7,LR}
20624A:  ADD             R7, SP, #0xC
20624C:  PUSH.W          {R11}
206250:  MOV             R5, R0
206252:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x20625A)
206254:  MOV             R4, R1
206256:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
206258:  LDR             R0, [R0]; this
20625A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20625E:  MOV             R6, R0
206260:  MOV             R0, R4
206262:  MOV             R1, R6
206264:  BL              sub_20652C
206268:  MOV             R1, R0; this
20626A:  MOV             R0, R5; int
20626C:  MOV             R2, R6
20626E:  POP.W           {R11}
206272:  POP.W           {R4-R7,LR}
206276:  B.W             sub_206408
