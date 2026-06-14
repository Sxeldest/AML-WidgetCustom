; =========================================================
; Game Engine Function: sub_F0720
; Address            : 0xF0720 - 0xF0732
; =========================================================

F0720:  PUSH            {R4,R6,R7,LR}
F0722:  ADD             R7, SP, #8
F0724:  MOV             R4, R0
F0726:  BL              sub_F06C4
F072A:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
F072E:  MOV             R0, R4
F0730:  POP             {R4,R6,R7,PC}
