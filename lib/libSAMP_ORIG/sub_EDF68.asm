; =========================================================
; Game Engine Function: sub_EDF68
; Address            : 0xEDF68 - 0xEDF9A
; =========================================================

EDF68:  PUSH            {R4-R7,LR}
EDF6A:  ADD             R7, SP, #0xC
EDF6C:  PUSH.W          {R11}
EDF70:  MOV             R5, R0
EDF72:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0xEDF7A)
EDF74:  MOV             R4, R1
EDF76:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
EDF78:  LDR             R0, [R0]; this
EDF7A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDF7E:  MOV             R6, R0
EDF80:  MOV             R0, R4
EDF82:  MOV             R1, R6
EDF84:  BL              sub_EE674
EDF88:  MOV             R1, R0; this
EDF8A:  MOV             R0, R5; int
EDF8C:  MOV             R2, R6
EDF8E:  POP.W           {R11}
EDF92:  POP.W           {R4-R7,LR}
EDF96:  B.W             sub_EE550
