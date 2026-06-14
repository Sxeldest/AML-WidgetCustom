; =========================================================
; Game Engine Function: sub_204BB8
; Address            : 0x204BB8 - 0x204BD8
; =========================================================

204BB8:  PUSH            {R4,R5,R7,LR}
204BBA:  ADD             R7, SP, #8
204BBC:  MOV             R5, R0
204BBE:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0x204BC6)
204BC0:  MOV             R4, R1
204BC2:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
204BC4:  LDR             R0, [R0]; this
204BC6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204BCA:  MOV             R2, R0
204BCC:  MOV             R0, R5; int
204BCE:  MOV             R1, R4; this
204BD0:  POP.W           {R4,R5,R7,LR}
204BD4:  B.W             sub_206408
