; =========================================================
; Game Engine Function: sub_205288
; Address            : 0x205288 - 0x2052A8
; =========================================================

205288:  PUSH            {R4,R5,R7,LR}
20528A:  ADD             R7, SP, #8
20528C:  MOV             R5, R0
20528E:  LDR             R0, =(_ZNSt6__ndk17collateIwE2idE_ptr - 0x205296)
205290:  MOV             R4, R1
205292:  ADD             R0, PC; _ZNSt6__ndk17collateIwE2idE_ptr
205294:  LDR             R0, [R0]; this
205296:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20529A:  MOV             R2, R0
20529C:  MOV             R0, R5; int
20529E:  MOV             R1, R4; this
2052A0:  POP.W           {R4,R5,R7,LR}
2052A4:  B.W             sub_206408
