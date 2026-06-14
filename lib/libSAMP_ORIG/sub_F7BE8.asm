; =========================================================
; Game Engine Function: sub_F7BE8
; Address            : 0xF7BE8 - 0xF7BFC
; =========================================================

F7BE8:  PUSH            {R4,R6,R7,LR}
F7BEA:  ADD             R7, SP, #8
F7BEC:  MOV             R4, R0
F7BEE:  LDRB            R0, [R0,#4]
F7BF0:  CBZ             R0, loc_F7BF8
F7BF2:  LDR             R0, [R4]; this
F7BF4:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
F7BF8:  MOV             R0, R4
F7BFA:  POP             {R4,R6,R7,PC}
