; =========================================================
; Game Engine Function: sub_2053F0
; Address            : 0x2053F0 - 0x205410
; =========================================================

2053F0:  PUSH            {R4,R5,R7,LR}
2053F2:  ADD             R7, SP, #8
2053F4:  MOV             R5, R0
2053F6:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0x2053FE)
2053F8:  MOV             R4, R1
2053FA:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
2053FC:  LDR             R0, [R0]; this
2053FE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205402:  MOV             R2, R0
205404:  MOV             R0, R5; int
205406:  MOV             R1, R4; this
205408:  POP.W           {R4,R5,R7,LR}
20540C:  B.W             sub_206408
