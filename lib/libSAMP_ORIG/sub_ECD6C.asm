; =========================================================
; Game Engine Function: sub_ECD6C
; Address            : 0xECD6C - 0xECD8C
; =========================================================

ECD6C:  PUSH            {R4,R5,R7,LR}
ECD6E:  ADD             R7, SP, #8
ECD70:  MOV             R5, R0
ECD72:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0xECD7A)
ECD74:  MOV             R4, R1
ECD76:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
ECD78:  LDR             R0, [R0]; this
ECD7A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECD7E:  MOV             R2, R0
ECD80:  MOV             R0, R5; int
ECD82:  MOV             R1, R4; this
ECD84:  POP.W           {R4,R5,R7,LR}
ECD88:  B.W             sub_EE550
