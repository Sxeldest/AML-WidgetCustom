; =========================================================
; Game Engine Function: sub_204BDC
; Address            : 0x204BDC - 0x204BFC
; =========================================================

204BDC:  PUSH            {R4,R5,R7,LR}
204BDE:  ADD             R7, SP, #8
204BE0:  MOV             R5, R0
204BE2:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0x204BEA)
204BE4:  MOV             R4, R1
204BE6:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
204BE8:  LDR             R0, [R0]; this
204BEA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204BEE:  MOV             R2, R0
204BF0:  MOV             R0, R5; int
204BF2:  MOV             R1, R4; this
204BF4:  POP.W           {R4,R5,R7,LR}
204BF8:  B.W             sub_206408
