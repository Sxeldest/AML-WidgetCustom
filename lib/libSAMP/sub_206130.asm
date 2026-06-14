; =========================================================
; Game Engine Function: sub_206130
; Address            : 0x206130 - 0x206162
; =========================================================

206130:  PUSH            {R4-R7,LR}
206132:  ADD             R7, SP, #0xC
206134:  PUSH.W          {R11}
206138:  MOV             R5, R0
20613A:  LDR             R0, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x206142)
20613C:  MOV             R4, R1
20613E:  ADD             R0, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
206140:  LDR             R0, [R0]; this
206142:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
206146:  MOV             R6, R0
206148:  MOV             R0, R4
20614A:  MOV             R1, R6
20614C:  BL              sub_20652C
206150:  MOV             R1, R0; this
206152:  MOV             R0, R5; int
206154:  MOV             R2, R6
206156:  POP.W           {R11}
20615A:  POP.W           {R4-R7,LR}
20615E:  B.W             sub_206408
