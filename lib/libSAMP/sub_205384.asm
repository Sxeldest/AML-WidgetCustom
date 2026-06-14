; =========================================================
; Game Engine Function: sub_205384
; Address            : 0x205384 - 0x2053A4
; =========================================================

205384:  PUSH            {R4,R5,R7,LR}
205386:  ADD             R7, SP, #8
205388:  MOV             R5, R0
20538A:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0x205392)
20538C:  MOV             R4, R1
20538E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
205390:  LDR             R0, [R0]; this
205392:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205396:  MOV             R2, R0
205398:  MOV             R0, R5; int
20539A:  MOV             R1, R4; this
20539C:  POP.W           {R4,R5,R7,LR}
2053A0:  B.W             sub_206408
