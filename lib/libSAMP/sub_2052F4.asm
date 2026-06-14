; =========================================================
; Game Engine Function: sub_2052F4
; Address            : 0x2052F4 - 0x205314
; =========================================================

2052F4:  PUSH            {R4,R5,R7,LR}
2052F6:  ADD             R7, SP, #8
2052F8:  MOV             R5, R0
2052FA:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0x205302)
2052FC:  MOV             R4, R1
2052FE:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
205300:  LDR             R0, [R0]; this
205302:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205306:  MOV             R2, R0
205308:  MOV             R0, R5; int
20530A:  MOV             R1, R4; this
20530C:  POP.W           {R4,R5,R7,LR}
205310:  B.W             sub_206408
