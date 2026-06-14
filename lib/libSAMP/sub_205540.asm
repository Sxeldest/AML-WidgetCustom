; =========================================================
; Game Engine Function: sub_205540
; Address            : 0x205540 - 0x205560
; =========================================================

205540:  PUSH            {R4,R5,R7,LR}
205542:  ADD             R7, SP, #8
205544:  MOV             R5, R0
205546:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0x20554E)
205548:  MOV             R4, R1
20554A:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
20554C:  LDR             R0, [R0]; this
20554E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205552:  MOV             R2, R0
205554:  MOV             R0, R5; int
205556:  MOV             R1, R4; this
205558:  POP.W           {R4,R5,R7,LR}
20555C:  B.W             sub_206408
