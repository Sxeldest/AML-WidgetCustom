; =========================================================
; Game Engine Function: sub_EDF30
; Address            : 0xEDF30 - 0xEDF62
; =========================================================

EDF30:  PUSH            {R4-R7,LR}
EDF32:  ADD             R7, SP, #0xC
EDF34:  PUSH.W          {R11}
EDF38:  MOV             R5, R0
EDF3A:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0xEDF42)
EDF3C:  MOV             R4, R1
EDF3E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
EDF40:  LDR             R0, [R0]; this
EDF42:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDF46:  MOV             R6, R0
EDF48:  MOV             R0, R4
EDF4A:  MOV             R1, R6
EDF4C:  BL              sub_EE674
EDF50:  MOV             R1, R0; this
EDF52:  MOV             R0, R5; int
EDF54:  MOV             R2, R6
EDF56:  POP.W           {R11}
EDF5A:  POP.W           {R4-R7,LR}
EDF5E:  B.W             sub_EE550
