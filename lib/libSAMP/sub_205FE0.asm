; =========================================================
; Game Engine Function: sub_205FE0
; Address            : 0x205FE0 - 0x206012
; =========================================================

205FE0:  PUSH            {R4-R7,LR}
205FE2:  ADD             R7, SP, #0xC
205FE4:  PUSH.W          {R11}
205FE8:  MOV             R5, R0
205FEA:  LDR             R0, =(_ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x205FF2)
205FEC:  MOV             R4, R1
205FEE:  ADD             R0, PC; _ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
205FF0:  LDR             R0, [R0]; this
205FF2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205FF6:  MOV             R6, R0
205FF8:  MOV             R0, R4
205FFA:  MOV             R1, R6
205FFC:  BL              sub_20652C
206000:  MOV             R1, R0; this
206002:  MOV             R0, R5; int
206004:  MOV             R2, R6
206006:  POP.W           {R11}
20600A:  POP.W           {R4-R7,LR}
20600E:  B.W             sub_206408
