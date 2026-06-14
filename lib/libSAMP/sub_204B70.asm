; =========================================================
; Game Engine Function: sub_204B70
; Address            : 0x204B70 - 0x204B90
; =========================================================

204B70:  PUSH            {R4,R5,R7,LR}
204B72:  ADD             R7, SP, #8
204B74:  MOV             R5, R0
204B76:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x204B7E)
204B78:  MOV             R4, R1
204B7A:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
204B7C:  LDR             R0, [R0]; this
204B7E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204B82:  MOV             R2, R0
204B84:  MOV             R0, R5; int
204B86:  MOV             R1, R4; this
204B88:  POP.W           {R4,R5,R7,LR}
204B8C:  B.W             sub_206408
