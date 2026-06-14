; =========================================================
; Game Engine Function: sub_ED538
; Address            : 0xED538 - 0xED558
; =========================================================

ED538:  PUSH            {R4,R5,R7,LR}
ED53A:  ADD             R7, SP, #8
ED53C:  MOV             R5, R0
ED53E:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0xED546)
ED540:  MOV             R4, R1
ED542:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
ED544:  LDR             R0, [R0]; this
ED546:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED54A:  MOV             R2, R0
ED54C:  MOV             R0, R5; int
ED54E:  MOV             R1, R4; this
ED550:  POP.W           {R4,R5,R7,LR}
ED554:  B.W             sub_EE550
