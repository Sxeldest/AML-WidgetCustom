; =========================================================
; Game Engine Function: sub_204D20
; Address            : 0x204D20 - 0x204D40
; =========================================================

204D20:  PUSH            {R4,R5,R7,LR}
204D22:  ADD             R7, SP, #8
204D24:  MOV             R5, R0
204D26:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0x204D2E)
204D28:  MOV             R4, R1
204D2A:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
204D2C:  LDR             R0, [R0]; this
204D2E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204D32:  MOV             R2, R0
204D34:  MOV             R0, R5; int
204D36:  MOV             R1, R4; this
204D38:  POP.W           {R4,R5,R7,LR}
204D3C:  B.W             sub_206408
