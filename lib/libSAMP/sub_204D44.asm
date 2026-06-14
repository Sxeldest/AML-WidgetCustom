; =========================================================
; Game Engine Function: sub_204D44
; Address            : 0x204D44 - 0x204D64
; =========================================================

204D44:  PUSH            {R4,R5,R7,LR}
204D46:  ADD             R7, SP, #8
204D48:  MOV             R5, R0
204D4A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0x204D52)
204D4C:  MOV             R4, R1
204D4E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
204D50:  LDR             R0, [R0]; this
204D52:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204D56:  MOV             R2, R0
204D58:  MOV             R0, R5; int
204D5A:  MOV             R1, R4; this
204D5C:  POP.W           {R4,R5,R7,LR}
204D60:  B.W             sub_206408
