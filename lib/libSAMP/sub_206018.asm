; =========================================================
; Game Engine Function: sub_206018
; Address            : 0x206018 - 0x20604A
; =========================================================

206018:  PUSH            {R4-R7,LR}
20601A:  ADD             R7, SP, #0xC
20601C:  PUSH.W          {R11}
206020:  MOV             R5, R0
206022:  LDR             R0, =(_ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x20602A)
206024:  MOV             R4, R1
206026:  ADD             R0, PC; _ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
206028:  LDR             R0, [R0]; this
20602A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20602E:  MOV             R6, R0
206030:  MOV             R0, R4
206032:  MOV             R1, R6
206034:  BL              sub_20652C
206038:  MOV             R1, R0; this
20603A:  MOV             R0, R5; int
20603C:  MOV             R2, R6
20603E:  POP.W           {R11}
206042:  POP.W           {R4-R7,LR}
206046:  B.W             sub_206408
