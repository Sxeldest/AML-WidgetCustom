; =========================================================
; Game Engine Function: sub_EDE50
; Address            : 0xEDE50 - 0xEDE82
; =========================================================

EDE50:  PUSH            {R4-R7,LR}
EDE52:  ADD             R7, SP, #0xC
EDE54:  PUSH.W          {R11}
EDE58:  MOV             R5, R0
EDE5A:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0xEDE62)
EDE5C:  MOV             R4, R1
EDE5E:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
EDE60:  LDR             R0, [R0]; this
EDE62:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDE66:  MOV             R6, R0
EDE68:  MOV             R0, R4
EDE6A:  MOV             R1, R6
EDE6C:  BL              sub_EE674
EDE70:  MOV             R1, R0; this
EDE72:  MOV             R0, R5; int
EDE74:  MOV             R2, R6
EDE76:  POP.W           {R11}
EDE7A:  POP.W           {R4-R7,LR}
EDE7E:  B.W             sub_EE550
