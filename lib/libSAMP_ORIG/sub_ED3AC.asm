; =========================================================
; Game Engine Function: sub_ED3AC
; Address            : 0xED3AC - 0xED3CC
; =========================================================

ED3AC:  PUSH            {R4,R5,R7,LR}
ED3AE:  ADD             R7, SP, #8
ED3B0:  MOV             R5, R0
ED3B2:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0xED3BA)
ED3B4:  MOV             R4, R1
ED3B6:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
ED3B8:  LDR             R0, [R0]; this
ED3BA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED3BE:  MOV             R2, R0
ED3C0:  MOV             R0, R5; int
ED3C2:  MOV             R1, R4; this
ED3C4:  POP.W           {R4,R5,R7,LR}
ED3C8:  B.W             sub_EE550
