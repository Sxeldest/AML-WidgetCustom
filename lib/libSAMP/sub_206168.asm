; =========================================================
; Game Engine Function: sub_206168
; Address            : 0x206168 - 0x20619A
; =========================================================

206168:  PUSH            {R4-R7,LR}
20616A:  ADD             R7, SP, #0xC
20616C:  PUSH.W          {R11}
206170:  MOV             R5, R0
206172:  LDR             R0, =(_ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x20617A)
206174:  MOV             R4, R1
206176:  ADD             R0, PC; _ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
206178:  LDR             R0, [R0]; this
20617A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20617E:  MOV             R6, R0
206180:  MOV             R0, R4
206182:  MOV             R1, R6
206184:  BL              sub_20652C
206188:  MOV             R1, R0; this
20618A:  MOV             R0, R5; int
20618C:  MOV             R2, R6
20618E:  POP.W           {R11}
206192:  POP.W           {R4-R7,LR}
206196:  B.W             sub_206408
