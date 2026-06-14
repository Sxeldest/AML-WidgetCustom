; =========================================================
; Game Engine Function: sub_EE0F0
; Address            : 0xEE0F0 - 0xEE122
; =========================================================

EE0F0:  PUSH            {R4-R7,LR}
EE0F2:  ADD             R7, SP, #0xC
EE0F4:  PUSH.W          {R11}
EE0F8:  MOV             R5, R0
EE0FA:  LDR             R0, =(_ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE102)
EE0FC:  MOV             R4, R1
EE0FE:  ADD             R0, PC; _ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE100:  LDR             R0, [R0]; this
EE102:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE106:  MOV             R6, R0
EE108:  MOV             R0, R4
EE10A:  MOV             R1, R6
EE10C:  BL              sub_EE674
EE110:  MOV             R1, R0; this
EE112:  MOV             R0, R5; int
EE114:  MOV             R2, R6
EE116:  POP.W           {R11}
EE11A:  POP.W           {R4-R7,LR}
EE11E:  B.W             sub_EE550
