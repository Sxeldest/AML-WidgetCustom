; =========================================================
; Game Engine Function: sub_205FA8
; Address            : 0x205FA8 - 0x205FDA
; =========================================================

205FA8:  PUSH            {R4-R7,LR}
205FAA:  ADD             R7, SP, #0xC
205FAC:  PUSH.W          {R11}
205FB0:  MOV             R5, R0
205FB2:  LDR             R0, =(_ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x205FBA)
205FB4:  MOV             R4, R1
205FB6:  ADD             R0, PC; _ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
205FB8:  LDR             R0, [R0]; this
205FBA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205FBE:  MOV             R6, R0
205FC0:  MOV             R0, R4
205FC2:  MOV             R1, R6
205FC4:  BL              sub_20652C
205FC8:  MOV             R1, R0; this
205FCA:  MOV             R0, R5; int
205FCC:  MOV             R2, R6
205FCE:  POP.W           {R11}
205FD2:  POP.W           {R4-R7,LR}
205FD6:  B.W             sub_206408
