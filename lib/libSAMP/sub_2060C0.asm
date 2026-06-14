; =========================================================
; Game Engine Function: sub_2060C0
; Address            : 0x2060C0 - 0x2060F2
; =========================================================

2060C0:  PUSH            {R4-R7,LR}
2060C2:  ADD             R7, SP, #0xC
2060C4:  PUSH.W          {R11}
2060C8:  MOV             R5, R0
2060CA:  LDR             R0, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0x2060D2)
2060CC:  MOV             R4, R1
2060CE:  ADD             R0, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
2060D0:  LDR             R0, [R0]; this
2060D2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2060D6:  MOV             R6, R0
2060D8:  MOV             R0, R4
2060DA:  MOV             R1, R6
2060DC:  BL              sub_20652C
2060E0:  MOV             R1, R0; this
2060E2:  MOV             R0, R5; int
2060E4:  MOV             R2, R6
2060E6:  POP.W           {R11}
2060EA:  POP.W           {R4-R7,LR}
2060EE:  B.W             sub_206408
