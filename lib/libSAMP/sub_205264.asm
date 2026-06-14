; =========================================================
; Game Engine Function: sub_205264
; Address            : 0x205264 - 0x205284
; =========================================================

205264:  PUSH            {R4,R5,R7,LR}
205266:  ADD             R7, SP, #8
205268:  MOV             R5, R0
20526A:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0x205272)
20526C:  MOV             R4, R1
20526E:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
205270:  LDR             R0, [R0]; this
205272:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205276:  MOV             R2, R0
205278:  MOV             R0, R5; int
20527A:  MOV             R1, R4; this
20527C:  POP.W           {R4,R5,R7,LR}
205280:  B.W             sub_206408
