; =========================================================
; Game Engine Function: sub_204D8C
; Address            : 0x204D8C - 0x204DAC
; =========================================================

204D8C:  PUSH            {R4,R5,R7,LR}
204D8E:  ADD             R7, SP, #8
204D90:  MOV             R5, R0
204D92:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0x204D9A)
204D94:  MOV             R4, R1
204D96:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
204D98:  LDR             R0, [R0]; this
204D9A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204D9E:  MOV             R2, R0
204DA0:  MOV             R0, R5; int
204DA2:  MOV             R1, R4; this
204DA4:  POP.W           {R4,R5,R7,LR}
204DA8:  B.W             sub_206408
