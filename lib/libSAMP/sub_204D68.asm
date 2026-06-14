; =========================================================
; Game Engine Function: sub_204D68
; Address            : 0x204D68 - 0x204D88
; =========================================================

204D68:  PUSH            {R4,R5,R7,LR}
204D6A:  ADD             R7, SP, #8
204D6C:  MOV             R5, R0
204D6E:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0x204D76)
204D70:  MOV             R4, R1
204D72:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
204D74:  LDR             R0, [R0]; this
204D76:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204D7A:  MOV             R2, R0
204D7C:  MOV             R0, R5; int
204D7E:  MOV             R1, R4; this
204D80:  POP.W           {R4,R5,R7,LR}
204D84:  B.W             sub_206408
