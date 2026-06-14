; =========================================================
; Game Engine Function: sub_ECD00
; Address            : 0xECD00 - 0xECD20
; =========================================================

ECD00:  PUSH            {R4,R5,R7,LR}
ECD02:  ADD             R7, SP, #8
ECD04:  MOV             R5, R0
ECD06:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0xECD0E)
ECD08:  MOV             R4, R1
ECD0A:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
ECD0C:  LDR             R0, [R0]; this
ECD0E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECD12:  MOV             R2, R0
ECD14:  MOV             R0, R5; int
ECD16:  MOV             R1, R4; this
ECD18:  POP.W           {R4,R5,R7,LR}
ECD1C:  B.W             sub_EE550
