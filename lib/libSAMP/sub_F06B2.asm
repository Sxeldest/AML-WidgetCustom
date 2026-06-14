; =========================================================
; Game Engine Function: sub_F06B2
; Address            : 0xF06B2 - 0xF06C4
; =========================================================

F06B2:  PUSH            {R4,R6,R7,LR}
F06B4:  ADD             R7, SP, #8
F06B6:  MOV             R4, R0
F06B8:  BL              sub_F06C4
F06BC:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
F06C0:  MOV             R0, R4
F06C2:  POP             {R4,R6,R7,PC}
