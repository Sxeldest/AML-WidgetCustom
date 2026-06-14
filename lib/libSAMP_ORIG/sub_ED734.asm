; =========================================================
; Game Engine Function: sub_ED734
; Address            : 0xED734 - 0xED754
; =========================================================

ED734:  PUSH            {R4,R5,R7,LR}
ED736:  ADD             R7, SP, #8
ED738:  MOV             R5, R0
ED73A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0xED742)
ED73C:  MOV             R4, R1
ED73E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
ED740:  LDR             R0, [R0]; this
ED742:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED746:  MOV             R2, R0
ED748:  MOV             R0, R5; int
ED74A:  MOV             R1, R4; this
ED74C:  POP.W           {R4,R5,R7,LR}
ED750:  B.W             sub_EE550
