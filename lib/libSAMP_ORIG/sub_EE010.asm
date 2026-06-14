; =========================================================
; Game Engine Function: sub_EE010
; Address            : 0xEE010 - 0xEE042
; =========================================================

EE010:  PUSH            {R4-R7,LR}
EE012:  ADD             R7, SP, #0xC
EE014:  PUSH.W          {R11}
EE018:  MOV             R5, R0
EE01A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0xEE022)
EE01C:  MOV             R4, R1
EE01E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
EE020:  LDR             R0, [R0]; this
EE022:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE026:  MOV             R6, R0
EE028:  MOV             R0, R4
EE02A:  MOV             R1, R6
EE02C:  BL              sub_EE674
EE030:  MOV             R1, R0; this
EE032:  MOV             R0, R5; int
EE034:  MOV             R2, R6
EE036:  POP.W           {R11}
EE03A:  POP.W           {R4-R7,LR}
EE03E:  B.W             sub_EE550
