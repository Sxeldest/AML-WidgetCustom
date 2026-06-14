; =========================================================
; Game Engine Function: sub_ECD24
; Address            : 0xECD24 - 0xECD44
; =========================================================

ECD24:  PUSH            {R4,R5,R7,LR}
ECD26:  ADD             R7, SP, #8
ECD28:  MOV             R5, R0
ECD2A:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0xECD32)
ECD2C:  MOV             R4, R1
ECD2E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
ECD30:  LDR             R0, [R0]; this
ECD32:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECD36:  MOV             R2, R0
ECD38:  MOV             R0, R5; int
ECD3A:  MOV             R1, R4; this
ECD3C:  POP.W           {R4,R5,R7,LR}
ECD40:  B.W             sub_EE550
