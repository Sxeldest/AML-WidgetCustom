; =========================================================
; Game Engine Function: sub_EE240
; Address            : 0xEE240 - 0xEE272
; =========================================================

EE240:  PUSH            {R4-R7,LR}
EE242:  ADD             R7, SP, #0xC
EE244:  PUSH.W          {R11}
EE248:  MOV             R5, R0
EE24A:  LDR             R0, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE252)
EE24C:  MOV             R4, R1
EE24E:  ADD             R0, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE250:  LDR             R0, [R0]; this
EE252:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE256:  MOV             R6, R0
EE258:  MOV             R0, R4
EE25A:  MOV             R1, R6
EE25C:  BL              sub_EE674
EE260:  MOV             R1, R0; this
EE262:  MOV             R0, R5; int
EE264:  MOV             R2, R6
EE266:  POP.W           {R11}
EE26A:  POP.W           {R4-R7,LR}
EE26E:  B.W             sub_EE550
