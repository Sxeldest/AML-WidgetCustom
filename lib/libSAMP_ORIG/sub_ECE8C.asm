; =========================================================
; Game Engine Function: sub_ECE8C
; Address            : 0xECE8C - 0xECEAC
; =========================================================

ECE8C:  PUSH            {R4,R5,R7,LR}
ECE8E:  ADD             R7, SP, #8
ECE90:  MOV             R5, R0
ECE92:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0xECE9A)
ECE94:  MOV             R4, R1
ECE96:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
ECE98:  LDR             R0, [R0]; this
ECE9A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECE9E:  MOV             R2, R0
ECEA0:  MOV             R0, R5; int
ECEA2:  MOV             R1, R4; this
ECEA4:  POP.W           {R4,R5,R7,LR}
ECEA8:  B.W             sub_EE550
