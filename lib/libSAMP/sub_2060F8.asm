; =========================================================
; Game Engine Function: sub_2060F8
; Address            : 0x2060F8 - 0x20612A
; =========================================================

2060F8:  PUSH            {R4-R7,LR}
2060FA:  ADD             R7, SP, #0xC
2060FC:  PUSH.W          {R11}
206100:  MOV             R5, R0
206102:  LDR             R0, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x20610A)
206104:  MOV             R4, R1
206106:  ADD             R0, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
206108:  LDR             R0, [R0]; this
20610A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20610E:  MOV             R6, R0
206110:  MOV             R0, R4
206112:  MOV             R1, R6
206114:  BL              sub_20652C
206118:  MOV             R1, R0; this
20611A:  MOV             R0, R5; int
20611C:  MOV             R2, R6
20611E:  POP.W           {R11}
206122:  POP.W           {R4-R7,LR}
206126:  B.W             sub_206408
