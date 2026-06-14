; =========================================================
; Game Engine Function: sub_2052AC
; Address            : 0x2052AC - 0x2052CC
; =========================================================

2052AC:  PUSH            {R4,R5,R7,LR}
2052AE:  ADD             R7, SP, #8
2052B0:  MOV             R5, R0
2052B2:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x2052BA)
2052B4:  MOV             R4, R1
2052B6:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
2052B8:  LDR             R0, [R0]; this
2052BA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2052BE:  MOV             R2, R0
2052C0:  MOV             R0, R5; int
2052C2:  MOV             R1, R4; this
2052C4:  POP.W           {R4,R5,R7,LR}
2052C8:  B.W             sub_206408
