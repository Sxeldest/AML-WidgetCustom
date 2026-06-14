; =========================================================
; Game Engine Function: sub_206280
; Address            : 0x206280 - 0x2062B2
; =========================================================

206280:  PUSH            {R4-R7,LR}
206282:  ADD             R7, SP, #0xC
206284:  PUSH.W          {R11}
206288:  MOV             R5, R0
20628A:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x206292)
20628C:  MOV             R4, R1
20628E:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
206290:  LDR             R0, [R0]; this
206292:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
206296:  MOV             R6, R0
206298:  MOV             R0, R4
20629A:  MOV             R1, R6
20629C:  BL              sub_20652C
2062A0:  MOV             R1, R0; this
2062A2:  MOV             R0, R5; int
2062A4:  MOV             R2, R6
2062A6:  POP.W           {R11}
2062AA:  POP.W           {R4-R7,LR}
2062AE:  B.W             sub_206408
