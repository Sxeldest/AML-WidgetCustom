; =========================================================
; Game Engine Function: sub_ECE68
; Address            : 0xECE68 - 0xECE88
; =========================================================

ECE68:  PUSH            {R4,R5,R7,LR}
ECE6A:  ADD             R7, SP, #8
ECE6C:  MOV             R5, R0
ECE6E:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0xECE76)
ECE70:  MOV             R4, R1
ECE72:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
ECE74:  LDR             R0, [R0]; this
ECE76:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECE7A:  MOV             R2, R0
ECE7C:  MOV             R0, R5; int
ECE7E:  MOV             R1, R4; this
ECE80:  POP.W           {R4,R5,R7,LR}
ECE84:  B.W             sub_EE550
