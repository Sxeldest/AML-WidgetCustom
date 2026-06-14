; =========================================================
; Game Engine Function: sub_ED5E0
; Address            : 0xED5E0 - 0xED600
; =========================================================

ED5E0:  PUSH            {R4,R5,R7,LR}
ED5E2:  ADD             R7, SP, #8
ED5E4:  MOV             R5, R0
ED5E6:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0xED5EE)
ED5E8:  MOV             R4, R1
ED5EA:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
ED5EC:  LDR             R0, [R0]; this
ED5EE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED5F2:  MOV             R2, R0
ED5F4:  MOV             R0, R5; int
ED5F6:  MOV             R1, R4; this
ED5F8:  POP.W           {R4,R5,R7,LR}
ED5FC:  B.W             sub_EE550
