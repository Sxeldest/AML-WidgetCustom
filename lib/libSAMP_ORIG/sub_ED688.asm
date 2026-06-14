; =========================================================
; Game Engine Function: sub_ED688
; Address            : 0xED688 - 0xED6A8
; =========================================================

ED688:  PUSH            {R4,R5,R7,LR}
ED68A:  ADD             R7, SP, #8
ED68C:  MOV             R5, R0
ED68E:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0xED696)
ED690:  MOV             R4, R1
ED692:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
ED694:  LDR             R0, [R0]; this
ED696:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED69A:  MOV             R2, R0
ED69C:  MOV             R0, R5; int
ED69E:  MOV             R1, R4; this
ED6A0:  POP.W           {R4,R5,R7,LR}
ED6A4:  B.W             sub_EE550
